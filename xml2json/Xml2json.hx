typedef IX2JS = {
	function new(?config:IX2JSOption):IX2JS;
	function getVersion():String;
	function xml2json<T>(dom:Node):T;
	function json2xml<T>(json:T):Node;
	function xml_str2json<T>(xml:String):T;
	function json2xml_str<T>(json:T):String;
	function parseXmlString(xml:String):Node;
	function asArray(prop:Dynamic):Array<Dynamic>;
	function asDateTime(key:String):String;
	@:overload(function(date:Float):String { })
	function asXmlDateTime(date:Date):String;
};
typedef IX2JSOption = {
	@:optional
	var escapeMode : Bool;
	@:optional
	var attributePrefix : String;
	@:optional
	var arrayAccessForm : String;
	@:optional
	var emptyNodeForm : String;
	@:optional
	var enableToStringFunc : Bool;
	@:optional
	var arrayAccessFormPaths : Array<Dynamic>;
	@:optional
	var skipEmptyTextNodesForObj : Bool;
	@:optional
	var stripWhitespaces : Bool;
	@:optional
	var datetimeAccessFormPaths : Array<Dynamic>;
};
extern class Xml2jsonTopLevel {
	static var X2JS : IX2JS;
}
