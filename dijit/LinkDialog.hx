extern class ImgLinkDialog extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var emailRegExp : String;
	var htmlTemplate : String;
	var iconClassPrefix : String;
	var linkDialogTemplate : String;
	var tag : String;
	var urlRegExp : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class TextColor extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class NewPage extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var content : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class Print extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class TabIndent extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class ToggleDir extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class ViewSource extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var readOnly : Bool;
	var stripComments : Bool;
	var stripIFrames : Bool;
	var stripScripts : Bool;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setSourceAreaCaret():Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function toggle():Void;
	function updateState():Void;
}
typedef Html = {
	function escapeXml(str:String, noSingleQuotes:Bool):Dynamic;
	function getChildrenHtml(node:HTMLElement):Dynamic;
	function getChildrenHtmlHelper(dom:HTMLElement, output:Array<String>):Void;
	function getNodeHtml(node:HTMLElement):Dynamic;
	function getNodeHtmlHelper(node:HTMLElement, output:Array<String>):String;
};
typedef Range = {
	var BlockTagNames : js.RegExp;
	var ie : Dynamic;
	function adjacentNoneTextNode(startnode:Dynamic, next:Dynamic):Array<Dynamic>;
	function atBeginningOfContainer(container:HTMLElement, node:HTMLElement, offset:Float):Bool;
	function atEndOfContainer(container:HTMLElement, node:HTMLElement, offset:Float):Bool;
	function create(win:Window):Dynamic;
	function getAncestor(node:HTMLElement, regex:js.RegExp, root:HTMLElement):HTMLElement;
	function getBlockAncestor(node:HTMLElement, regex:js.RegExp, root:HTMLElement):Dynamic;
	function getCommonAncestor(n1:Dynamic, n2:Dynamic, root:Dynamic):Dynamic;
	function getIndex(node:HTMLElement, parent:HTMLElement):Dynamic;
	function getNode(index:Array<Dynamic>, parent:HTMLElement):HTMLElement;
	function getSelection(window:Window, ignoreUpdate:Bool):Dynamic;
	function W3CRange():Void;
};
