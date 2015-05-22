extern class CookieTopLevel {
	static function set(key:String, value:String, ?options:Dynamic):Void;
	static function set(obj:Dynamic, ?options:Dynamic):Void;
	static function remove(key:String):Void;
	static function remove(keys:Array<String>):Void;
	static function remove(args:haxe.extern.Rest<String>):Void;
	static function empty():Void;
	static function get(key:String, ?fallback:String):String;
	static function get(keys:Array<String>, ?fallback:String):String;
	static function all():Dynamic;
	static function enabled():Bool;
}
