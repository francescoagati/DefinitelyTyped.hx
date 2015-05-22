extern class DndFromDojo {
	function new():Void;
	var dropIndicatorSize : Dynamic;
	function isAccepted(node:HTMLElement, accept:Dynamic):Dynamic;
	function subscribeDnd():Void;
	function unsubscribeDnd():Void;
	function onDndSource(source:Dynamic):Void;
	function onDragEnter():Void;
	function onDragExit():Void;
	function onDragStart(source:Dynamic, nodes:Array<Dynamic>, copy:Bool):Void;
	function onDrop(source:Dynamic, nodes:Array<Dynamic>, copy:Bool):Void;
	function onDropCancel():Void;
	function onMouseMove(e:Event):Void;
}
extern class DndToDojo {
	function new():Void;
	function isAccepted(draggedNode:HTMLElement, target:Dynamic):Bool;
	function refresh():Void;
	function refreshByType(type:String):Void;
	function register(area:HTMLElement, type:String, dojoTarget:Bool):Void;
	function unregister():Void;
	function unregisterByNode(area:HTMLElement):Void;
	function unregisterByType(type:String):Void;
	function onDragEnter(e:Event):Void;
	function onDragExit(e:Event):Void;
	function onDrop(e:Event):Void;
	function onMouseMove(e:Event):Void;
}
