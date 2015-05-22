extern class AreaManager {
	function new():Void;
	var areaClass : String;
	var autoRefresh : Bool;
	var dragHandleClass : String;
	function addDragItem(area:HTMLElement, node:HTMLElement, index:Float, notCheckParent:Bool):Dynamic;
	function destroy():Void;
	function findCurrentIndexArea(coords:Dynamic, size:Dynamic):Dynamic;
	function init():Void;
	function placeDropIndicator(coords:Dynamic, size:Dynamic):Dynamic;
	function registerByClass():Void;
	function registerByNode(area:HTMLElement, notInitAreas:Bool):Void;
	function removeDragItem(area:HTMLElement, node:HTMLElement):Dynamic;
	function unregister(area:HTMLElement):Dynamic;
	function onDrag(node:HTMLElement, coords:Dynamic, size:Dynamic, mousePosition:Dynamic):Void;
	function onDragEnter(coords:Dynamic, size:Dynamic):Void;
	function onDragExit(coords:Dynamic, size:Dynamic):Void;
	function onDragStart(node:HTMLElement, coords:Dynamic, size:Dynamic):Void;
	function onDrop(node:HTMLElement):Void;
	function onDropCancel():Void;
}
extern class AutoScroll {
	function new():Void;
	var interval : Float;
	var marginMouse : Float;
	var recursiveTimer : Float;
	function checkAutoScroll(e:Event):Void;
	function destroy():Void;
	function getViewport():Void;
	function init():Void;
	function setAutoScrollMaxPage():Void;
	function setAutoScrollNode(node:HTMLElement):Void;
	function stopAutoScroll():Void;
}
extern class DropIndicator {
	function new():Void;
	var node : HTMLElement;
	function destroy():Void;
	function place(area:HTMLElement, nodeRef:HTMLElement, size:Dynamic):Dynamic;
	function remove():Void;
}
extern class LazyManager {
	function new():Void;
	function cancelDrag():Void;
	function destroy():Void;
	function getItem(draggedNode:HTMLElement):Dynamic;
	function startDrag(e:Event, draggedNode:HTMLElement):Void;
}
extern class Moveable {
	function new(params:Dynamic, node:HTMLElement):Void;
	var dragDistance : Float;
	var handle : HTMLElement;
	var skip : Bool;
	function destroy():Void;
	function initOffsetDrag(e:Event):Void;
	function isFormElement(e:Event):Dynamic;
	function onDrag(node:HTMLElement, coords:Dynamic, size:Dynamic, mousePosition:Dynamic):Void;
	function onDragEnd(node:HTMLElement):Void;
	function onDragStart(node:HTMLElement, coords:Dynamic, size:Dynamic):Void;
	function onFirstMove(e:Event):Void;
	function onMouseDown(e:Event):Void;
	function onMouseUp(e:Event):Void;
	function onMove(e:Event):Void;
}
extern class PureSource extends dojo.dnd.Selector {
	function new(node:HTMLElement, ?params:Dynamic):Void;
	var allowNested : Bool;
	var copyOnly : Bool;
	var current : HTMLElement;
	var generateText : Bool;
	var horizontal : Bool;
	var isSource : Bool;
	var map : Dynamic;
	var selection : Dynamic;
	var singular : Bool;
	var skipForm : Bool;
	var targetState : String;
	var withHandles : Bool;
	function clearItems():Void;
	function copyState(keyPressed:Bool):Dynamic;
	function creator():Void;
	function deleteSelectedNodes():haxe.Constraints.Function;
	function delItem(key:String):Void;
	function destroy():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function forInItems(f:haxe.Constraints.Function, o:Dynamic):String;
	function forInSelectedItems(f:haxe.Constraints.Function, o:Dynamic):Void;
	function getAllNodes():Dynamic;
	function getItem(key:String):Dynamic;
	function getSelectedNodes():Dynamic;
	@:overload(function(addSelected:Bool, data:Array<Dynamic>, before:Bool, anchor:HTMLElement):haxe.Constraints.Function { })
	function insertNodes(data:Dynamic, before:Bool, anchor:HTMLElement):haxe.Constraints.Function;
	function markupFactory(params:Dynamic, node:HTMLElement):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function selectAll():Dynamic;
	function selectNone():Dynamic;
	function setItem(key:String, data:Dynamic):Void;
	function startup():Void;
	function sync():haxe.Constraints.Function;
	function onDndCancel():Void;
	function onMouseDown(e:Event):Void;
	function onMouseMove(e:Event):Void;
	function onMouseOut(e:Event):Void;
	function onMouseOver(e:Event):Void;
	function onMouseUp(e:Event):Void;
	function onOutEvent():Void;
	function onOverEvent():Void;
	function onSelectStart(e:Event):Void;
}
