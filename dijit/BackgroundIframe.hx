typedef Destroy = { };
typedef Resize = { };
typedef Hccss = { };
extern class _AttachMixin {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	var searchContainerNode : Bool;
	function buildRendering():Void;
	function destroyRendering():Void;
}
extern class _Container {
	function new():Void;
	function addChild(widget:dijit._WidgetBase, ?insertIndex:Float):Void;
	function buildRendering():Void;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function hasChildren():Bool;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
}
extern class _Contained {
	function new():Void;
	function getIndexInParent():Dynamic;
	function getNextSibling():Dynamic;
	function getPreviousSibling():Dynamic;
}
extern class _DialogMixin {
	function new():Void;
	function execute(formContents:Dynamic):Void;
	function onCancel():Void;
	function onExecute():Void;
}
extern class _CssStateMixin {
	function new():Void;
	var active : Bool;
	var cssStateNodes : Dynamic;
	var hovering : Bool;
}
extern class _FocusMixin {
	function new():Void;
}
extern class _HasDropDown extends dijit._FocusMixin {
	function new():Void;
	var autoWidth : Bool;
	var dropDown : Dynamic;
	var dropDownPosition : Dynamic;
	var forceWidth : Bool;
	var maxHeight : Float;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function destroy():Void;
	function isLoaded():Bool;
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	function openDropDown():Dynamic;
	function postCreate():Void;
	function toggleDropDown():Void;
}
extern class _KeyNavMixin extends dijit._FocusMixin {
	function new():Void;
	var childSelector : Dynamic;
	var focusedChild : Dynamic;
	var multiCharSearchDuration : Float;
	var tabIndex : String;
	function focus():Void;
	function focusChild(widget:dijit._WidgetBase, last:Bool):Void;
	function focusFirstChild():Void;
	function focusLastChild():Void;
	function postCreate():Void;
	function onKeyboardSearch(item:dijit._WidgetBase, evt:Event, searchString:String, numMatches:Float):Void;
}
extern class _KeyNavContainer extends dijit._FocusMixin {
	function new():Void;
	var focusedChild : Dynamic;
	var multiCharSearchDuration : Float;
	var tabIndex : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	function buildRendering():Void;
	function childSelector(node:HTMLElement):Dynamic;
	function connectKeyNavHandlers(prevKeyCodes:dojo.Keys, nextKeyCodes:dojo.Keys):Void;
	function focus():Void;
	function focusChild(widget:dijit._WidgetBase, last:Bool):Void;
	function focusFirstChild():Void;
	function focusLastChild():Void;
	function focusNext():Void;
	function focusPrev():Void;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function hasChildren():Bool;
	function postCreate():Void;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function startup():Void;
	function startupKeyNavChildren():Void;
	function onKeyboardSearch(item:dijit._WidgetBase, evt:Event, searchString:String, numMatches:Float):Void;
}
extern class _OnDijitClickMixin {
	function new():Void;
	var a11yclick : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
}
