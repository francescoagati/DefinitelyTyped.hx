extern class ScaleDependentRenderer extends Renderer {
	var rangeType : String;
	var rendererInfos : Dynamic;
	function new(?options:esri.ScaleDependentRendererOptions):Void;
	function addRendererInfo(info:Dynamic):ScaleDependentRenderer;
	function getRendererInfo(graphic:Graphic):Dynamic;
	function getRendererInfoByScale(scale:Float):Dynamic;
	function getRenderInfoByZoom(zoom:Float):Dynamic;
	function setRendererInfos(infos:Dynamic):ScaleDependentRenderer;
}
