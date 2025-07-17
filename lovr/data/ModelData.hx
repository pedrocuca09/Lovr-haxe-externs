package lovr.data;

/**
 * Represents model data loaded from a file or memory.
 * https://lovr.org/docs/ModelData
 */
extern class ModelData {
  /**
   * Gets the number of meshes in the model.
   */
  public function getMeshCount():Int;

  /**
   * Gets the number of materials in the model.
   */
  public function getMaterialCount():Int;

     
} 