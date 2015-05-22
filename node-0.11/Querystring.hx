extern class QuerystringTopLevel {
	static function stringify(obj:Dynamic, ?sep:String, ?eq:String):String;
	static function parse(str:String, ?sep:String, ?eq:String, ?options:{ @:optional
	var maxKeys : Float; }):Dynamic;
	static function escape(str:String):String;
	static function unescape(str:String):String;
}
