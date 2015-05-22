extern class LabelLayer extends GraphicsLayer {
	function new(?params:esri.LabelLayerOptions):Void;
	@:overload(function(featureLayer:FeatureLayer, ?renderer:UniqueValueRenderer, ?textExpression:Dynamic):Void { })
	@:overload(function(featureLayer:FeatureLayer, ?renderer:ClassBreaksRenderer, ?textExpression:Dynamic):Void { })
	function addFeatureLayer(featureLayer:FeatureLayer, ?renderer:SimpleRenderer, ?textExpression:Dynamic):Void;
	function getFeatureLayer(index:Float):FeatureLayer;
}
