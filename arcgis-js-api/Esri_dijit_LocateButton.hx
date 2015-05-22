extern class LocateButton {
	var centerAt : Bool;
	var clearOnTrackingStop : Bool;
	var geolocationOptions : Dynamic;
	var graphicsLayer : GraphicsLayer;
	var highlightLocation : Bool;
	var infoTemplate : InfoTemplate;
	var loaded : Bool;
	var map : Map;
	var scale : Float;
	var setScale : Bool;
	var symbol : Symbol;
	var theme : String;
	var tracking : Bool;
	var useTracking : Bool;
	var visible : Bool;
	@:overload(function(params:esri.LocateButtonOptions, srcNodeRef:String):Void { })
	function new(params:esri.LocateButtonOptions, srcNodeRef:Node):Void;
	function clear():Void;
	function destroy():Void;
	function hide():Void;
	function locate():Dynamic;
	function show():Void;
	function startup():Void;
	@:overload(function(type:Locate, listener:{ var error : Dynamic; var graphic : Graphic; var position : Dynamic; var scale : Float; var target : LocateButton; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Load, listener:{ var target : LocateButton; } -> Void):esri.Handle;
}
