extern class LineReader {
	function new(filename:String, ?bufferSize:Float):Void;
	function getBufferAndSetCurrentPosition(position:Float):Float;
	function hasNextLine():Bool;
	function getNextLine():String;
}
extern class WrenchTopLevel {
	static function readdirSyncRecursive(baseDir:String):Array<String>;
	static function rmdirSyncRecursive(path:String, ?failSilent:Bool):Void;
	static function copyDirSyncRecursive(sourceDir:String, newDirLocation:String, ?opts:{ @:optional
	var preserve : Bool; }):Void;
	static function chmodSyncRecursive(sourceDir:String, filemode:Float):Void;
	static function chownSyncRecursive(sourceDir:String, uid:Float, gid:Float):Void;
	static function mkdirSyncRecursivefunction(path:String, mode:Float):Void;
	static function readdirRecursive(baseDir:String, fn:Error -> Array<String> -> Void):Void;
	static function rmdirRecursive(path:String, fn:Error -> Void):Void;
	static function copyDirRecursive(srcDir:String, newDir:String, fn:Error -> Void):Void;
}
extern class WrenchTopLevel {
	static function readdirSyncRecursive(baseDir:String):Array<String>;
	static function rmdirSyncRecursive(path:String, ?failSilent:Bool):Void;
	static function copyDirSyncRecursive(sourceDir:String, newDirLocation:String, ?opts:{ @:optional
	var preserve : Bool; }):Void;
	static function chmodSyncRecursive(sourceDir:String, filemode:Float):Void;
	static function chownSyncRecursive(sourceDir:String, uid:Float, gid:Float):Void;
	static function mkdirSyncRecursivefunction(path:String, mode:Float):Void;
	static function readdirRecursive(baseDir:String, fn:Error -> Array<String> -> Void):Void;
	static function rmdirRecursive(path:String, fn:Error -> Void):Void;
	static function copyDirRecursive(srcDir:String, newDir:String, fn:Error -> Void):Void;
}
