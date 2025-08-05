lovr = require 'lovr'

local lovr = lovr

local conf = {
  version = '0.18.0',
  identity = 'default',
  saveprecedence = true,
  modules = {
    audio = true,
    data = true,
    event = true,
    graphics = true,
    headset = true,
    math = true,
    physics = true,
    system = true,
    thread = true,
    timer = true
  },
  audio = {
    start = true,
    spatializer = nil
  },
  graphics = {
    debug = false,
    vsync = true,
    stencil = false,
    antialias = true,
    hdr = false,
    shadercache = true
  },
  headset = {
    start = true,
    debug = false,
    seated = false,
    mask = true,
    stencil = false,
    antialias = true,
    supersample = false,
    submitdepth = true,
    overlay = false,
    controllerskeleton = 'controller'
  },
  math = {
    globals = true
  },
  thread = {
    workers = -1
  },
  window = {
    width = 720,
    height = 800,
    fullscreen = false,
    resizable = false,
    title = 'LÖVR',
    icon = nil
  }
}

function lovr.boot()
  lovr.filesystem = require('lovr.filesystem')

  -- See if there's a ZIP archive fused to the executable, and set up the fused CLI if it exists

  local bundle, root = lovr.filesystem.getBundlePath()
  local fused = bundle and lovr.filesystem.mount(bundle, nil, true, root)
  local cli = lovr.filesystem.isFile('arg.lua') and assert(pcall(require, 'arg')) and lovr.arg and lovr.arg(arg)

  -- Implement a barebones CLI if there is no bundled CLI/project

  if not fused then
    if arg[1] and not arg[1]:match('^%-') then
      for i = 0, #arg do
        arg[i - 1], arg[i] = arg[i], nil
      end
    else
      return function()
        print(table.concat({
          'usage: lovr <source>',
          '<source> can be a Lua file, a folder with a main.lua file, or a zip archive'
        }, '\n'))
        return 0
      end
    end
  end

  -- Figure out source archive and main module.  CLI places source at arg[0]

  local source, main
  if (cli or not fused) and arg[0] then
    if arg[0]:match('[^/\\]+%.lua$') then
      source = arg[0]:match('[/\\]') and arg[0]:match('(.+)[/\\][^/\\]+$') or '.'
      main = arg[0]:match('[^/\\]+%.lua$')
    else
      source = arg[0]
      main = 'main.lua'
    end
  elseif fused then
    source = bundle
    main = 'main.lua'
  end

  -- Mount source archive, make sure it's got the main file, and load conf.lua

  local ok, failure = true, nil
  if source ~= bundle and not lovr.filesystem.mount(source) then
    ok, failure = false, ('Failed to load project at %q\nMake sure the path or archive is valid.'):format(source)
  elseif not lovr.filesystem.isFile(main) then
    local location = source == '.' and '' or (' in %q'):format(source:match('[^/\\]+[/\\]?$'))
    ok, failure = false, ('No %s file found%s.\nThe project may be packaged incorrectly.'):format(main, location)
  else
    lovr.filesystem.setSource(source)
    if source ~= bundle then lovr.filesystem.unmount(bundle) end
    if lovr.filesystem.isFile('conf.lua') then ok, failure = pcall(require, 'conf') end
    if ok and lovr.conf then ok, failure = pcall(lovr.conf, conf) end
  end

  lovr._setConf(conf)
  lovr.filesystem.setIdentity(conf.identity, conf.saveprecedence)

  -- CLI gets a chance to use/modify conf and handle arguments

  if ok and cli then ok, failure = pcall(cli, conf) end

  -- Boot!

  for module in pairs(conf.modules) do
    if conf.modules[module] then
      local loaded, result = pcall(require, 'lovr.' .. module)
      if not loaded then
        lovr.log(string.format('Could not load module %q: %s', module, result), 'warn')
      else
        lovr[module] = result
      end
    end
  end

  if lovr.graphics then
    lovr.graphics.initialize()
  end

  if lovr.system and conf.window then
    lovr.system.openWindow(conf.window)
  end

  if lovr.headset and conf.headset.start then
    lovr.headset.start()
  end

  if not ok and failure then
    error(failure)
  end

  require(main:sub(1, -5))

  return lovr.run()
end

function lovr.run()
  if lovr.timer then lovr.timer.step() end
  if lovr.load then lovr.load(arg) end
  return function()
    if lovr.headset then lovr.headset.pollEvents() end
    if lovr.system then lovr.system.pollEvents() end
    if lovr.event then
      for name, a, b, c, d in lovr.event.poll() do
        if name == 'restart' then return 'restart', lovr.restart and lovr.restart()
        elseif name == 'quit' and (not lovr.quit or not lovr.quit(a)) then return a or 0
        elseif name ~= 'quit' and lovr.handlers[name] then lovr.handlers[name](a, b, c, d) end
      end
    end
    local dt = 0
    if lovr.timer then dt = lovr.timer.step() end
    if lovr.headset then
      dt = lovr.headset.update()
      if not lovr.headset.isActive() then lovr.simulate(dt) end
    end
    if lovr.update then lovr.update(dt) end
    if lovr.graphics then
      local window = lovr.graphics.getWindowPass()
      local headset = lovr.headset and lovr.headset.getPass()
      if headset and (not lovr.draw or lovr.draw(headset)) then headset = nil end
      if window and (not lovr.mirror or lovr.mirror(window)) then window = nil end
      lovr.graphics.submit(headset, window)
      lovr.graphics.present()
    end
    if lovr.headset then lovr.headset.submit() end
    if lovr.math then lovr.math.drain() end
  end
end

function lovr.mirror(pass)
  if lovr.headset then
    local texture = lovr.headset.isActive() and lovr.headset.getTexture()
    if texture then
      pass:fill(texture)
    else
      return true
    end
  else
    return lovr.draw and lovr.draw(pass)
  end
end

local mouseX, mouseY, handX, handY, distance, pitch, yaw = nil, nil, 0, 0, .5, nil, nil

function lovr.simulate(dt)
  if not lovr.math then return end

  if not pitch or not yaw then
    pitch, yaw = quat(lovr.headset.getOrientation()):getEuler()
    mouseX, mouseY = lovr.system.getMousePosition()
  end

  local movespeed = 3
  local sprintspeed = 15
  local walkspeed = .5
  local turnspeed = .005
  local turnsmooth = 30

  local click = lovr.system.isMouseDown(1)

  lovr.system.setMouseGrabbed(click)

  local lastX, lastY = mouseX, mouseY
  mouseX, mouseY = lovr.system.getMousePosition()

  if click then
    yaw = yaw - (mouseX - lastX or mouseX) * turnspeed
    pitch = pitch - (mouseY - lastY or mouseY) * turnspeed
    pitch = math.min(pitch, math.pi / 2)
    pitch = math.max(pitch, -math.pi / 2)
  else
    handX, handY = mouseX, mouseY
  end

  local trigger = lovr.system.isMouseDown(2)
  lovr.headset.setButton('hand/left', 'trigger', trigger)
  lovr.headset.setButton('hand/left/point', 'trigger', trigger)

  -- Head

  local angle, ax, ay, az = lovr.headset.getOrientation()
  local target = quat(yaw, 0, 1, 0) * quat(pitch, 1, 0, 0)
  local orientation = quat(angle, ax, ay, az):slerp(target, 1 - math.exp(-turnsmooth * dt))

  local sprint = lovr.system.isKeyDown('lshift', 'rshift')
  local walk = lovr.system.isKeyDown('lctrl', 'rctrl')
  local forward = lovr.system.isKeyDown('w', 'up')
  local backward = lovr.system.isKeyDown('s', 'down')
  local left = lovr.system.isKeyDown('a', 'left')
  local right = lovr.system.isKeyDown('d', 'right')
  local up = lovr.system.isKeyDown('q')
  local down = lovr.system.isKeyDown('e')

  local vx = left and -1 or right and 1 or 0
  local vy = down and -1 or up and 1 or 0
  local vz = forward and -1 or backward and 1 or 0
  local speed = sprint and sprintspeed or walk and walkspeed or movespeed
  local velocity = vec3(vx, vy, vz):normalize():mul(speed * dt)
  local position = vec3(lovr.headset.getPosition('head')) + orientation * velocity
  lovr.headset.setPose('head', position, orientation)

  -- Hand

  local left, right, up, down = lovr.headset.getViewAngles(1)
  local near, far = lovr.headset.getClipDistance()
  local inverseProjection = mat4():fov(left, right, up, down, near, far):invert()

  local width, height = lovr.system.getWindowDimensions()
  local coordinate = vec3(handX / width * 2 - 1, handY / height * 2 - 1, 1)
  local direction = (orientation * (inverseProjection * coordinate)):normalize()

  distance = distance * (1 + lovr.system._getScrollDelta() * .05)
  distance = math.min(distance, 10)
  distance = math.max(distance, .05)

  local handPosition = position + direction * distance
  local handOrientation = quat(mat4():target(vec3.zero, direction, orientation * vec3.up))

  lovr.headset.setPose('hand/left', handPosition, handOrientation)
  lovr.headset.setPose('hand/left/point', handPosition, handOrientation)
end

local function formatTraceback(s)
  return s:gsub('\n[^\n]+$', ''):gsub('\t', ''):gsub('stack traceback:', '\nStack:\n')
end

function lovr.errhand(message)
  message = 'Error:\n\n' .. tostring(message) .. formatTraceback(debug and debug.traceback('', 4) or '')

  print(message)

  if not lovr.graphics or not lovr.graphics.isInitialized() then
    return function() return 1 end
  end

  if lovr.audio then lovr.audio.stop() end

  if not lovr.headset or lovr.headset.getPassthrough() == 'opaque' then
    lovr.graphics.setBackgroundColor(.11, .10, .14)
  else
    lovr.graphics.setBackgroundColor(0, 0, 0, 0)
  end

  if lovr.headset then
    lovr.headset.setLayers()
  end

  local font = lovr.graphics.getDefaultFont()

  return function()
    lovr.system.pollEvents()

    for name, a in lovr.event.poll() do
      if name == 'quit' then return a or 1
      elseif name == 'restart' then return 'restart', lovr.restart and lovr.restart()
      elseif name == 'keypressed' and a == 'f5' then lovr.event.restart()
      elseif name == 'filechanged' then lovr.event.restart()
      elseif name == 'keypressed' and a == 'escape' then lovr.event.quit() end
    end

    if lovr.headset and lovr.headset.isActive() then
      lovr.headset.update()
      local pass = lovr.headset.getPass()
      if pass then
        font:setPixelDensity()

        local scale = .35
        local font = lovr.graphics.getDefaultFont()
        local wrap = .7 * font:getPixelDensity()
        local lines = font:getLines(message, wrap)
        local maxWidth = 0
        for i, line in ipairs(lines) do maxWidth = math.max(maxWidth, font:getWidth(line)) end
        local width = maxWidth * scale
        local height = .8 + #lines * font:getHeight() * scale
        local x = -width / 2
        local y = math.min(height / 2, 10)
        local z = -10

        pass:setColor(.95, .95, .95)
        pass:text(message, x, y, z, scale, 0, 0, 0, 0, wrap, 'left', 'top')

        lovr.graphics.submit(pass)
        lovr.headset.submit()
      end
    end

    if lovr.system.isWindowOpen() then
      local pass = lovr.graphics.getWindowPass()
      if pass then
        local w, h = lovr.system.getWindowDimensions()
        pass:setProjection(1, lovr.math.mat4():orthographic(w, h))
        font:setPixelDensity(1)

        local scale = .6
        local wrap = w * .8 / scale
        local lines = font:getLines(message, wrap)
        local maxWidth = 0
        for i, line in ipairs(lines) do maxWidth = math.max(maxWidth, font:getWidth(line)) end
        local width = maxWidth * scale
        local x = w / 2 - width / 2

        pass:setColor(.95, .95, .95)
        pass:text(message, x, h / 2, 0, scale, 0, 0, 0, 0, wrap, 'left', 'middle')

        lovr.graphics.submit(pass)
        lovr.graphics.present()
      end
    end

    lovr.math.drain()
  end
end

function lovr.threaderror(thread, err)
  error('Thread error\n\n' .. err, 0)
end

function lovr.filechanged(path, action, oldpath)
  if not path:match('^%.') then
    lovr.event.restart()
  end
end

function lovr.log(message, level, tag)
  message = message:gsub('\n$', '')
  print(message)
end

lovr.handlers = setmetatable({}, { __index = lovr })

return coroutine.create(function()
  local function onerror(...)
    onerror = function(...)
      print('Error:\n\n' .. tostring(...) .. formatTraceback(debug and debug.traceback('', 1) or ''))
      return function() return 1 end
    end

    local ok, result = pcall(lovr.errhand or onerror, ...)

    if ok then
      return result or function() return 1 end
    else
      return onerror(result)
    end
  end

  local thread = select(2, xpcall(lovr.boot, onerror))

  while true do
    local ok, result, cookie = xpcall(thread, onerror)
    if not ok then thread = result
    elseif result then return result, cookie end
    coroutine.yield()
  end
end)
