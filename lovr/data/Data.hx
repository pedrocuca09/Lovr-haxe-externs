package lovr.data;

import lovr.data.Blob;
import lovr.data.Image;
import lovr.data.ModelData;
import lovr.data.Rasterizer;
import lovr.data.Sound;

/**
 * Data module for working with binary data, images, models, and sounds.
 * https://lovr.org/docs/lovr.data
 */
extern class Data {
  /**
   * Creates a new Blob from a string or array of bytes.
   */
  static function newBlob(data:String, name:String):Blob;

  /**
   * Creates a new Image from a Blob or filename.
   */
  static function newImage(source:Dynamic):Image;

  /**
   * Creates a new ModelData from a Blob or filename.
   */
  static function newModelData(source:Dynamic):ModelData;

  /**
   * Creates a new Rasterizer from a Blob or filename.
   */
  static function newRasterizer(source:Dynamic, ?size:Int):Rasterizer;

  /**
   * Creates a new Sound from a Blob or filename.
   */
  static function newSound(source:Dynamic):Sound;
} 