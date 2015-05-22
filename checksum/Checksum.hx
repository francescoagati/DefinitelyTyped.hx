typedef ChecksumOptions = {
	@:optional
	var algorithm : String;
};
extern class ChecksumTopLevel {
	static function file(filename:String, callback:Error -> String -> Void):Void;
	static function file(filename:String, options:ChecksumOptions, callback:Error -> String -> Void):Void;
	static function checksum(value:Dynamic, ?options:checksum.ChecksumOptions):String;
}
extern class ChecksumTopLevel {
	static function file(filename:String, callback:Error -> String -> Void):Void;
	static function file(filename:String, options:ChecksumOptions, callback:Error -> String -> Void):Void;
	static function checksum(value:Dynamic, ?options:checksum.ChecksumOptions):String;
}
extern class ChecksumTopLevel {
	static function file(filename:String, callback:Error -> String -> Void):Void;
	static function file(filename:String, options:ChecksumOptions, callback:Error -> String -> Void):Void;
	static function checksum(value:Dynamic, ?options:checksum.ChecksumOptions):String;
}
