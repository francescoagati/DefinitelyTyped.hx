extern class W3CRange {
	function new():Void;
	function cloneRange():Dynamic;
	function deleteContents():Void;
	function detach():Void;
	function getBookmark():Dynamic;
	function setEnd(node:Dynamic, offset:Dynamic):Void;
	function setEndAfter(node:Dynamic, offset:Dynamic):Void;
	function setEndBefore(node:Dynamic, offset:Dynamic):Void;
	function setStart(node:Dynamic, offset:Dynamic):Void;
	function setStartAfter(node:Dynamic, offset:Dynamic):Void;
	function setStartBefore(node:Dynamic, offset:Dynamic):Void;
}
typedef Ie = {
	var cachedSelection : Dynamic;
	function decomposeControlRange(range:Dynamic):Array<Dynamic>;
	function decomposeTextRange(range:Dynamic):Array<Dynamic>;
	function getEndPoint(range:Dynamic, end:Dynamic):Array<Dynamic>;
	function selection(window:Dynamic):Void;
	function setEndPoint(range:Dynamic, container:Dynamic, offset:Dynamic):Dynamic;
	function setRange(range:Dynamic, startContainer:Dynamic, startOffset:Dynamic, endContainer:Dynamic, endOffset:Dynamic, collapsed:Dynamic):Dynamic;
};
typedef Selection = {
	function collapse(beginning:Bool):Void;
	function getAncestorElement(tagName:String):Dynamic;
	function getParentElement():Dynamic;
	function getParentOfType(node:HTMLElement, tags:Array<String>):HTMLElement;
	function getSelectedElement():Dynamic;
	function getSelectedHtml():String;
	function getSelectedText():String;
	function getType():String;
	function hasAncestorElement(tagName:String):Bool;
	function inSelection(node:Dynamic):Bool;
	function isTag(node:HTMLElement, tags:Array<String>):Dynamic;
	function remove():Dynamic;
	function selectElement(element:HTMLElement, nochangefocus:Bool):Void;
	function selectElementChildren(element:HTMLElement, nochangefocus:Bool):Void;
};
