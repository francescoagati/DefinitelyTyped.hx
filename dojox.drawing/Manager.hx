extern class Canvas {
	function new(options:Dynamic):Void;
	var baseClass : String;
	var useScrollbars : Bool;
	var zoom : Float;
	function getScrollOffset():Dynamic;
	function getScrollWidth():Float;
	function resize(width:Dynamic, height:Dynamic):Void;
	function setDimensions(width:Dynamic, height:Dynamic, scrollx:Dynamic, scrolly:Dynamic):Void;
	function setZoom(zoom:Dynamic):Void;
	function onScroll():Void;
}
extern class Anchors {
	function new(options:Dynamic):Void;
	function add(item:dojox.drawing.stencil._Base):Void;
	function remove(item:dojox.drawing.stencil._Base):Void;
	function onAddAnchor(anchor:Dynamic):Void;
	function onAnchorDown(anchor:Dynamic):Void;
	function onAnchorDrag(anchor:Dynamic):Void;
	function onAnchorUp(anchor:Dynamic):Void;
	function onChangeStyle(stencil:Dynamic):Void;
	function onRenderStencil():Void;
	function onReset(stencil:dojox.drawing.stencil._Base):Void;
	function onTransformPoint(anchor:Dynamic):Void;
}
extern class StencilUI {
	function new(options:Dynamic):Void;
	function register(stencil:Dynamic):Dynamic;
	function onOut(obj:Event):Void;
	function onOver(obj:Event):Void;
	function onUiDown(obj:Event):Void;
	function onUiUp(obj:Event):Void;
}
extern class Mouse {
	function new(options:Dynamic):Void;
	var CustomEventMethod : Dynamic;
	var doublClickSpeed : Float;
	var zoom : Float;
	function create(evt:Dynamic, squelchErrors:Dynamic):Dynamic;
	function down(evt:Dynamic):Void;
	function drag(evt:Dynamic):Void;
	function eventName(name:Dynamic):Dynamic;
	function EventObject():Void;
	function init(node:HTMLElement):Void;
	function move(evt:Dynamic):Void;
	function out(obj:Dynamic):Void;
	function over(obj:Dynamic):Void;
	function overName(obj:Dynamic, evt:Dynamic):String;
	function register(scope:Dynamic):Dynamic;
	function resize(width:Dynamic, height:Dynamic):Void;
	function scrollOffset():Dynamic;
	function setCanvas():Void;
	function setCursor(cursor:Dynamic, node:HTMLElement):Void;
	function setEventMode(mode:Dynamic):Void;
	function setZoom(zoom:Dynamic):Void;
	function unregister(handle:Dynamic):Void;
	function up(evt:Dynamic):Void;
	function onDown(obj:Dynamic):Void;
	function onDrag(obj:Dynamic):Void;
	function onMove(obj:Dynamic):Void;
	function onOut(obj:Dynamic):Void;
	function onOver(obj:Dynamic):Void;
	function onUp(obj:Dynamic):Void;
}
extern class Stencil {
	function new(options:Dynamic):Void;
	var throttleTime : Float;
	function deleteItem(stencil:Dynamic):Void;
	function deselect():Void;
	function deselectItem(stencil:Dynamic):Void;
	function exporter():Array<Dynamic>;
	function getRecentStencil():Dynamic;
	function hasSelected():Float;
	function isSelected(stencil:Dynamic):Bool;
	function listStencils():Dynamic;
	function register(stencil:Dynamic):Dynamic;
	function removeAll():Void;
	function saveMoveState():Void;
	function saveThrottledState():Void;
	function selectAll():Void;
	@:overload(function(idOrItem:Dynamic):Void { })
	function selectItem(idOrItem:String):Void;
	function setConstraint():Void;
	function setRecentStencil(stencil:Dynamic):Void;
	function setSelectionGroup():Void;
	function toSelected(func:String):Void;
	function unDelete(stencils:Array<Dynamic>):Void;
	function unregister(stencil:Dynamic):Void;
	function withSelected(func:haxe.Constraints.Function):Void;
	function withStencils(func:haxe.Constraints.Function):Void;
	function withUnselected(func:haxe.Constraints.Function):Void;
	function onAnchorUp():Void;
	function onArrow(evt:KeyboardEvent):Void;
	function onBeginDrag(obj:Event):Void;
	function onDelete(noundo:Bool):Void;
	function onDeselect(stencil:Dynamic, keepObject:Dynamic):Void;
	function onDown(obj:Event):Void;
	function onDragEnd(obj:Event):Void;
	function onLabelDoubleClick(obj:Event):Void;
	function onLabelDown(obj:Event, evt:Dynamic):Void;
	function onLabelDrag(obj:Event):Void;
	function onLabelUp(obj:Event):Void;
	function onSelect(stencil:Dynamic):Void;
	function onStencilDoubleClick(obj:Event):Void;
	function onStencilDown(obj:Event, evt:Dynamic):Void;
	function onStencilDrag(obj:Event):Void;
	function onStencilOut(obj:Dynamic):Void;
	function onStencilOver(obj:Dynamic):Void;
	function onStencilUp(obj:Event):Void;
}
extern class Undo {
	function new(options:Dynamic):Void;
	function add(stack:Dynamic):Void;
	function apply(scope:Dynamic, method:Dynamic, args:Dynamic):Void;
	function redo():Void;
	function undo():Void;
	function onKeyDown(evt:Dynamic):Void;
}
typedef _registry = {
	function getRegistered(type:Dynamic, id:Dynamic):Dynamic;
	function register(item:Dynamic, type:Dynamic):Void;
};
typedef Keys = {
	var alt : Bool;
	var arrowIncrement : Float;
	var arrowShiftIncrement : Float;
	var cmmd : Bool;
	var ctrl : Bool;
	var listeners : Array<Dynamic>;
	var meta : Bool;
	var shift : Bool;
	function editMode(_isedit:Dynamic):Void;
	function enable(_enabled:Dynamic):Void;
	function init():Void;
	function register(options:Dynamic):Void;
	function scanForFields():Void;
};
