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
	>events.EventEmitter,
	function close():Void;
};
typedef ReadStream = {
	>stream.Readable,
};
typedef WriteStream = {
	>stream.Writable,
};
extern class FsTopLevel {
	static function rename(oldPath:String, newPath:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function renameSync(oldPath:String, newPath:String):Void;
	static function truncate(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function truncate(path:String, len:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function truncateSync(path:String, ?len:Float):Void;
	static function ftruncate(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function ftruncate(fd:Float, len:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function ftruncateSync(fd:Float, ?len:Float):Void;
	static function chown(path:String, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function chownSync(path:String, uid:Float, gid:Float):Void;
	static function fchown(fd:Float, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	static function lchown(path:String, uid:Float, gid:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function lchownSync(path:String, uid:Float, gid:Float):Void;
	static function chmod(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function chmod(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function chmodSync(path:String, mode:Float):Void;
	static function chmodSync(path:String, mode:String):Void;
	static function fchmod(fd:Float, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function fchmod(fd:Float, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function fchmodSync(fd:Float, mode:Float):Void;
	static function fchmodSync(fd:Float, mode:String):Void;
	static function lchmod(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function lchmod(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function lchmodSync(path:String, mode:Float):Void;
	static function lchmodSync(path:String, mode:String):Void;
	static function stat(path:String, ?callback:NodeJS.ErrnoException -> Stats -> Dynamic):Void;
	static function lstat(path:String, ?callback:NodeJS.ErrnoException -> Stats -> Dynamic):Void;
	static function fstat(fd:Float, ?callback:NodeJS.ErrnoException -> Stats -> Dynamic):Void;
	static function statSync(path:String):Stats;
	static function lstatSync(path:String):Stats;
	static function fstatSync(fd:Float):Stats;
	static function link(srcpath:String, dstpath:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function linkSync(srcpath:String, dstpath:String):Void;
	static function symlink(srcpath:String, dstpath:String, ?type:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function symlinkSync(srcpath:String, dstpath:String, ?type:String):Void;
	static function readlink(path:String, ?callback:NodeJS.ErrnoException -> String -> Dynamic):Void;
	static function readlinkSync(path:String):String;
	static function realpath(path:String, ?callback:NodeJS.ErrnoException -> String -> Dynamic):Void;
	static function realpath(path:String, cache:{ }, callback:NodeJS.ErrnoException -> String -> Dynamic):Void;
	static function realpathSync(path:String, ?cache:{ }):String;
	static function unlink(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function unlinkSync(path:String):Void;
	static function rmdir(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function rmdirSync(path:String):Void;
	static function mkdir(path:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function mkdir(path:String, mode:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function mkdir(path:String, mode:String, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function mkdirSync(path:String, ?mode:Float):Void;
	static function mkdirSync(path:String, ?mode:String):Void;
	static function readdir(path:String, ?callback:NodeJS.ErrnoException -> Array<String> -> Void):Void;
	static function readdirSync(path:String):Array<String>;
	static function close(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function closeSync(fd:Float):Void;
	static function open(path:String, flags:String, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void;
	static function open(path:String, flags:String, mode:Float, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void;
	static function open(path:String, flags:String, mode:String, ?callback:NodeJS.ErrnoException -> Float -> Dynamic):Void;
	static function openSync(path:String, flags:String, ?mode:Float):Float;
	static function openSync(path:String, flags:String, ?mode:String):Float;
	static function utimes(path:String, atime:Float, mtime:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function utimes(path:String, atime:Date, mtime:Date, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function utimesSync(path:String, atime:Float, mtime:Float):Void;
	static function utimesSync(path:String, atime:Date, mtime:Date):Void;
	static function futimes(fd:Float, atime:Float, mtime:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function futimes(fd:Float, atime:Date, mtime:Date, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function futimesSync(fd:Float, atime:Float, mtime:Float):Void;
	static function futimesSync(fd:Float, atime:Date, mtime:Date):Void;
	static function fsync(fd:Float, ?callback:?NodeJS.ErrnoException -> Void):Void;
	static function fsyncSync(fd:Float):Void;
	static function write(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:NodeJS.ErrnoException -> Float -> Buffer -> Void):Void;
	static function writeSync(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float):Float;
	static function read(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float, ?callback:NodeJS.ErrnoException -> Float -> Buffer -> Void):Void;
	static function readSync(fd:Float, buffer:Buffer, offset:Float, length:Float, position:Float):Float;
	static function readFile(filename:String, encoding:String, callback:NodeJS.ErrnoException -> String -> Void):Void;
	static function readFile(filename:String, options:{ var encoding : String; @:optional
	var flag : String; }, callback:NodeJS.ErrnoException -> String -> Void):Void;
	static function readFile(filename:String, options:{ @:optional
	var flag : String; }, callback:NodeJS.ErrnoException -> Buffer -> Void):Void;
	static function readFile(filename:String, callback:NodeJS.ErrnoException -> Buffer -> Void):Void;
	static function readFileSync(filename:String, encoding:String):String;
	static function readFileSync(filename:String, options:{ var encoding : String; @:optional
	var flag : String; }):String;
	static function readFileSync(filename:String, ?options:{ @:optional
	var flag : String; }):Buffer;
	static function writeFile(filename:String, data:Dynamic, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function writeFile(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function writeFile(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }):Void;
	static function appendFile(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function appendFile(filename:String, data:Dynamic, options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function appendFile(filename:String, data:Dynamic, ?callback:NodeJS.ErrnoException -> Void):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; }):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?options:{ @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; }):Void;
	static function watchFile(filename:String, listener:Stats -> Stats -> Void):Void;
	static function watchFile(filename:String, options:{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }, listener:Stats -> Stats -> Void):Void;
	static function unwatchFile(filename:String, ?listener:Stats -> Stats -> Void):Void;
	static function watch(filename:String, ?listener:String -> String -> Dynamic):FSWatcher;
	static function watch(filename:String, options:{ @:optional
	var persistent : Bool; }, ?listener:String -> String -> Dynamic):FSWatcher;
	static function exists(path:String, ?callback:Bool -> Void):Void;
	static function existsSync(path:String):Bool;
	static function createReadStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : Float; @:optional
	var bufferSize : Float; }):ReadStream;
	static function createReadStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : String; @:optional
	var bufferSize : Float; }):ReadStream;
	static function createWriteStream(path:String, ?options:{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var string : String; }):WriteStream;
}
