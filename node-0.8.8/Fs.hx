typedef Stats = {
	function isFile():Bool;
	function isDirectory():Bool;
	function isBlockDevice():Bool;
	function isCharacterDevice():Bool;
	function isSymbolicLink():Bool;
	function isFIFO():Bool;
	function isSocket():Bool;
	var dev : Float;
	var ino : Float;
	var mode : Float;
	var nlink : Float;
	var uid : Float;
	var gid : Float;
	var rdev : Float;
	var size : Float;
	var blksize : Float;
	var blocks : Float;
	var atime : Date;
	var mtime : Date;
	var ctime : Date;
};
typedef FSWatcher = {
	function close():Void;
};
typedef ReadStream = {
	>stream.ReadableStream,
};
typedef WriteStream = {
	>stream.WritableStream,
};
extern class FsTopLevel {
	static function rename(oldPath:String, newPath:String, ?callback:haxe.Constraints.Function):Void;
	static function renameSync(oldPath:String, newPath:String):Void;
	static function truncate(fd:String, len:Float, ?callback:haxe.Constraints.Function):Void;
	static function truncateSync(fd:String, len:Float):Void;
	static function chown(path:String, uid:Float, gid:Float, ?callback:haxe.Constraints.Function):Void;
	static function chownSync(path:String, uid:Float, gid:Float):Void;
	static function fchown(fd:String, uid:Float, gid:Float, ?callback:haxe.Constraints.Function):Void;
	static function fchownSync(fd:String, uid:Float, gid:Float):Void;
	static function lchown(path:String, uid:Float, gid:Float, ?callback:haxe.Constraints.Function):Void;
	static function lchownSync(path:String, uid:Float, gid:Float):Void;
	static function chmod(path:String, mode:String, ?callback:haxe.Constraints.Function):Void;
	static function chmodSync(path:String, mode:String):Void;
	static function fchmod(fd:String, mode:String, ?callback:haxe.Constraints.Function):Void;
	static function fchmodSync(fd:String, mode:String):Void;
	static function lchmod(path:String, mode:String, ?callback:haxe.Constraints.Function):Void;
	static function lchmodSync(path:String, mode:String):Void;
	static function stat(path:String, ?callback:ErrnoException -> Stats -> Dynamic):Stats;
	static function lstat(path:String, ?callback:ErrnoException -> Stats -> Dynamic):Stats;
	static function fstat(fd:String, ?callback:ErrnoException -> Stats -> Dynamic):Stats;
	static function statSync(path:String):Stats;
	static function lstatSync(path:String):Stats;
	static function fstatSync(fd:String):Stats;
	static function link(srcpath:String, dstpath:String, ?callback:haxe.Constraints.Function):Void;
	static function linkSync(srcpath:String, dstpath:String):Void;
	static function symlink(srcpath:String, dstpath:String, ?type:String, ?callback:haxe.Constraints.Function):Void;
	static function symlinkSync(srcpath:String, dstpath:String, ?type:String):Void;
	static function readlink(path:String, ?callback:ErrnoException -> String -> Dynamic):Void;
	static function realpath(path:String, ?callback:ErrnoException -> String -> Dynamic):Void;
	static function realpath(path:String, cache:String, callback:ErrnoException -> String -> Dynamic):Void;
	static function realpathSync(path:String, ?cache:String):Void;
	static function unlink(path:String, ?callback:haxe.Constraints.Function):Void;
	static function unlinkSync(path:String):Void;
	static function rmdir(path:String, ?callback:haxe.Constraints.Function):Void;
	static function rmdirSync(path:String):Void;
	static function mkdir(path:String, ?mode:String, ?callback:haxe.Constraints.Function):Void;
	static function mkdirSync(path:String, ?mode:String):Void;
	static function readdir(path:String, ?callback:ErrnoException -> Array<String> -> Void):Void;
	static function readdirSync(path:String):Array<String>;
	static function close(fd:String, ?callback:haxe.Constraints.Function):Void;
	static function closeSync(fd:String):Void;
	static function open(path:String, flags:String, ?mode:String, ?callback:ErrnoException -> String -> Dynamic):Void;
	static function openSync(path:String, flags:String, ?mode:String):Void;
	static function utimes(path:String, atime:Float, mtime:Float, ?callback:haxe.Constraints.Function):Void;
	static function utimesSync(path:String, atime:Float, mtime:Float):Void;
	static function futimes(fd:String, atime:Float, mtime:Float, ?callback:haxe.Constraints.Function):Void;
	static function futimesSync(fd:String, atime:Float, mtime:Float):Void;
	static function fsync(fd:String, ?callback:haxe.Constraints.Function):Void;
	static function fsyncSync(fd:String):Void;
	static function write(fd:String, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> Buffer -> Dynamic):Void;
	static function writeSync(fd:String, buffer:Buffer, offset:Float, length:Float, position:Float):Void;
	static function read(fd:String, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> Buffer -> Void):Void;
	static function readSync(fd:String, buffer:Buffer, offset:Float, length:Float, position:Float):Array<Dynamic>;
	static function readFile(filename:String, encoding:String, callback:ErrnoException -> String -> Void):Void;
	static function readFile(filename:String, callback:ErrnoException -> Buffer -> Void):Void;
	static function readFileSync(filename:String):Buffer;
	static function readFileSync(filename:String, encoding:String):String;
	static function writeFile(filename:String, data:Dynamic, ?callback:Dynamic -> Void):Void;
	static function writeFile(filename:String, data:Dynamic, ?encoding:String, ?callback:Dynamic -> Void):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function appendFile(filename:String, data:Dynamic, ?encoding:String, ?callback:haxe.Constraints.Function):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function watchFile(filename:String, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function watchFile(filename:String, options:{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function unwatchFile(filename:String, ?listener:Stats):Void;
	static function watch(filename:String, ?options:{ @:optional
	var persistent : Bool; }, ?listener:String -> String -> Dynamic):FSWatcher;
	static function exists(path:String, ?callback:Bool -> Void):Void;
	static function existsSync(path:String):Bool;
	static function createReadStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : Float; @:optional
	var bufferSize : Float; }):ReadStream;
	static function createWriteStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var string : String; }):WriteStream;
}
