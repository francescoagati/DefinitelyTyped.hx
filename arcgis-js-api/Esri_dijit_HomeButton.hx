extern class HomeButton {
	var extent : Extent;
	var loaded : Bool;
	var map : Map;
	var theme : String;
	var visible : Bool;
	@:overload(function(params:esri.HomeButtonOptions, srcNodeRef:String):Void { })
	function new(params:esri.HomeButtonOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function hide():Void;
	function home():Dynamic;
	function show():Void;
	function startup():Void;
	@:overload(function(type:Load, listener:{ var target : HomeButton; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Home, listener:{ var error : Dynamic; var extent : Extent; var target : HomeButton; } -> Void):esri.Handle;
}
