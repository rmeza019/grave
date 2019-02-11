/// @description 
var layerId = layer_get_id("bgCloseGraves");
var backgroundId = layer_background_get_id(layerId);

layer_background_blend(backgroundId, closeGrey);

layerId = layer_get_id("bgFarGraves");
backgroundId = layer_background_get_id(layerId);

layer_background_blend(backgroundId, farGrey);