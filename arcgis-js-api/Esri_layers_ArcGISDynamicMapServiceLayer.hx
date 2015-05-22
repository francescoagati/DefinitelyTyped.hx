extern class ArcGISDynamicMapServiceLayer extends DynamicMapServiceLayer {
	var attributionDataUrl : String;
	var capabilities : String;
	var copyright : String;
	var description : String;
	var disableClientCaching : Bool;
	var dpi : Float;
	var dynamicLayerInfos : Array<DynamicLayerInfo>;
	var hasAttributionData : Bool;
	var imageFormat : String;
	var imageTransparency : Bool;
	var infoTemplates : Dynamic;
	var layerDefinitions : Array<String>;
	var layerDrawingOptions : Array<LayerDrawingOptions>;
	var layerInfos : Array<LayerInfo>;
	var layerTimeOptions : Array<LayerTimeOptions>;
	var maxImageHeight : Float;
	var maxImageWidth : Float;
	var maxRecordCount : Float;
	var maxScale : Float;
	var minScale : Float;
	var showAttribution : Bool;
	var supportsDynamicLayers : Bool;
	var suspended : Bool;
	var timeInfo : TimeInfo;
	var units : String;
	var useMapImage : Bool;
	var version : Float;
	var visibleAtMapScale : Bool;
	var visibleLayers : Array<Float>;
	function new(url:String, ?options:esri.ArcGISDynamicMapServiceLayerOptions):Void;
	function createDynamicLayerInfosFromLayerInfos():Array<DynamicLayerInfo>;
	function exportMapImage(?imageParameters:ImageParameters, ?callback:haxe.Constraints.Function):Void;
	function getAttributionData():Dynamic;
	function isVisibleAtScale(scale:Float):Bool;
	function resume():Void;
	function setDefaultLayerDefinitions(?doNotRefresh:Bool):Void;
	function setDefaultVisibleLayers(?doNotRefresh:Bool):Void;
	function setDisableClientCaching(disable:Bool):Void;
	function setDPI(dpi:Float, ?doNotRefresh:Bool):Void;
	function setDynamicLayerInfos(dynamicLayerInfos:Array<DynamicLayerInfo>, ?doNotRefresh:Bool):Void;
	function setGDBVersion(gdbVersion:String, ?doNotRefresh:Bool):Void;
	function setImageFormat(imageFormat:String, ?doNotRefresh:Bool):Void;
	function setImageTransparency(transparent:Bool, ?doNotRefresh:Bool):Void;
	function setInfoTemplates(infoTemplates:Dynamic):Void;
	function setLayerDefinitions(layerDefinitions:Array<String>, ?doNotRefresh:Bool):Void;
	function setLayerDrawingOptions(layerDrawingOptions:Array<LayerDrawingOptions>, ?doNotRefresh:Bool):Void;
	function setLayerTimeOptions(options:Array<LayerTimeOptions>, ?doNotRefresh:Bool):Void;
	function setMaxScale(scale:Float):Void;
	function setMinScale(scale:Float):Void;
	function setScaleRange(minScale:Float, maxScale:Float):Void;
	function setUseMapTime(update:Bool):Void;
	function setVisibleLayers(ids:Array<Float>, ?doNotRefresh:Bool):Void;
	function suspend():Void;
	@:overload(function(type:Map-image-export, listener:{ var mapImage : MapImage; var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Resume, listener:{ var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-range-change, listener:{ var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-visibility-change, listener:{ var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Suspend, listener:{ var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Visible-layers-change, listener:{ var visibleLayers : Array<Float>; var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Gdb-version-change, listener:{ var target : ArcGISDynamicMapServiceLayer; } -> Void):esri.Handle;
}
