typedef Charsets = {
	function lookup(mime:String):String;
};
extern class MimeTopLevel {
	static function lookup(path:String):String;
	static function extension(mime:String):String;
	static function load(filepath:String):Void;
	static function define(mimes:Dynamic):Void;
	static var charsets : Charsets;
}
extern class MimeTopLevel {
	static function lookup(path:String):String;
	static function extension(mime:String):String;
	static function load(filepath:String):Void;
	static function define(mimes:Dynamic):Void;
	static var charsets : Charsets;
}
