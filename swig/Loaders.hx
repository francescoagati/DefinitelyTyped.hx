extern class LoadersTopLevel {
	static function fs(?basepath:String, ?encoding:String):TemplateLoader;
	static function memory(mapping:Dynamic, ?basepath:String):TemplateLoader;
	static var version : String;
	static function setDefaults(options:SwigOptions):Void;
	static function setDefaultTZOffset(offset:Float):Void;
	static function setFilter(name:String, method:Dynamic -> haxe.extern.Rest<Dynamic> -> String):Void;
	static function setTag(name:String, parse:?String -> ?String -> ?Dynamic -> ?lexer.TYPES -> ?Dynamic -> ?Dynamic -> ?Swig -> Bool, compile:??String -> ?Dynamic -> ?Dynamic -> ?String -> String -> ?Array<Dynamic> -> ?String -> ?Dynamic -> ?Dynamic -> ?String -> String, ?ends:Bool, ?blockLevel:Bool):Void;
	static function setExtension(name:String, object:Dynamic):Void;
	static function parseFile(pathName:String, ?options:Dynamic):parser.ParseReturn;
	static function precompile(source:String, ?options:SwigOptions):Dynamic;
	static function compile(source:String, ?options:SwigOptions):?Dynamic -> String;
	static function compileFile(pathname:String, options:SwigOptions, cb:Error -> ?Dynamic -> String -> Void):Void;
	static function compileFile(pathname:String, ?options:SwigOptions):?Dynamic -> String;
	static function render(source:String, ?options:SwigOptions):String;
	static function renderFile(pathName:String, locals:Dynamic, cb:Error -> String -> Void):Void;
	static function renderFile(pathName:String, ?locals:Dynamic):String;
	static function run(templateFn:haxe.Constraints.Function, ?locals:Dynamic, ?filePath:String):String;
	static function invalidateCache():Void;
}
