extern class BoundingBoxController {
	function new(sources:Array<dojox.dnd.Selector>, domNode:String):Void;
	function boundingBoxIsViable(evt:Dynamic):Bool;
	function destroy():Void;
	function shouldStartDrawingBox(evt:Dynamic):Bool;
}
extern class Selector extends dojo.dnd.Selector {
	function new(node:HTMLElement, ?params:Dynamic):Void;
	var allowNested : Bool;
	var conservative : Bool;
	var current : HTMLElement;
	var map : Dynamic;
	var selection : Dynamic;
	var singular : Bool;
	var skipForm : Bool;
	function clearItems():Void;
	function creator():Void;
	function deleteSelectedNodes():haxe.Constraints.Function;
	function delItem(key:String):Void;
	@:overload(function(node:HTMLElement):haxe.Constraints.Function { })
	function deselectNode(node:String):haxe.Constraints.Function;
	function destroy():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function forInItems(f:haxe.Constraints.Function, o:Dynamic):String;
	function forInSelectedItems(f:haxe.Constraints.Function, o:Dynamic):Void;
	function getAllNodes():Dynamic;
	function getItem(key:String):Dynamic;
	function getSelectedNodes():Dynamic;
	@:overload(function(addSelected:Bool, data:Array<Dynamic>, before:Bool, anchor:HTMLElement):haxe.Constraints.Function { })
	function insertNodes(data:Dynamic, before:Bool, anchor:HTMLElement):haxe.Constraints.Function;
	@:overload(function(node:HTMLElement):Dynamic { })
	function isSelected(node:String):Dynamic;
	function markupFactory(params:Dynamic, node:Dynamic, Ctor:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function selectAll():Dynamic;
	function selectByBBox(left:Float, top:Float, right:Float, bottom:Float, add:Bool):haxe.Constraints.Function;
	@:overload(function(node:HTMLElement, add:Bool):haxe.Constraints.Function { })
	function selectNode(node:String, add:Bool):haxe.Constraints.Function;
	function selectNone():Dynamic;
	function setItem(key:String, data:Dynamic):Void;
	function shift(toNext:Bool, add:Bool):Void;
	function startup():Void;
	function sync():haxe.Constraints.Function;
	function onMouseDown(e:Event):Void;
	function onMouseMove(e:Event):Void;
	function onMouseOut(e:Event):Void;
	function onMouseOver(e:Event):Void;
	function onMouseUp(e:Event):Void;
	function onOutEvent():Void;
	function onOverEvent():Void;
	function onSelectStart(e:Event):Void;
}
