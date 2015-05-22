extern class KMLLayer extends Layer {
	var featureInfos : Array<Dynamic>;
	var folders : Array<KMLFolder>;
	var linkInfo : Dynamic;
	var url : String;
	function new(id:String, url:String, ?options:esri.KMLLayerOptions):Void;
	function getFeature(featureInfo:Dynamic):Dynamic;
	function getLayers():Array<Layer>;
	function setFolderVisibility(folder:KMLFolder, isVisible:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Refresh, listener:{ var target : KMLLayer; } -> Void):esri.Handle;
}
