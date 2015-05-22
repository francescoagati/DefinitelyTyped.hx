extern class Swig {
	function new(?options:SwigOptions):Void;
	function setFilter(name:String, method:Dynamic -> haxe.extern.Rest<Dynamic> -> String):Void;
	function setTag(name:String, parse:?String -> ?String -> ?Dynamic -> ?lexer.TYPES -> ?Dynamic -> ?Dynamic -> ?Swig -> Bool, compile:??String -> ?Dynamic -> ?Dynamic -> ?String -> String -> ?Array<Dynamic> -> ?String -> ?Dynamic -> ?Dynamic -> ?String -> String, ?ends:Bool, ?blockLevel:Bool):Void;
	function setExtension(name:String, object:Dynamic):Void;
	function parseFile(pathName:String, ?options:Dynamic):parser.ParseReturn;
	function precompile(source:String, ?options:SwigOptions):Dynamic;
	function compile(source:String, ?options:SwigOptions):?Dynamic -> String;
	@:overload(function(pathname:String, ?options:SwigOptions):?Dynamic -> String { })
	function compileFile(pathname:String, options:SwigOptions, cb:Error -> ?Dynamic -> String -> Void):Void;
	function render(source:String, ?options:SwigOptions):String;
	@:overload(function(pathName:String, ?locals:Dynamic):String { })
	function renderFile(pathName:String, locals:Dynamic, cb:Error -> String -> Void):Void;
	function run(templateFn:haxe.Constraints.Function, ?locals:Dynamic, ?filePath:String):String;
	function invalidateCache():Void;
	var loaders : Dynamic;
}
