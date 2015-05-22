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
	static function debug(string:String):Void;
	static function error(param:haxe.extern.Rest<Dynamic>):Void;
	static function puts(param:haxe.extern.Rest<Dynamic>):Void;
	static function print(param:haxe.extern.Rest<Dynamic>):Void;
	static function log(string:String):Void;
	static function inspect(object:Dynamic, ?showHidden:Bool, ?depth:Float, ?color:Bool):String;
	static function inspect(object:Dynamic, options:InspectOptions):String;
	static function isArray(object:Dynamic):Bool;
	static function isRegExp(object:Dynamic):Bool;
	static function isDate(object:Dynamic):Bool;
	static function isError(object:Dynamic):Bool;
	static function inherits(constructor:Dynamic, superConstructor:Dynamic):Void;
}
