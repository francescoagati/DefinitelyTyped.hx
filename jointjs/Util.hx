extern class UtilTopLevel {
	static function uuid():String;
	static function guid(obj:Dynamic):String;
	static function mixin(objects:Array<Dynamic>):Dynamic;
	static function supplement(objects:Array<Dynamic>):Dynamic;
	static function deepMixin(objects:Array<Dynamic>):Dynamic;
	static function deepSupplement(objects:Array<Dynamic>, ?defaultIndicator:Dynamic):Dynamic;
}
