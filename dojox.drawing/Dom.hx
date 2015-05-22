extern class Toolbar {
	function new(props:Dynamic, node:Dynamic):Void;
	var baseClass : String;
	var buttonClass : String;
	var iconClass : String;
	function createIcon(node:HTMLElement, constr:haxe.Constraints.Function):Void;
	function createTool(node:HTMLElement):Void;
	function parse():Void;
	function onClick(type:String):Void;
	function onSetTool(type:String):Void;
}
extern class Pan extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
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
	function onKeyDown(evt:Dynamic):Void;
	function onKeyUp(evt:Dynamic):Void;
	function onPanDrag(obj:Dynamic):Void;
	@:overload(function(bool:Event):Void { })
	function onSetPan(bool:Bool):Void;
	function onStencilDrag(obj:Dynamic):Void;
	function onStencilUp(obj:Dynamic):Void;
}
