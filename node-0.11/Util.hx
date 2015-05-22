typedef InspectOptions = {
	@:optional
	var showHidden : Bool;
	@:optional
	var depth : Float;
	@:optional
	var colors : Bool;
	@:optional
	var customInspect : Bool;
};
extern class UtilTopLevel {
	static function format(format:Dynamic, param:haxe.extern.Rest<Dynamic>):String;
	static function deprecate(fn:haxe.Constraints.Function, msg:String):haxe.Constraints.Function;
	static function debuglog(set:String):haxe.Constraints.Function;
	static function inspect(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static function inspect(object:Dynamic, options:InspectOptions):String;
	static function isArray(object:Dynamic):Bool;
	static function isBoolean(arg:Dynamic):Bool;
	static function isNull(arg:Dynamic):Bool;
	static function isNullOrUndefined(arg:Dynamic):Bool;
	static function isNumber(arg:Dynamic):Bool;
	static function isString(arg:Dynamic):Bool;
	static function isSymbol(arg:Dynamic):Bool;
	static function isUndefined(arg:Dynamic):Bool;
	static function isRegExp(arg:Dynamic):Bool;
	static function isObject(arg:Dynamic):Bool;
	static function isDate(arg:Dynamic):Bool;
	static function isError(arg:Dynamic):Bool;
	static function isFunction(arg:Dynamic):Bool;
	static function isPrimitive(arg:Dynamic):Bool;
	static function isBuffer(arg:Dynamic):Bool;
	static function log(arg:haxe.extern.Rest<Dynamic>):Void;
	static function inherits(constructor:Dynamic, superConstructor:Dynamic):Void;
	static function p(arg:haxe.extern.Rest<Dynamic>):Void;
	static function exec(arg:haxe.extern.Rest<Dynamic>):Void;
	static function print(arg:haxe.extern.Rest<Dynamic>):Void;
	static function puts(arg:haxe.extern.Rest<Dynamic>):Void;
	static function debug(string:String):Void;
	static function error(arg:haxe.extern.Rest<Dynamic>):Void;
}
