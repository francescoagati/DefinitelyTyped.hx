extern class ContextMenu extends Menu {
	function new(editor:Editor):Void;
	function addTarget(element:dom.Element, ?nativeContextMenuOnCtrl:Bool):Void;
	function open(offsetParent:dom.Element, ?corner:Float, ?offsetX:Float, ?offsetY:Float):Void;
}
