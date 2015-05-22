extern class ArcGISTiledMapServiceLayer extends TiledMapServiceLayer {
	var attributionDataUrl : String;
	var capabilities : String;
	var copyright : String;
	var description : String;
	var hasAttributionData : Bool;
	var infoTemplates : Dynamic;
	var layerInfos : Array<LayerInfo>;
	var maxImageHeight : Float;
	var maxImageWidth : Float;
	var maxRecordCount : Float;
	var maxScale : Float;
	var minScale : Float;
	var showAttribution : Bool;
	var suspended : Bool;
	var timeInfo : TimeInfo;
	var units : String;
	var version : Float;
	var visibleAtMapScale : Bool;
	function new(url:String, ?options:esri.ArcGISTiledMapServiceLayerOptions):Void;
	function getAttributionData():Dynamic;
	function isVisibleAtScale(scale:Float):Bool;
	function resume():Void;
	function setInfoTemplates(infoTemplates:Dynamic):Void;
	function setMaxScale(scale:Float):Void;
	function setMinScale(scale:Float):Void;
	function setScaleRange(minScale:Float, maxScale:Float):Void;
	function suspend():Void;
	@:overload(function(type:Scale-range-change, listener:{ var target : ArcGISTiledMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-visibility-change, listener:{ var target : ArcGISTiledMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Suspend, listener:{ var target : ArcGISTiledMapServiceLayer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Resume, listener:{ var target : ArcGISTiledMapServiceLayer; } -> Void):esri.Handle;
}
