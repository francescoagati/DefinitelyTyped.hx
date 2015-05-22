typedef MustacheScanner = {
	var string : String;
	var tail : String;
	var pos : Float;
	function eos():Bool;
	function scan(re:js.RegExp):String;
	function scanUntil(re:js.RegExp):String;
};
typedef MustacheContext = {
	var view : Dynamic;
	var parentContext : MustacheContext;
	function push(view:Dynamic):MustacheContext;
	function lookup(name:String):Dynamic;
};
typedef MustacheWriter = {
	function clearCache():Void;
	function parse(template:String, ?tags:Dynamic):Dynamic;
	function render(template:String, view:Dynamic, partials:Dynamic):String;
	function renderTokens(tokens:Array<String>, context:MustacheContext, partials:Dynamic, originalTemplate:Dynamic):String;
};
typedef MustacheStatic = {
	var name : String;
	var version : String;
	var tags : String;
	var Scanner : MustacheScanner;
	var Context : MustacheContext;
	var Writer : MustacheWriter;
	var escape : Dynamic;
	function clearCache():MustacheWriter;
	function parse(template:String, ?tags:Dynamic):Dynamic;
	function render(template:String, view:Dynamic, ?partials:Dynamic):String;
	function to_html(template:String, view:Dynamic, ?partials:Dynamic, ?send:Dynamic):Dynamic;
};
extern class MustacheTopLevel {
	static var Mustache : MustacheStatic;
}
