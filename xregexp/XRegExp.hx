extern class XRegExpTopLevel {
	static function addToken(regex:js.RegExp, handler:RegExpExecArray -> String -> String, ?options:TokenOpts):Void;
	static function build(pattern:String, subs:Array<String>, ?flags:String):js.RegExp;
	static function cache(pattern:String, ?flags:String):js.RegExp;
	static function escape(str:String):String;
	static function exec(str:String, regex:js.RegExp, ?pos:Float, ?sticky:Bool):RegExpExecArray;
	static function forEach(str:String, regex:js.RegExp, callback:RegExpExecArray -> Float -> String -> js.RegExp -> Void, ?context:Dynamic):Dynamic;
	static function globalize(regex:js.RegExp):js.RegExp;
	static function install(options:String):Void;
	static function install(options:Dynamic):Void;
	static function isInstalled(feature:String):Bool;
	static function isRegExp(value:Dynamic):Bool;
	static function matchChain(str:String, chain:Array<js.RegExp>):Array<String>;
	static function matchChain(str:String, chain:Array<{ var regex : js.RegExp; var backref : String; }>):Array<String>;
	static function matchChain(str:String, chain:Array<{ var regex : js.RegExp; var backref : Float; }>):Array<String>;
	static function matchRecursive(str:String, left:String, right:String, ?flags:String, ?options:Dynamic):Array<String>;
	static function replace(str:String, search:String, replacement:String, ?scope:String):String;
	static function replace(str:String, search:String, replacement:haxe.Constraints.Function, ?scope:String):String;
	static function replace(str:String, search:js.RegExp, replacement:String, ?scope:String):String;
	static function replace(str:String, search:js.RegExp, replacement:haxe.Constraints.Function, ?scope:String):String;
	static function split(str:String, separator:String, ?limit:Float):Array<String>;
	static function split(str:String, separator:js.RegExp, ?limit:Float):Array<String>;
	static function test(str:String, regex:js.RegExp, ?pos:Float, ?sticky:Bool):Bool;
	static function uninstall(options:Dynamic):Void;
	static function uninstall(options:String):Void;
	static function union(patterns:Array<String>, ?flags:String):js.RegExp;
	static var version : String;
}
