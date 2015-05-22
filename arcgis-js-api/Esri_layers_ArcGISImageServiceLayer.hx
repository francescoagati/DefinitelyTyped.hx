extern class ArcGISImageServiceLayer extends DynamicMapServiceLayer {
	var bandCount : Float;
	var bandIds : Array<Float>;
	var bands : Array<Dynamic>;
	var compressionQuality : Float;
	var copyrightText : String;
	var defaultMosaicRule : MosaicRule;
	var description : String;
	var disableClientCaching : Bool;
	var format : String;
	var infoTemplate : InfoTemplate;
	var interpolation : String;
	var maxImageHeight : Float;
	var maxImageWidgth : Float;
	var maxRecordCount : Float;
	var maxScale : Float;
	var minScale : Float;
	var mosaicRule : MosaicRule;
	var pixelSizeX : Float;
	var pixelSizeY : Float;
	var pixelType : Float;
	var renderingRule : RasterFunction;
	var timeInfo : TimeInfo;
	var useMapImage : Bool;
	var version : Float;
	function new(url:String, ?options:esri.ArcGISImageServiceLayerOptions):Void;
	function exportMapImage(?imageServiceParameters:ImageServiceParameters, ?callback:haxe.Constraints.Function):Void;
	function getDefinitionExpression():String;
	function getKeyProperties():Dynamic;
	function getRasterAttributeTable():Dynamic;
	function getVisibleRasters():Array<Graphic>;
	function queryVisibleRasters(query:Query, ?options:Dynamic, ?callback:haxe.Constraints.Function, ?errback:String):Void;
	function setBandIds(bandIds:Array<Float>, ?doNotRefresh:Bool):Void;
	function setCompressionQuality(quality:Float, ?doNotRefresh:Bool):Void;
	function setDefinitionExpression(expression:String, doNotRefresh:Bool):Void;
	function setDisableClientCaching(disable:Bool):Void;
	function setImageFormat(imageFormat:String, ?doNotRefresh:Bool):Void;
	function setInfoTemplate(infoTemplate:InfoTemplate):Void;
	function setInterpolation(interpolation:String, ?doNotRefresh:Bool):Void;
	function setMosaicRule(mosaicRule:MosaicRule, ?doNotRefresh:Bool):Void;
	function setRenderingRule(renderingRule:RasterFunction, ?doNotRefresh:Bool):Void;
	function setUseMapTime(update:Bool):Void;
	@:overload(function(type:Mosaic-rule-change, listener:{ var target : ArcGISImageServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Rendering-change, listener:{ var target : ArcGISImageServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Map-image-export, listener:{ var mapImage : MapImage; var target : ArcGISImageServiceLayer; } -> Void):esri.Handle;
}
