typedef Setup = {
	var iconClass : String;
	var name : String;
	var tooltip : String;
};
extern class Pan extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var interval : Float;
	var keys : Dynamic;
	var keyScroll : Bool;
	var mouse : Dynamic;
	var node : Dynamic;
	var selected : Bool;
	var setup : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function checkBounds():Void;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function onArrow(evt:Dynamic):Void;
	function onKeyDown(evt:Dynamic):Void;
	function onKeyUp(evt:Dynamic):Void;
	function onPanDrag(obj:Dynamic):Void;
	function onPanUp(obj:Dynamic):Void;
	@:overload(function(bool:Event):Void { })
	function onSetPan(bool:Bool):Void;
	function onStencilDrag(obj:Dynamic):Void;
	function onStencilUp(obj:Dynamic):Void;
	function onUp(obj:Dynamic):Void;
}
