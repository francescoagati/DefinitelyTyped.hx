extern class PosixTopLevel {
	static function normalize(p:String):String;
	static function join(paths:haxe.extern.Rest<Dynamic>):String;
	static function resolve(pathSegments:haxe.extern.Rest<Dynamic>):String;
	static function isAbsolute(p:String):Bool;
	static function relative(from:String, to:String):String;
	static function dirname(p:String):String;
	static function basename(p:String, ?ext:String):String;
	static function extname(p:String):String;
	static var sep : String;
	static var delimiter : String;
	static function parse(p:String):ParsedPath;
	static function format(pP:ParsedPath):String;
}
