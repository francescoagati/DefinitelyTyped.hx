extern class ClipboardTopLevel {
	static function readText(?type:String):String;
	static function writeText(text:String, ?type:String):Void;
	static var readImage : Dynamic;
	static var writeImage : Dynamic;
	static function clear(?type:String):Void;
	static function has(format:String, ?type:String):Bool;
	static function read(format:String, ?type:String):Dynamic;
}
