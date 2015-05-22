extern class BasemapToggle {
	var basemap : String;
	var basemaps : Dynamic;
	var loaded : Bool;
	var map : Map;
	var theme : String;
	var visible : Bool;
	@:overload(function(params:esri.BasemapToggleOptions, srcNodeRef:String):Void { })
	function new(params:esri.BasemapToggleOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function hide():Void;
	function show():Void;
	function startup():Void;
	function toggle():Void;
	@:overload(function(type:Toggle, listener:{ var currentBasemap : String; var error : Dynamic; var previousBasemap : String; var target : BasemapToggle; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Load, listener:{ var target : BasemapToggle; } -> Void):esri.Handle;
}
