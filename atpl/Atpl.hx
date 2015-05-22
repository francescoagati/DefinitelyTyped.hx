extern class AtplTopLevel {
	static function compile(templateString:String, options:Dynamic):Dynamic -> String;
	static function __express(filename:String, options:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	static function registerExtension(items:Dynamic):Void;
	static function registerTags(items:Dynamic):Void;
	static function registerFunctions(items:Dynamic):Void;
	static function registerFilters(items:Dynamic):Void;
	static function registerTests(items:Dynamic):Void;
	static function renderFileSync(viewsPath:String, filename:String, parameters:Dynamic, cache:Bool):String;
	static function renderFile(viewsPath:String, filename:String, parameters:Dynamic, cache:Bool, done:Error -> ?String -> Void):Void;
}
extern class AtplTopLevel {
	static function compile(templateString:String, options:Dynamic):Dynamic -> String;
	static function __express(filename:String, options:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	static function registerExtension(items:Dynamic):Void;
	static function registerTags(items:Dynamic):Void;
	static function registerFunctions(items:Dynamic):Void;
	static function registerFilters(items:Dynamic):Void;
	static function registerTests(items:Dynamic):Void;
	static function renderFileSync(viewsPath:String, filename:String, parameters:Dynamic, cache:Bool):String;
	static function renderFile(viewsPath:String, filename:String, parameters:Dynamic, cache:Bool, done:Error -> ?String -> Void):Void;
}
