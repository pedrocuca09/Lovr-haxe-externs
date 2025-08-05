#!/usr/bin/env python3
"""
Improved LÖVR Haxe Extern Generator
Generates Haxe externs for the LÖVR engine from documentation and source code.
"""

import os
import re
import glob
from typing import Dict, List, Optional, Tuple

class ExternsGenerator:
    def __init__(self):
        self.docs_path = "lovr-docs/api/lovr"
        self.source_path = "lovr-dev/src/api"
        self.output_path = "lovr"
        
        # Type mapping from LÖVR types to Haxe types
        self.type_map = {
            "number": "Float",
            "string": "String",
            "boolean": "Bool",
            "table": "Dynamic",
            "function": "Dynamic",
            "userdata": "Dynamic",
            "Vec2": "Array<Float>",
            "Vec3": "Array<Float>",
            "Vec4": "Array<Float>",
            "Quat": "Array<Float>",
            "Mat4": "Array<Float>",
            "Pass": "lovr.graphics.Pass",
            "Texture": "lovr.graphics.Texture",
            "Shader": "lovr.graphics.Shader",
            "Material": "lovr.graphics.Material",
            "Font": "lovr.graphics.Font",
            "Mesh": "lovr.graphics.Mesh",
            "Model": "lovr.graphics.Model",
            "Buffer": "lovr.graphics.Buffer",
            "Sampler": "lovr.graphics.Sampler",
            "Readback": "lovr.graphics.Readback",
            "Canvas": "Dynamic",
            "DrawStyle": "String",
            "BlendMode": "String",
            "CompareMode": "String",
            "CullMode": "String",
            "FilterMode": "String",
            "WrapMode": "String",
            "TextureType": "String",
            "TextureFormat": "String",
            "TextureUsage": "String",
            "ShaderStage": "String",
            "ShaderType": "String",
            "DataLayout": "String",
            "DataType": "String",
            "MeshStorage": "String",
            "DrawMode": "String",
            "OriginType": "String",
            "PassType": "String",
            "StackType": "String",
            "StencilAction": "String",
            "Winding": "String",
            "HorizontalAlign": "String",
            "VerticalAlign": "String",
            "AudioSource": "lovr.audio.Source",
            "AudioStream": "lovr.audio.Stream",
            "AudioDevice": "lovr.audio.Device",
            "AudioListener": "lovr.audio.Listener",
            "AudioMaterial": "lovr.audio.Material",
            "AudioType": "String",
            "AudioShareMode": "String",
            "Blob": "lovr.data.Blob",
            "Image": "lovr.data.Image",
            "ModelData": "lovr.data.ModelData",
            "Rasterizer": "lovr.data.Rasterizer",
            "Sound": "lovr.data.Sound",
            "File": "lovr.filesystem.File",
            "FileAction": "String",
            "World": "lovr.physics.World",
            "Collider": "lovr.physics.Collider",
            "Shape": "lovr.physics.Shape",
            "Joint": "lovr.physics.Joint",
            "Contact": "lovr.physics.Contact",
            "HeadsetDriver": "String",
            "HeadsetOrigin": "String",
            "Device": "lovr.headset.Device",
            "Controller": "lovr.headset.Controller",
            "Hand": "lovr.headset.Hand",
            "Layer": "lovr.headset.Layer",
            "Thread": "lovr.thread.Thread",
            "Channel": "lovr.thread.Channel",
            "Timer": "lovr.timer.Timer"
        }
        
        self.modules = [
            "audio", "data", "event", "filesystem", "graphics",
            "headset", "math", "physics", "system", "thread", "timer"
        ]

    def generate_externs(self):
        """Main function to generate all externs."""
        print("Generating LÖVR Haxe externs (Improved)...")
        
        # Create output directory
        os.makedirs(self.output_path, exist_ok=True)
        
        # Generate main Lovr class
        self.generate_main_lovr_class()
        
        # Generate module externs
        for module in self.modules:
            self.generate_module_extern(module)
        
        print("Extern generation complete!")

    def generate_main_lovr_class(self):
        """Generate the main Lovr class with callbacks."""
        content = '''package lovr;

@:native("lovr")
extern class Lovr {
  // Callbacks
  static public var load:Void->Void;
  static public var update:Float->Void;
  static public var draw:lovr.graphics.Pass->Void;
  static public var quit:Void->Void;
  static public var focus:Bool->Void;
  static public var keypressed:String->Void;
  static public var keyreleased:String->Void;
  static public var textinput:String->Void;
  static public var mousepressed:String->Void;
  static public var mousereleased:String->Void;
  static public var mousemoved:Float->Float->Void;
  static public var wheelmoved:Float->Float->Void;
  static public var gamepadpressed:Int->String->Void;
  static public var gamepadreleased:Int->String->Void;
  static public var gamepadaxis:Int->String->Float->Void;
  static public var error:String->Void;
  
  // Version
  static public function getVersion():String;
}'''
        
        with open(f"{self.output_path}/Lovr.hx", "w") as f:
            f.write(content)

    def generate_module_extern(self, module_name: str):
        """Generate externs for a specific module."""
        module_path = f"{self.docs_path}/{module_name}"
        source_module_path = f"{self.source_path}/l_{module_name}.c"
        
        if not os.path.exists(module_path):
            print(f"Warning: Documentation for module {module_name} not found")
            return
        
        # Create module directory
        module_dir = f"{self.output_path}/{module_name}"
        os.makedirs(module_dir, exist_ok=True)
        
        # Generate main module class
        content = f'''package lovr.{module_name};

@:native("lovr.{module_name}")
extern class {module_name.capitalize()} {{
'''
        
        # Parse documentation files for module functions
        if os.path.exists(module_path):
            for file in os.listdir(module_path):
                if file.endswith(".lua") and file != "init.lua":
                    function_name = file[:-4]
                    function_sig = self.generate_function_from_doc(module_name, function_name, f"{module_path}/{file}")
                    if function_sig:
                        content += function_sig
        
        # Parse source code as fallback
        if os.path.exists(source_module_path):
            content += self.generate_from_source(module_name, source_module_path)
        
        # Add static methods for Graphics class
        if module_name == "graphics":
            content += self.get_missing_graphics_methods()
        
        content += "}"
        
        with open(f"{module_dir}/{module_name.capitalize()}.hx", "w") as f:
            f.write(content)
        
        # Generate class externs for complex objects
        self.generate_class_externs(module_name, module_path, module_dir)

    def generate_class_externs(self, module_name: str, module_path: str, module_dir: str):
        """Generate class externs for complex objects."""
        if not os.path.exists(module_path):
            return
        
        # Look for directories that might contain class methods
        for item in os.listdir(module_path):
            item_path = f"{module_path}/{item}"
            if os.path.isdir(item_path):
                # This is a class directory (like Pass/, Texture/, etc.)
                class_name = item
                self.generate_class_from_directory(module_name, class_name, item_path, module_dir)

    def generate_class_from_directory(self, module_name: str, class_name: str, class_dir: str, module_dir: str):
        """Generate a class extern from a directory of method files."""
        try:
            class_content = f'''package lovr.{module_name};

@:native("lovr.{module_name}.{class_name}")
extern class {class_name} {{
'''
            
            # Parse all method files in the class directory
            existing_methods = set()
            for file in os.listdir(class_dir):
                if file.endswith(".lua") and file != "init.lua":
                    method_name = file[:-4]
                    method_sig = self.generate_method_from_doc(module_name, class_name, method_name, f"{class_dir}/{file}")
                    if method_sig and method_name not in existing_methods:
                        class_content += f"  {method_sig}\n"
                        existing_methods.add(method_name)
            
            # Add missing methods for Pass class (only if not already present)
            if class_name == "Pass":
                missing_methods = self.get_missing_pass_methods()
                for line in missing_methods.split('\n'):
                    if line.strip() and 'public function' in line:
                        method_name = line.split('public function ')[1].split('(')[0]
                        if method_name not in existing_methods:
                            class_content += f"  {line.strip()}\n"
                            existing_methods.add(method_name)
            
            # Fix Graphics class to make setBackgroundColor static
            if class_name == "Graphics":
                missing_methods = self.get_missing_graphics_methods()
                for line in missing_methods.split('\n'):
                    if line.strip() and 'static public function' in line:
                        method_name = line.split('static public function ')[1].split('(')[0]
                        if method_name not in existing_methods:
                            class_content += f"  {line.strip()}\n"
                            existing_methods.add(method_name)
            
            class_content += "}"
            
            with open(f"{module_dir}/{class_name}.hx", "w") as f:
                f.write(class_content)
                
        except Exception as e:
            print(f"Error generating class {class_name}: {e}")

    def get_missing_pass_methods(self) -> str:
        """Add missing Pass methods that weren't parsed from documentation."""
        return '''  // Transform methods
  public function translate(x:Float, y:Float, z:Float):Void;
  public function rotate(angle:Float, ax:Float, ay:Float, az:Float):Void;
  public function scale(x:Float, y:Float, z:Float):Void;
  public function transform(matrix:Array<Float>):Void;
  public function origin():Void;
  public function push():Void;
  public function pop():Void;
  
  // Drawing methods
  public function cube(?x:Float, ?y:Float, ?z:Float, ?size:Float, ?angle:Float, ?ax:Float, ?ay:Float, ?az:Float, ?style:String):Void;
  public function sphere(x:Float, y:Float, z:Float, radius:Float):Void;
  public function box(x:Float, y:Float, z:Float, width:Float, height:Float, depth:Float):Void;
  public function plane(x:Float, y:Float, z:Float, width:Float, height:Float):Void;
  public function circle(x:Float, y:Float, z:Float, radius:Float):Void;
  public function line(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Void;
  public function points(points:Array<Float>):Void;
  public function polygon(points:Array<Float>):Void;
  public function roundrect(x:Float, y:Float, z:Float, width:Float, height:Float, radius:Float):Void;
  public function capsule(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function cone(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function cylinder(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function torus(x:Float, y:Float, z:Float, radius:Float, tubeRadius:Float):Void;
  
  // State methods
  public function setColor(r:Float, g:Float, b:Float, ?a:Float):Void;
  public function getColor():Array<Float>;
  public function setMaterial(material:Material):Void;
  public function getMaterial():Material;
  public function setFont(font:Font):Void;
  public function getFont():Font;
  public function setShader(shader:Shader):Void;
  public function getShader():Shader;
  public function setDepthTest(compareMode:String, write:Bool):Void;
  public function getDepthTest():Dynamic;
  public function setBlendMode(blend:String, ?alphaBlend:String):Void;
  public function getBlendMode():Dynamic;
  public function setWireframe(wireframe:Bool):Void;
  public function isWireframe():Bool;
  public function setWinding(winding:String):Void;
  public function getWinding():String;
  public function setColorMask(r:Bool, g:Bool, b:Bool, a:Bool):Void;
  public function getColorMask():Dynamic;
  public function setAlphaSampling(enabled:Bool):Void;
  public function getAlphaSampling():Bool;
  public function setLineWidth(width:Float):Void;
  public function getLineWidth():Float;
  public function setPointSize(size:Float):Void;
  public function getPointSize():Float;
  public function setCanvas(canvas:Dynamic):Void;
  public function getCanvas():Dynamic;
  public function setProjection(view:Int, matrix:Array<Float>):Void;
  public function getProjection(view:Int, ?matrix:Array<Float>):Dynamic;
  public function setViewPose(index:Int, matrix:Array<Float>):Void;
  public function getViewPose(index:Int, ?matrix:Array<Float>, ?invert:Bool):Dynamic;
  public function flush():Void;
  public function tick(label:String):Void;
  public function tock(label:String):Float;
  public function getDimensions():Array<Int>;
  public function getWidth():Int;
  public function getHeight():Int;
  public function getViewCount():Int;
  public function getViewAngles(view:Int):Dynamic;
  
  // Text method
  public function text(text:String, x:Float, y:Float, z:Float, scale:Float, ?angle:Float, ?ax:Float, ?ay:Float, ?az:Float):Void;
'''

    def generate_function_from_doc(self, module_name: str, function_name: str, doc_path: str) -> str:
        """Generate function signature from documentation."""
        try:
            with open(doc_path, "r") as f:
                content = f.read()
            
            # Parse arguments and returns
            arguments = self.parse_arguments_from_content(content)
            returns = self.parse_returns_from_content(content)
            
            if arguments or returns:
                method_sig = self.generate_method_signature(function_name, arguments, returns)
                return f"  {method_sig}\n"
            
            return ""
            
        except Exception as e:
            print(f"Error parsing function {doc_path}: {e}")
            return ""

    def generate_method_from_doc(self, module_name: str, class_name: str, method_name: str, doc_path: str) -> str:
        """Generate method signature from documentation."""
        try:
            with open(doc_path, "r") as f:
                content = f.read()
            
            # Parse arguments and returns
            arguments = self.parse_arguments_from_content(content)
            returns = self.parse_returns_from_content(content)
            
            if arguments or returns:
                method_sig = self.generate_method_signature(method_name, arguments, returns)
                return method_sig
            
            return ""
            
        except Exception as e:
            print(f"Error parsing method {doc_path}: {e}")
            return ""

    def parse_arguments_from_content(self, content: str) -> Dict[str, Dict[str, str]]:
        """Parse arguments from documentation content."""
        arguments = {}
        
        # Look for arguments section
        arg_match = re.search(r'arguments\s*=\s*\{([^}]+)\}', content, re.DOTALL)
        if arg_match:
            arg_section = arg_match.group(1)
            
            # Parse individual arguments - look for both with and without default values
            # Pattern for arguments with default values
            arg_pattern_with_default = r'(\w+)\s*=\s*\{[^}]*type\s*=\s*["\']([^"\']+)["\'][^}]*default\s*=\s*["\']([^"\']+)["\']'
            matches_with_default = re.findall(arg_pattern_with_default, arg_section)
            
            for match in matches_with_default:
                arg_name = match[0]
                arg_type = match[1]
                arg_default = match[2]
                arguments[arg_name] = {
                    "type": arg_type,
                    "default": arg_default,
                    "description": ""
                }
            
            # Pattern for arguments without default values
            arg_pattern_without_default = r'(\w+)\s*=\s*\{[^}]*type\s*=\s*["\']([^"\']+)["\'][^}]*description\s*='
            matches_without_default = re.findall(arg_pattern_without_default, arg_section)
            
            for match in matches_without_default:
                arg_name = match[0]
                arg_type = match[1]
                # Only add if not already added by the with_default pattern
                if arg_name not in arguments:
                    arguments[arg_name] = {
                        "type": arg_type,
                        "default": None,
                        "description": ""
                    }
        
        return arguments

    def parse_returns_from_content(self, content: str) -> List[Dict[str, str]]:
        """Parse return values from documentation content."""
        returns = []
        
        # Look for returns section
        return_match = re.search(r'returns\s*=\s*\{([^}]+)\}', content, re.DOTALL)
        if return_match:
            return_section = return_match.group(1)
            
            # Parse individual return values
            return_pattern = r'(\w+)\s*=\s*\{[^}]*type\s*=\s*["\']([^"\']+)["\']'
            matches = re.findall(return_pattern, return_section)
            
            for match in matches:
                return_name = match[0]
                return_type = match[1]
                returns.append({
                    "type": return_type,
                    "description": ""
                })
        
        return returns

    def generate_method_signature(self, method_name: str, arguments: Dict[str, Dict[str, str]], returns: List[Dict[str, str]]) -> str:
        """Generate a Haxe method signature."""
        param_list = []
        
        for arg_name, arg_info in arguments.items():
            haxe_type = self.type_map.get(arg_info["type"], "Dynamic")
            if arg_info.get("default") and arg_info["default"] != "nil" and arg_info["default"] is not None:
                param_list.append(f"?{arg_name}:{haxe_type}")
            else:
                param_list.append(f"{arg_name}:{haxe_type}")
        
        return_type = "Void"
        if returns:
            return_type = self.type_map.get(returns[0]["type"], "Dynamic")
        
        params_str = ", ".join(param_list) if param_list else ""
        return f"public function {method_name}({params_str}):{return_type};"

    def generate_from_source(self, module_name: str, source_path: str) -> str:
        """Generate function signatures from C source code."""
        try:
            with open(source_path, "r") as f:
                content = f.read()
            
            result = ""
            
            # Look for function definitions like: static int l_lovrModuleFunction(lua_State* L)
            function_pattern = r'static int l_lovr([A-Za-z]+)\(lua_State\* L\)'
            matches = re.findall(function_pattern, content)
            
            for function_name in matches:
                # Convert camelCase to proper function name
                haxe_function_name = function_name[0].lower() + function_name[1:]
                
                # Try to determine parameters and return type
                param_count = 0
                return_type = "Void"
                
                # Look for luax_checktype calls to determine parameters
                check_pattern = r'luax_checktype\(L, (\d+),'
                check_match = re.search(check_pattern, content)
                if check_match:
                    param_count = int(check_match.group(1))
                
                # Look for lua_push calls to determine return type
                if "lua_pushstring" in content:
                    return_type = "String"
                elif "lua_pushnumber" in content:
                    return_type = "Float"
                elif "lua_pushboolean" in content:
                    return_type = "Bool"
                elif "lua_pushnil" in content:
                    return_type = "Dynamic"
                
                # Generate function signature
                params = [f"arg{i}:Dynamic" for i in range(param_count)]
                params_str = ", ".join(params) if params else ""
                result += f"  public function {haxe_function_name}({params_str}):{return_type};\n"
            
            return result
            
        except Exception as e:
            print(f"Error parsing source {source_path}: {e}")
            return ""

    def get_missing_graphics_methods(self) -> str:
        """Add missing Graphics methods that should be static."""
        return '''  // Static methods
  static public function setBackgroundColor(r:Float, g:Float, b:Float, ?a:Float):Void;
  static public function getBackgroundColor():Array<Float>;
  static public function newPass():Pass;
  static public function getPass():Pass;
  static public function getWindowPass():Pass;
  static public function newBuffer():Buffer;
  static public function getBuffer():Buffer;
  static public function newTexture():Texture;
  static public function newShader():Shader;
  static public function newMaterial():Material;
  static public function newFont():Font;
  static public function newMesh():Mesh;
  static public function newModel():Model;
  static public function newSampler():Sampler;
  static public function compileShader():lovr.data.Blob;
  static public function getDefaultFont():Font;
  static public function getDevice():Dynamic;
  static public function getFeatures():Dynamic;
  static public function getLimits():Dynamic;
  static public function isFormatSupported():Bool;
  static public function isTimingEnabled():Bool;
  static public function setTimingEnabled(enabled:Bool):Void;
  static public function present():Void;
  static public function submit():Void;
  static public function wait():Void;
'''

def main():
    """Main entry point."""
    generator = ExternsGenerator()
    generator.generate_externs()

if __name__ == "__main__":
    main() 