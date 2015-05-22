extern class LayerSwipe {
	var clip : Float;
	var enabled : Bool;
	var layers : Array<Layer>;
	var left : Float;
	var loaded : Bool;
	var map : Map;
	var theme : String;
	var top : Float;
	var type : String;
	var visible : Bool;
	@:overload(function(params:esri.LayerSwipeOptions, srcNodeRef:String):Void { })
	function new(params:esri.LayerSwipeOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function disable():Void;
	function enable():Void;
	function startup():Void;
	function swipe():Void;
	@:overload(function(type:Swipe, listener:{ var layers : Array<Dynamic>; var target : LayerSwipe; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Load, listener:{ var target : LayerSwipe; } -> Void):esri.Handle;
}
