extern class Avatar {
	function new(manager:Dynamic):Void;
	var manager : Dynamic;
	function construct():Void;
	function destroy():Void;
	function update():Void;
}
extern class Manager extends dojo.Evented {
	function new():Void;
	var OFFSET_X : Float;
	var OFFSET_Y : Float;
	function canDrop(flag:Dynamic):Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function makeAvatar():Dynamic;
	function manager():Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function outSource(source:Dynamic):Void;
	function overSource(source:Dynamic):Void;
	function startDrag(source:Dynamic, nodes:Array<Dynamic>, copy:Bool):Void;
	function stopDrag():Void;
	function updateAvatar():Void;
	function onKeyDown(e:Event):Void;
	function onKeyUp(e:Event):Void;
	function onMouseMove(e:Event):Void;
	function onMouseUp(e:Event):Void;
}
extern class Container extends dojo.Evented {
	function new(node:HTMLElement, params:Dynamic):Void;
	var allowNested : Bool;
	var current : HTMLElement;
	var map : Dynamic;
	var node : HTMLElement;
	var skipForm : Bool;
	function clearItems():Void;
	function creator():Void;
	function delItem(key:String):Void;
	function destroy():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function forInItems(f:haxe.Constraints.Function, o:Dynamic):String;
	function getAllNodes():Dynamic;
	function getItem(key:String):Dynamic;
	function insertNodes(?addSelected:Bool, ?data:Array<Dynamic>, ?before:Bool, ?anchor:HTMLElement):haxe.Constraints.Function;
	function Item():Void;
	function markupFactory(params:Dynamic, node:Dynamic, Ctor:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function setItem(key:String, data:Dynamic):Void;
	function startup():Void;
	function sync():haxe.Constraints.Function;
	function onMouseOut(e:Event):Void;
	function onMouseOver(e:Event):Void;
	function onOutEvent():Void;
	function onOverEvent():Void;
	function onSelectStart(e:Event):Void;
}
