extern class _ComboBoxMenu {
	function new():Void;
	function buildRendering():Void;
}
extern class _ItemBase {
	function new():Void;
	function getTransOpts():Dynamic;
}
extern class _StoreListMixin {
	function new():Void;
	function createListItem(item:Dynamic):Dynamic;
}
extern class Accordion {
	function new():Void;
}
extern class Badge {
	function new():Void;
	var textDir : String;
	function setTextDir(textDir:String):Void;
	function setValue(value:String):Void;
}
extern class Button {
	function new():Void;
}
extern class CarouselItem {
	function new():Void;
}
extern class Carousel {
	function new():Void;
	function buildRendering():Void;
}
extern class Heading {
	function new():Void;
}
extern class IconItem {
	function new():Void;
}
extern class IconMenu {
	function new():Void;
}
extern class RoundRectCategory {
	function new():Void;
}
extern class ListItem {
	function new():Void;
}
extern class SwapView {
	function new():Void;
	var callParentFunction : Bool;
	function nextView(node:HTMLElement):Dynamic;
	function previousView(node:HTMLElement):Dynamic;
}
extern class SpinWheelSlot {
	function new():Void;
	function postCreate():Void;
}
extern class TabBar {
	function new():Void;
}
extern class Switch {
	function new():Void;
	function buildRendering():Void;
	function postCreate():Void;
}
extern class TextBox {
	function new():Void;
}
extern class TabBarButton {
	function new():Void;
}
extern class ToolBarButton {
	function new():Void;
	function buildRendering():Void;
}
extern class Tooltip {
	function new():Void;
	function buildRendering():Void;
	function postCreate():Void;
}
extern class ValuePickerSlot {
	function new():Void;
	function postCreate():Void;
}
extern class TreeView {
	function new():Void;
}
typedef Common = {
	var MARK : Dynamic;
	function enforceTextDirWithUcc(text:Dynamic, textDir:Dynamic):String;
	function removeUCCFromText(text:Dynamic):Dynamic;
	function setTextDirForButtons(widget:Dynamic):Void;
};
