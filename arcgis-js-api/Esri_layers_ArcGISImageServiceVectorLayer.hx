extern class ArcGISImageServiceVectorLayer extends GraphicsLayer {
	function new(url:String, ?options:esri.ArcGISImageServiceVectorLayerOptions):Void;
	function getFlowRepresentation():String;
	function setRenderer(renderer:Renderer):Void;
	function setUseMapTime(update:Bool):Void;
	function setVectorRendererStyle(style:String):Void;
}
