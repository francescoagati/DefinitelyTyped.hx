typedef Parameters = {
	@:optional
	var id : Dynamic;
	@:optional
	var ref : Dynamic;
	@:optional
	var href : Dynamic;
	@:optional
	var path : Dynamic;
	@:optional
	var debug : Bool;
	@:optional
	var trace : Bool;
	@:optional
	var strict_variables : Bool;
	var data : Dynamic;
};
typedef Template = { };
typedef CompileOptions = {
	var filename : String;
	var settings : Dynamic;
};
extern class TwigTopLevel {
	static function twig(params:Parameters):Template;
	static function extendFilter(name:String, definition:Dynamic -> haxe.extern.Rest<Dynamic> -> String):Void;
	static function extendFunction(name:String, definition:haxe.extern.Rest<Dynamic> -> String):Void;
	static function extendTest(name:String, definition:Dynamic -> Bool):Void;
	static function extendTag(definition:Dynamic):Void;
	static function compile(markup:String, options:CompileOptions):Dynamic -> Dynamic;
	static function renderFile(path:String, options:CompileOptions, fn:Error -> Dynamic -> Void):Void;
	static function __express(path:String, options:CompileOptions, fn:Error -> Dynamic -> Void):Void;
	static function cache(value:Bool):Void;
}
extern class TwigTopLevel {
	static function twig(params:Parameters):Template;
	static function extendFilter(name:String, definition:Dynamic -> haxe.extern.Rest<Dynamic> -> String):Void;
	static function extendFunction(name:String, definition:haxe.extern.Rest<Dynamic> -> String):Void;
	static function extendTest(name:String, definition:Dynamic -> Bool):Void;
	static function extendTag(definition:Dynamic):Void;
	static function compile(markup:String, options:CompileOptions):Dynamic -> Dynamic;
	static function renderFile(path:String, options:CompileOptions, fn:Error -> Dynamic -> Void):Void;
	static function __express(path:String, options:CompileOptions, fn:Error -> Dynamic -> Void):Void;
	static function cache(value:Bool):Void;
}
