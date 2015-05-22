extern class FeatureLayerStatistics {
	function new(params:Dynamic):Void;
	function add(layer:FeatureLayer, ?options:Dynamic):Void;
	function getClassBreaks(params:Dynamic):Dynamic;
	function getFieldStatistics(params:Dynamic):Dynamic;
	function getHeatmapStatistics(?options:Dynamic):Dynamic;
	function getHistogram(params:Dynamic):Dynamic;
	function getSampleFeatures(?options:Dynamic):Dynamic;
	function getSuggestedScaleRange(?options:Dynamic):Dynamic;
	function getUniqueValues(params:Dynamic):Dynamic;
	function remove(layer:FeatureLayer):Void;
}
