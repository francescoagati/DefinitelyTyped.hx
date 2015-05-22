extern class Button {
	function new(options:Dynamic):Void;
	var callback : Dynamic;
	var enabled : Bool;
	var hitched : Dynamic;
	var scope : Dynamic;
	var selected : Bool;
	var toolType : String;
	var type : String;
	function attr(options:Dynamic):Void;
	function deselect():Void;
	function disable():Void;
	function enable():Void;
	function makeOptions(d:Dynamic, s:Float):Dynamic;
	function select():Void;
	function onClick(button:Dynamic):Void;
	function onDown():Void;
	function onOut():Void;
	function onOver():Void;
	function onUp():Void;
}
extern class Tooltip extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var height : Float;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	var width : Float;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function onOut():Void;
	function onOver():Void;
}
extern class Toolbar {
	function new(props:Dynamic, node:Dynamic):Void;
	var margin : Float;
	var padding : Float;
	var radius : Float;
	var size : Float;
	var strPlugs : String;
	var strSelected : String;
	var strTools : String;
	var toolPlugGap : Float;
	function addBack():Void;
	function addPlugin():Void;
	function addTool():Void;
	function makeButtons():Void;
	function onPlugClick(button:Dynamic):Void;
	function onRenderStencil(stencil:Dynamic):Void;
	function onToolClick(button:Dynamic):Void;
}
