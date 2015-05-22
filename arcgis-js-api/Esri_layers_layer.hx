extern class Layer {
	var attributionDataUrl : String;
	var className : String;
	var credential : Credential;
	var hasAttributionData : Bool;
	var id : String;
	var loaded : Bool;
	var loadError : Error;
	var maxScale : Float;
	var minScale : Float;
	var opacity : Float;
	var refreshInterval : Float;
	var showAttribution : Bool;
	var suspended : Bool;
	var url : String;
	var visible : Bool;
	var visibleAtMapScale : Bool;
	function new(?options:esri.LayerOptions):Void;
	function attr(name:String, value:String):Layer;
	function getAttributionData():Dynamic;
	function getMap():Map;
	function getNode():HTMLElement;
	function hide():Void;
	function isVisibleAtScale(scale:Float):Bool;
	function resume():Void;
	function setMaxScale(scale:Float):Void;
	function setMinScale(scale:Float):Void;
	function setOpacity(opacity:Float):Void;
	function setRefreshInterval(interval:Float):Layer;
	function setScaleRange(minScale:Float, maxScale:Float):Void;
	function setVisibility(isVisible:Bool):Void;
	function show():Void;
	function suspend():Void;
	@:overload(function(type:Load, listener:{ var layer : Layer; var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Opacity-change, listener:{ var opacity : Float; var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Refresh-interval-change, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Resume, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-range-change, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-visibility-change, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Suspend, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Update, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Update-end, listener:{ var error : Error; var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Update-start, listener:{ var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:Visibility-change, listener:{ var visible : Bool; var target : Layer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : Layer; } -> Void):esri.Handle;
}
