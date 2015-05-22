extern class DataHandler {
	function new(ds:Dynamic, target:HTMLElement, ?refNode:HTMLElement):Void;
	var ds : Dynamic;
	var refNode : HTMLElement;
	var target : HTMLElement;
	function processData(contentType:String, callback:haxe.Constraints.Function):Void;
}
extern class HtmlContentHandler {
	function new():Void;
	function parse(content:String, target:HTMLElement, refNode:HTMLElement):Dynamic;
}
extern class HtmlScriptContentHandler extends dojox.mobile.dh.HtmlContentHandler {
	function new():Void;
	function execScript(html:String):Dynamic;
	function parse(content:String, target:HTMLElement, refNode:HTMLElement):Dynamic;
}
extern class JsonContentHandler {
	function new():Void;
	function parse(content:Dynamic, target:HTMLElement, refNode:HTMLElement):Dynamic;
}
extern class StringDataSource {
	function new(text:String):Void;
	var text : String;
	function getData():Dynamic;
}
extern class UrlDataSource {
	function new(url:String):Void;
	var text : String;
	function getData():Dynamic;
}
typedef ContentTypeMap = {
	var map : Dynamic;
	function add(contentType:String, handlerClass:String):Void;
	function getHandlerClass(contentType:String):Dynamic;
};
