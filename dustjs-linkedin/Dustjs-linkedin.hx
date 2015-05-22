typedef Template = { };
typedef Chunk = {
	function write(data:String):Chunk;
	function end(data:String):Chunk;
	function map(callback:Chunk -> Dynamic):Chunk;
	function tap(callback:Dynamic -> Dynamic):Chunk;
	function untap():Chunk;
	function render(body:Dynamic, context:Context):Chunk;
	function setError(err:Dynamic):Chunk;
};
typedef Context = {
	function get(key:String):Dynamic;
	function push(head:Dynamic, ?idx:Float, ?len:Float):Context;
	function rebase(head:Dynamic):Context;
	function current():Dynamic;
};
typedef Stream = {
	function flush():Void;
	function emit(evt:String, data:Dynamic):Void;
	function on(evt:String, callback:?Dynamic -> Dynamic):Dynamic;
	function pipe(stream:Stream):Stream;
};
extern class Dustjs-linkedinTopLevel {
	static function register(name:String, tmpl:Template):Void;
	static function compile(source:String, name:String, ?strip:Bool):String;
	static function compileFn(source:String, ?name:String):Template;
	static function loadSource(compiled:String):Template;
	static function render(name:String, context:Dynamic, callback:Dynamic -> String -> Dynamic):Dynamic;
	static function render(name:String, context:Context, callback:Dynamic -> String -> Dynamic):Dynamic;
	static function renderSource(source:String, context:Dynamic):Stream;
	static function renderSource(source:String, context:Context):Stream;
	static function renderSource(source:String, context:Dynamic, callback:Dynamic -> String -> Dynamic):Void;
	static function renderSource(source:String, context:Context, callback:Dynamic -> String -> Dynamic):Void;
	static function stream(name:String, context:Dynamic):Stream;
	static function stream(name:String, context:Context):Stream;
	static function makeBase(global:Dynamic):Context;
	static function makeBase(global:Context):Context;
	static function escapeHtml(html:String):String;
	static function escapeJs(js:String):String;
	static var helpers : { };
	static var filters : { };
}
extern class Dustjs-linkedinTopLevel {
	static function register(name:String, tmpl:Template):Void;
	static function compile(source:String, name:String, ?strip:Bool):String;
	static function compileFn(source:String, ?name:String):Template;
	static function loadSource(compiled:String):Template;
	static function render(name:String, context:Dynamic, callback:Dynamic -> String -> Dynamic):Dynamic;
	static function render(name:String, context:Context, callback:Dynamic -> String -> Dynamic):Dynamic;
	static function renderSource(source:String, context:Dynamic):Stream;
	static function renderSource(source:String, context:Context):Stream;
	static function renderSource(source:String, context:Dynamic, callback:Dynamic -> String -> Dynamic):Void;
	static function renderSource(source:String, context:Context, callback:Dynamic -> String -> Dynamic):Void;
	static function stream(name:String, context:Dynamic):Stream;
	static function stream(name:String, context:Context):Stream;
	static function makeBase(global:Dynamic):Context;
	static function makeBase(global:Context):Context;
	static function escapeHtml(html:String):String;
	static function escapeJs(js:String):String;
	static var helpers : { };
	static var filters : { };
}
