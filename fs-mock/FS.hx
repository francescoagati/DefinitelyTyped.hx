typedef Opts = {
	@:optional
	var windows : Bool;
	@:optional
	var drives : Array<String>;
	@:optional
	var root : String;
};
extern class FS {
	function new(content:Dynamic, ?opts:FS.Opts):Void;
	function rename(oldPath:String, newPath:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function renameSync(oldPath:String, newPath:String):Void;
	@:overload(function(path:String, len:Float, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function truncate(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function truncateSync(path:String, ?len:Float):Void;
	@:overload(function(fd:Float, len:Float, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function ftruncate(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function ftruncateSync(fd:Float, ?len:Float):Void;
	function chown(path:String, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function chownSync(path:String, uid:Float, gid:Float):Void;
	function fchown(fd:Float, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	function lchown(path:String, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function lchownSync(path:String, uid:Float, gid:Float):Void;
	@:overload(function(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function chmod(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(path:String, mode:String):Void { })
	function chmodSync(path:String, mode:Float):Void;
	@:overload(function(fd:Float, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function fchmod(fd:Float, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(fd:Float, mode:String):Void { })
	function fchmodSync(fd:Float, mode:Float):Void;
	@:overload(function(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function lchmod(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(path:String, mode:String):Void { })
	function lchmodSync(path:String, mode:Float):Void;
	function stat(path:String, ?callback:NodeJS.ErrnoException -> fs.Stats -> Dynamic):Void;
	function lstat(path:String, ?callback:NodeJS.ErrnoException -> fs.Stats -> Dynamic):Void;
	function fstat(fd:Float, ?callback:NodeJS.ErrnoException -> fs.Stats -> Dynamic):Void;
	function statSync(path:String):fs.Stats;
	function lstatSync(path:String):fs.Stats;
	function fstatSync(fd:Float):fs.Stats;
	function link(srcpath:String, dstpath:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function linkSync(srcpath:String, dstpath:String):Void;
	function symlink(srcpath:String, dstpath:String, ?type:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function symlinkSync(srcpath:String, dstpath:String, ?type:String):Void;
	function readlink(path:String, ?callback:NodeJS.ErrnoException -> String -> Dynamic):Void;
	function readlinkSync(path:String):String;
	@:overload(function(path:String, cache:{ }, callback:NodeJS.ErrnoException -> String -> Dynamic):Void { })
	function realpath(path:String, ?callback:NodeJS.ErrnoException -> String -> Dynamic):Void;
	function realpathSync(path:String, ?cache:{ }):String;
	function unlink(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function unlinkSync(path:String):Void;
	function rmdir(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function rmdirSync(path:String):Void;
	@:overload(function(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	@:overload(function(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function mkdir(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(path:String, ?mode:String):Void { })
	function mkdirSync(path:String, ?mode:Float):Void;
	function readdir(path:String, ?callback:NodeJS.ErrnoException -> Array<String> -> Void):Void;
	function readdirSync(path:String):Array<String>;
	function close(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function closeSync(fd:Float):Void;
	@:overload(function(path:String, flags:String, mode:Float, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void { })
	@:overload(function(path:String, flags:String, mode:String, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void { })
	function open(path:String, flags:String, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void;
	@:overload(function(path:String, flags:String, ?mode:String):Float { })
	function openSync(path:String, flags:String, ?mode:Float):Float;
	@:overload(function(path:String, atime:Date, mtime:Date, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function utimes(path:String, atime:Float, mtime:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(path:String, atime:Date, mtime:Date):Void { })
	function utimesSync(path:String, atime:Float, mtime:Float):Void;
	@:overload(function(fd:Float, atime:Date, mtime:Date, ?callback:?NodeJS.ErrnoException -> Void):Void { })
	function futimes(fd:Float, atime:Float, mtime:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	@:overload(function(fd:Float, atime:Date, mtime:Date):Void { })
	function futimesSync(fd:Float, atime:Float, mtime:Float):Void;
	function fsync(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	function fsyncSync(fd:Float):Void;
	function write(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:NodeJS.ErrnoException -> Float -> Buffer -> Void):Void;
	function writeSync(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float):Float;
	function read(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:NodeJS.ErrnoException -> Float -> Buffer -> Void):Void;
	function readSync(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float):Float;
	@:overload(function(filename:String, options:{ var encoding : String; @:optional
	var flag : String; }, callback:NodeJS.ErrnoException -> String -> Void):Void { })
	@:overload(function(filename:String, options:{ @:optional
	var flag : String; }, callback:NodeJS.ErrnoException -> Buffer -> Void):Void { })
	@:overload(function(filename:String, callback:NodeJS.ErrnoException -> Buffer -> Void):Void { })
	function readFile(filename:String, encoding:String, callback:NodeJS.ErrnoException -> String -> Void):Void;
	@:overload(function(filename:String, options:{ var encoding : String; @:optional
	var flag : String; }):String { })
	@:overload(function(filename:String, ?options:{ @:optional
	var flag : String; }):Buffer { })
	function readFileSync(filename:String, encoding:String):String;
	@:overload(function(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void { })
	@:overload(function(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void { })
	function writeFile(filename:String, data:Dynamic, ?callback:NodeJS.ErrnoException -> Void):Void;
	@:overload(function(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }):Void { })
	function writeFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }):Void;
	@:overload(function(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void { })
	@:overload(function(filename:String, data:Dynamic, ?callback:NodeJS.ErrnoException -> Void):Void { })
	function appendFile(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void;
	@:overload(function(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }):Void { })
	function appendFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }):Void;
	@:overload(function(filename:String, options:{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }, listener:fs.Stats -> fs.Stats -> Void):Void { })
	function watchFile(filename:String, listener:fs.Stats -> fs.Stats -> Void):Void;
	function unwatchFile(filename:String, ?listener:fs.Stats -> fs.Stats -> Void):Void;
	@:overload(function(filename:String, options:{ @:optional
	var persistent : Bool; }, ?listener:String -> String -> Dynamic):fs.FSWatcher { })
	function watch(filename:String, ?listener:String -> String -> Dynamic):fs.FSWatcher;
	function exists(path:String, ?callback:Bool -> Void):Void;
	function existsSync(path:String):Bool;
	@:overload(function(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : String; @:optional
	var bufferSize : Float; }):fs.ReadStream { })
	function createReadStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : Float; @:optional
	var bufferSize : Float; }):fs.ReadStream;
	function createWriteStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var string : String; }):fs.WriteStream;
}
