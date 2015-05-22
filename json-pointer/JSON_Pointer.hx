typedef JSON_PointerWrap = {
	function get(pointer:String):Dynamic;
	function set(pointer:String, value:Dynamic):Void;
	function remove(pointer:String):Void;
	function dict():Dynamic;
	function walk(iterator:Dynamic -> String -> Void):Void;
	function has(pointer:String):Bool;
};
extern class JSON_PointerTopLevel {
	static function get(object:Dynamic, pointer:String):Dynamic;
	static function set(object:Dynamic, pointer:String, value:Dynamic):Void;
	static function remove(object:Dynamic, pointer:String):Void;
	static function dict(object:Dynamic):Dynamic;
	static function walk(object:Dynamic, iterator:Dynamic -> String -> Void):Void;
	static function has(object:Dynamic, pointer:String):Bool;
	static function escape(str:String):String;
	static function unescape(str:String):String;
	static function parse(str:String):Array<String>;
	static function compile(str:Array<String>):String;
}
