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
	var parent : MustacheContext;
	function clearCache():Void;
	function push(view:Dynamic):MustacheContext;
	function lookup(name:String):Dynamic;
};
typedef MustacheWriter = {
	function clearCache():Void;
	function compile(template:String, tags:Dynamic):Dynamic;
	function compilePartial(name:String, template:String, tags:Dynamic):Dynamic;
	function compileTokens(tokens:Array<String>, template:String):Dynamic;
	function render(template:String, view:Dynamic, partials:Dynamic):Dynamic;
};
typedef MustacheStatic = {
	var name : String;
	var version : String;
	var tags : String;
	var Scanner : MustacheScanner;
	var Context : MustacheContext;
	var Writer : MustacheWriter;
	var escape : Dynamic;
	function parse(template:String, tags:Dynamic):Dynamic;
	function clearCache():MustacheWriter;
	@:overload(function(template:String, tags:Dynamic):MustacheWriter { })
	function compile(template:String):MustacheWriter;
	function compilePartial(name:String, template:String, tags:Dynamic):MustacheWriter;
	function compileTokens(tokens:Array<String>, template:String):MustacheWriter;
	function render(template:String, view:Dynamic, ?partials:Dynamic):String;
	function to_html(template:String, view:Dynamic, ?partials:Dynamic, ?send:Dynamic):String;
};
extern class Mustache-0.7.3TopLevel {
	static var Mustache : MustacheStatic;
}
