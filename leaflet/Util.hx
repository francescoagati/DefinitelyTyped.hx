extern class UtilTopLevel {
	static function extend(dest:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	static function bind<T:(haxe.Constraints.Function)>(fn:T, obj:Dynamic):T;
	static function stamp(obj:Dynamic):String;
	static function limitExecByInterval<T:(haxe.Constraints.Function)>(fn:T, time:Float, ?context:Dynamic):T;
	static function falseFn():Void -> Bool;
	static function formatNum(num:Float, digits:Float):Float;
	static function splitWords(str:String):Array<String>;
	static function setOptions(obj:Dynamic, options:Dynamic):Dynamic;
	static function getParamString(obj:Dynamic):String;
	static function template(str:String, data:Dynamic):String;
	static function isArray(obj:Dynamic):Bool;
	static function trim(str:String):String;
	static var emptyImageUrl : String;
}
