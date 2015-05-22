typedef Focus = {
	function getBookmark():Dynamic;
	function getFocus(menu:dijit._WidgetBase, openedForWindow:Window):Dynamic;
	function isCollapsed():Dynamic;
	function moveToBookmark(bookmark:Dynamic):Dynamic;
	function registerIframe(iframe:HTMLElement):Dynamic;
	function registerWin(targetWindow:Window, effectiveNode:HTMLElement):Dynamic;
	function unregisterIframe(handle:Dynamic):Void;
	function unregisterWin(handle:Dynamic):Void;
};
typedef Manager = {
	var defaultDuration : Float;
};
typedef Popup = { };
typedef Place = {
	function getPopupAroundAlignment(position:Array<String>, leftToRight:Bool):Void;
	function getViewport():Void;
	function placeOnScreen(node:HTMLElement, pos:dijit.place.__Position, corners:Array<String>, padding:dijit.place.__Position, layoutNode:Dynamic):Dynamic;
	function placeOnScreenAroundElement(node:Dynamic, aroundNode:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
	function placeOnScreenAroundNode(node:Dynamic, aroundNode:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
	function placeOnScreenAroundRectangle(node:Dynamic, aroundRect:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
};
typedef Scroll = { };
typedef Wai = {
	function getWaiRole(elem:HTMLElement):Dynamic;
	function getWaiState(elem:HTMLElement, state:String):Dynamic;
	function hasWaiRole(elem:HTMLElement, role:String):Dynamic;
	function hasWaiState(elem:HTMLElement, state:String):Dynamic;
	function removeWaiRole(elem:HTMLElement, role:String):Void;
	function removeWaiState(elem:HTMLElement, state:String):Void;
	function setWaiRole(elem:HTMLElement, role:String):Void;
	function setWaiState(elem:HTMLElement, state:String, value:String):Void;
};
typedef Typematic = { };
typedef Window = { };
typedef Sniff = { };
typedef _BidiMixin = {
	var textDir : String;
	function applyTextDir(element:HTMLElement, text:String):Void;
	function enforceTextDirWithUcc(option:Dynamic, text:Dynamic):String;
	function getTextDir(text:String):Dynamic;
	function restoreOriginalText(origObj:Dynamic):Dynamic;
};
typedef _Calendar = { };
typedef A11yclick = {
	function click(node:Dynamic, listener:Dynamic):Void;
	function move(node:Dynamic, listener:Dynamic):Void;
	function press(node:Dynamic, listener:Dynamic):Void;
	function release(node:Dynamic, listener:Dynamic):Void;
};
typedef A11y = {
	function effectiveTabIndex(elem:HTMLElement):Dynamic;
	@:overload(function(root:HTMLElement, doc:HTMLDocument):Dynamic { })
	function getFirstInTabbingOrder(root:String, doc:HTMLDocument):Dynamic;
	@:overload(function(root:HTMLElement, doc:HTMLDocument):Dynamic { })
	function getLastInTabbingOrder(root:String, doc:HTMLDocument):Dynamic;
	function hasDefaultTabStop(elem:HTMLElement):Dynamic;
	function isFocusable(elem:HTMLElement):Bool;
	function isTabNavigable(elem:HTMLElement):Bool;
};
typedef Dijit = { };
typedef Dijit_all = { };
typedef Main = {
	var defaultDuration : Float;
	var place : Dynamic;
	var popup : Dynamic;
	var registry : Dynamic;
	var typematic : Dynamic;
	function BackgroundIframe(node:HTMLElement):Void;
	function effectiveTabIndex(elem:HTMLElement):Dynamic;
	function focus(node:Dynamic):Void;
	function getBookmark():Dynamic;
	function getDocumentWindow(doc:Dynamic):Void;
	@:overload(function(root:HTMLElement, doc:HTMLDocument):Dynamic { })
	function getFirstInTabbingOrder(root:String, doc:HTMLDocument):Dynamic;
	function getFocus(menu:dijit._WidgetBase, openedForWindow:Window):Dynamic;
	@:overload(function(root:HTMLElement, doc:HTMLDocument):Dynamic { })
	function getLastInTabbingOrder(root:String, doc:HTMLDocument):Dynamic;
	function getPopupAroundAlignment(position:Array<String>, leftToRight:Bool):Void;
	function getViewport():Void;
	function getWaiRole(elem:HTMLElement):Dynamic;
	function getWaiState(elem:HTMLElement, state:String):Dynamic;
	function hasDefaultTabStop(elem:HTMLElement):Dynamic;
	function hasWaiRole(elem:HTMLElement, role:String):Dynamic;
	function hasWaiState(elem:HTMLElement, state:String):Dynamic;
	function hideTooltip(aroundNode:Dynamic):Dynamic;
	function isCollapsed():Dynamic;
	function isFocusable(elem:HTMLElement):Bool;
	function isTabNavigable(elem:HTMLElement):Bool;
	function moveToBookmark(bookmark:Dynamic):Dynamic;
	function placeOnScreen(node:HTMLElement, pos:dijit.place.__Position, corners:Array<String>, padding:dijit.place.__Position, layoutNode:Dynamic):Dynamic;
	function placeOnScreenAroundElement(node:Dynamic, aroundNode:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
	function placeOnScreenAroundNode(node:Dynamic, aroundNode:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
	function placeOnScreenAroundRectangle(node:Dynamic, aroundRect:Dynamic, aroundCorners:Dynamic, layoutNode:Dynamic):Void;
	function registerIframe(iframe:HTMLElement):Dynamic;
	function registerWin(targetWindow:Window, effectiveNode:HTMLElement):Dynamic;
	function removeWaiRole(elem:HTMLElement, role:String):Void;
	function removeWaiState(elem:HTMLElement, state:String):Void;
	function scrollIntoView(node:HTMLElement, pos:Dynamic):Void;
	function selectInputText(element:HTMLElement, start:Float, stop:Float):Void;
	function setWaiRole(elem:HTMLElement, role:String):Void;
	function setWaiState(elem:HTMLElement, state:String, value:String):Void;
	function showTooltip(innerHTML:String, aroundNode:Dynamic, position:Array<String>, rtl:Bool, textDir:String):Dynamic;
	function unregisterIframe(handle:Dynamic):Void;
	function unregisterWin(handle:Dynamic):Void;
};
