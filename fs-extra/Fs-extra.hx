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
extern class ReadStream extends stream.Readable {

}
extern class WriteStream extends stream.Writable {

}
typedef OpenOptions = {
	@:optional
	var encoding : String;
	@:optional
	var flag : String;
};
typedef ReadStreamOptions = {
	@:optional
	var flags : String;
	@:optional
	var encoding : String;
	@:optional
	var fd : Float;
	@:optional
	var mode : Float;
	@:optional
	var bufferSize : Float;
};
typedef WriteStreamOptions = {
	@:optional
	var flags : String;
	@:optional
	var encoding : String;
	@:optional
	var string : String;
};
extern class Fs-extraTopLevel {
	static function copy(src:String, dest:String, ?callback:Error -> Void):Void;
	static function copy(src:String, dest:String, filter:String -> Bool, ?callback:Error -> Void):Void;
	static function copySync(src:String, dest:String):Void;
	static function copySync(src:String, dest:String, filter:String -> Bool):Void;
	static function createFile(file:String, ?callback:Error -> Void):Void;
	static function createFileSync(file:String):Void;
	static function mkdirs(dir:String, ?callback:Error -> Void):Void;
	static function mkdirp(dir:String, ?callback:Error -> Void):Void;
	static function mkdirsSync(dir:String):Void;
	static function mkdirpSync(dir:String):Void;
	static function outputFile(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputFileSync(file:String, data:Dynamic):Void;
	static function outputJson(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputJSON(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputJsonSync(file:String, data:Dynamic):Void;
	static function outputJSONSync(file:String, data:Dynamic):Void;
	static function readJson(file:String, ?callback:Error -> Void):Void;
	static function readJson(file:String, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function readJSON(file:String, ?callback:Error -> Void):Void;
	static function readJSON(file:String, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function readJsonSync(file:String, ?options:OpenOptions):Void;
	static function readJSONSync(file:String, ?options:OpenOptions):Void;
	static function remove(dir:String, ?callback:Error -> Void):Void;
	static function removeSync(dir:String):Void;
	static function writeJson(file:String, object:Dynamic, ?callback:Error -> Void):Void;
	static function writeJson(file:String, object:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeJSON(file:String, object:Dynamic, ?callback:Error -> Void):Void;
	static function writeJSON(file:String, object:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeJsonSync(file:String, object:Dynamic, ?options:OpenOptions):Void;
	static function writeJSONSync(file:String, object:Dynamic, ?options:OpenOptions):Void;
	static function rename(oldPath:String, newPath:String, ?callback:Error -> Void):Void;
	static function renameSync(oldPath:String, newPath:String):Void;
	static function truncate(fd:Float, len:Float, ?callback:Error -> Void):Void;
	static function truncateSync(fd:Float, len:Float):Void;
	static function chown(path:String, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function chownSync(path:String, uid:Float, gid:Float):Void;
	static function fchown(fd:Float, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	static function lchown(path:String, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function lchownSync(path:String, uid:Float, gid:Float):Void;
	static function chmod(path:String, mode:Float, ?callback:Error -> Void):Void;
	static function chmod(path:String, mode:String, ?callback:Error -> Void):Void;
	static function chmodSync(path:String, mode:Float):Void;
	static function chmodSync(path:String, mode:String):Void;
	static function fchmod(fd:Float, mode:Float, ?callback:Error -> Void):Void;
	static function fchmod(fd:Float, mode:String, ?callback:Error -> Void):Void;
	static function fchmodSync(fd:Float, mode:Float):Void;
	static function fchmodSync(fd:Float, mode:String):Void;
	static function lchmod(path:String, mode:String, ?callback:Error -> Void):Void;
	static function lchmod(path:String, mode:Float, ?callback:Error -> Void):Void;
	static function lchmodSync(path:String, mode:Float):Void;
	static function lchmodSync(path:String, mode:String):Void;
	static function stat(path:String, ?callback:Error -> Stats -> Void):Void;
	static function lstat(path:String, ?callback:Error -> Stats -> Void):Void;
	static function fstat(fd:Float, ?callback:Error -> Stats -> Void):Void;
	static function statSync(path:String):Stats;
	static function lstatSync(path:String):Stats;
	static function fstatSync(fd:Float):Stats;
	static function link(srcpath:String, dstpath:String, ?callback:Error -> Void):Void;
	static function linkSync(srcpath:String, dstpath:String):Void;
	static function symlink(srcpath:String, dstpath:String, ?type:String, ?callback:Error -> Void):Void;
	static function symlinkSync(srcpath:String, dstpath:String, ?type:String):Void;
	static function readlink(path:String, ?callback:Error -> String -> Void):Void;
	static function realpath(path:String, ?callback:Error -> String -> Void):Void;
	static function realpath(path:String, cache:String, callback:Error -> String -> Void):Void;
	static function realpathSync(path:String, ?cache:Bool):String;
	static function unlink(path:String, ?callback:Error -> Void):Void;
	static function unlinkSync(path:String):Void;
	static function rmdir(path:String, ?callback:Error -> Void):Void;
	static function rmdirSync(path:String):Void;
	static function mkdir(path:String, ?mode:Float, ?callback:Error -> Void):Void;
	static function mkdir(path:String, ?mode:String, ?callback:Error -> Void):Void;
	static function mkdirSync(path:String, ?mode:Float):Void;
	static function mkdirSync(path:String, ?mode:String):Void;
	static function readdir(path:String, ?callback:Error -> Array<String> -> Void):Void;
	static function readdirSync(path:String):Array<String>;
	static function close(fd:Float, ?callback:Error -> Void):Void;
	static function closeSync(fd:Float):Void;
	static function open(path:String, flags:String, ?mode:String, ?callback:Error -> Float -> Void):Void;
	static function openSync(path:String, flags:String, ?mode:String):Float;
	static function utimes(path:String, atime:Float, mtime:Float, ?callback:Error -> Void):Void;
	static function utimesSync(path:String, atime:Float, mtime:Float):Void;
	static function futimes(fd:Float, atime:Float, mtime:Float, ?callback:Error -> Void):Void;
	static function futimesSync(fd:Float, atime:Float, mtime:Float):Void;
	static function fsync(fd:Float, ?callback:Error -> Void):Void;
	static function fsyncSync(fd:Float):Void;
	static function write(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> NodeBuffer -> Void):Void;
	static function writeSync(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float):Float;
	static function read(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> NodeBuffer -> Void):Void;
	static function readSync(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float):Float;
	static function readFile(filename:String, encoding:String, callback:Error -> String -> Void):Void;
	static function readFile(filename:String, options:OpenOptions, callback:Error -> String -> Void):Void;
	static function readFile(filename:String, callback:Error -> NodeBuffer -> Void):Void;
	static function readFileSync(filename:String):NodeBuffer;
	static function readFileSync(filename:String, encoding:String):String;
	static function readFileSync(filename:String, options:OpenOptions):String;
	static function writeFile(filename:String, data:Dynamic, ?encoding:String, ?callback:Error -> Void):Void;
	static function writeFile(filename:String, data:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?option:OpenOptions):Void;
	static function appendFile(filename:String, data:Dynamic, ?encoding:String, ?callback:Error -> Void):Void;
	static function appendFile(filename:String, data:Dynamic, ?option:OpenOptions, ?callback:Error -> Void):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?option:OpenOptions):Void;
	static function watchFile(filename:String, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function watchFile(filename:String, options:{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function unwatchFile(filename:String, ?listener:Stats):Void;
	static function watch(filename:String, ?options:{ @:optional
	var persistent : Bool; }, ?listener:String -> String -> Dynamic):FSWatcher;
	static function exists(path:String, ?callback:Bool -> Void):Void;
	static function existsSync(path:String):Bool;
	static function ensureDir(path:String, cb:Error -> Void):Void;
	static function createReadStream(path:String, ?options:ReadStreamOptions):ReadStream;
	static function createWriteStream(path:String, ?options:WriteStreamOptions):WriteStream;
}
extern class Fs-extraTopLevel {
	static function copy(src:String, dest:String, ?callback:Error -> Void):Void;
	static function copy(src:String, dest:String, filter:String -> Bool, ?callback:Error -> Void):Void;
	static function copySync(src:String, dest:String):Void;
	static function copySync(src:String, dest:String, filter:String -> Bool):Void;
	static function createFile(file:String, ?callback:Error -> Void):Void;
	static function createFileSync(file:String):Void;
	static function mkdirs(dir:String, ?callback:Error -> Void):Void;
	static function mkdirp(dir:String, ?callback:Error -> Void):Void;
	static function mkdirsSync(dir:String):Void;
	static function mkdirpSync(dir:String):Void;
	static function outputFile(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputFileSync(file:String, data:Dynamic):Void;
	static function outputJson(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputJSON(file:String, data:Dynamic, ?callback:Error -> Void):Void;
	static function outputJsonSync(file:String, data:Dynamic):Void;
	static function outputJSONSync(file:String, data:Dynamic):Void;
	static function readJson(file:String, ?callback:Error -> Void):Void;
	static function readJson(file:String, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function readJSON(file:String, ?callback:Error -> Void):Void;
	static function readJSON(file:String, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function readJsonSync(file:String, ?options:OpenOptions):Void;
	static function readJSONSync(file:String, ?options:OpenOptions):Void;
	static function remove(dir:String, ?callback:Error -> Void):Void;
	static function removeSync(dir:String):Void;
	static function writeJson(file:String, object:Dynamic, ?callback:Error -> Void):Void;
	static function writeJson(file:String, object:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeJSON(file:String, object:Dynamic, ?callback:Error -> Void):Void;
	static function writeJSON(file:String, object:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeJsonSync(file:String, object:Dynamic, ?options:OpenOptions):Void;
	static function writeJSONSync(file:String, object:Dynamic, ?options:OpenOptions):Void;
	static function rename(oldPath:String, newPath:String, ?callback:Error -> Void):Void;
	static function renameSync(oldPath:String, newPath:String):Void;
	static function truncate(fd:Float, len:Float, ?callback:Error -> Void):Void;
	static function truncateSync(fd:Float, len:Float):Void;
	static function chown(path:String, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function chownSync(path:String, uid:Float, gid:Float):Void;
	static function fchown(fd:Float, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function fchownSync(fd:Float, uid:Float, gid:Float):Void;
	static function lchown(path:String, uid:Float, gid:Float, ?callback:Error -> Void):Void;
	static function lchownSync(path:String, uid:Float, gid:Float):Void;
	static function chmod(path:String, mode:Float, ?callback:Error -> Void):Void;
	static function chmod(path:String, mode:String, ?callback:Error -> Void):Void;
	static function chmodSync(path:String, mode:Float):Void;
	static function chmodSync(path:String, mode:String):Void;
	static function fchmod(fd:Float, mode:Float, ?callback:Error -> Void):Void;
	static function fchmod(fd:Float, mode:String, ?callback:Error -> Void):Void;
	static function fchmodSync(fd:Float, mode:Float):Void;
	static function fchmodSync(fd:Float, mode:String):Void;
	static function lchmod(path:String, mode:String, ?callback:Error -> Void):Void;
	static function lchmod(path:String, mode:Float, ?callback:Error -> Void):Void;
	static function lchmodSync(path:String, mode:Float):Void;
	static function lchmodSync(path:String, mode:String):Void;
	static function stat(path:String, ?callback:Error -> Stats -> Void):Void;
	static function lstat(path:String, ?callback:Error -> Stats -> Void):Void;
	static function fstat(fd:Float, ?callback:Error -> Stats -> Void):Void;
	static function statSync(path:String):Stats;
	static function lstatSync(path:String):Stats;
	static function fstatSync(fd:Float):Stats;
	static function link(srcpath:String, dstpath:String, ?callback:Error -> Void):Void;
	static function linkSync(srcpath:String, dstpath:String):Void;
	static function symlink(srcpath:String, dstpath:String, ?type:String, ?callback:Error -> Void):Void;
	static function symlinkSync(srcpath:String, dstpath:String, ?type:String):Void;
	static function readlink(path:String, ?callback:Error -> String -> Void):Void;
	static function realpath(path:String, ?callback:Error -> String -> Void):Void;
	static function realpath(path:String, cache:String, callback:Error -> String -> Void):Void;
	static function realpathSync(path:String, ?cache:Bool):String;
	static function unlink(path:String, ?callback:Error -> Void):Void;
	static function unlinkSync(path:String):Void;
	static function rmdir(path:String, ?callback:Error -> Void):Void;
	static function rmdirSync(path:String):Void;
	static function mkdir(path:String, ?mode:Float, ?callback:Error -> Void):Void;
	static function mkdir(path:String, ?mode:String, ?callback:Error -> Void):Void;
	static function mkdirSync(path:String, ?mode:Float):Void;
	static function mkdirSync(path:String, ?mode:String):Void;
	static function readdir(path:String, ?callback:Error -> Array<String> -> Void):Void;
	static function readdirSync(path:String):Array<String>;
	static function close(fd:Float, ?callback:Error -> Void):Void;
	static function closeSync(fd:Float):Void;
	static function open(path:String, flags:String, ?mode:String, ?callback:Error -> Float -> Void):Void;
	static function openSync(path:String, flags:String, ?mode:String):Float;
	static function utimes(path:String, atime:Float, mtime:Float, ?callback:Error -> Void):Void;
	static function utimesSync(path:String, atime:Float, mtime:Float):Void;
	static function futimes(fd:Float, atime:Float, mtime:Float, ?callback:Error -> Void):Void;
	static function futimesSync(fd:Float, atime:Float, mtime:Float):Void;
	static function fsync(fd:Float, ?callback:Error -> Void):Void;
	static function fsyncSync(fd:Float):Void;
	static function write(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> NodeBuffer -> Void):Void;
	static function writeSync(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float):Float;
	static function read(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float, ?callback:Error -> Float -> NodeBuffer -> Void):Void;
	static function readSync(fd:Float, buffer:NodeBuffer, offset:Float, length:Float, position:Float):Float;
	static function readFile(filename:String, encoding:String, callback:Error -> String -> Void):Void;
	static function readFile(filename:String, options:OpenOptions, callback:Error -> String -> Void):Void;
	static function readFile(filename:String, callback:Error -> NodeBuffer -> Void):Void;
	static function readFileSync(filename:String):NodeBuffer;
	static function readFileSync(filename:String, encoding:String):String;
	static function readFileSync(filename:String, options:OpenOptions):String;
	static function writeFile(filename:String, data:Dynamic, ?encoding:String, ?callback:Error -> Void):Void;
	static function writeFile(filename:String, data:Dynamic, ?options:OpenOptions, ?callback:Error -> Void):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function writeFileSync(filename:String, data:Dynamic, ?option:OpenOptions):Void;
	static function appendFile(filename:String, data:Dynamic, ?encoding:String, ?callback:Error -> Void):Void;
	static function appendFile(filename:String, data:Dynamic, ?option:OpenOptions, ?callback:Error -> Void):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?encoding:String):Void;
	static function appendFileSync(filename:String, data:Dynamic, ?option:OpenOptions):Void;
	static function watchFile(filename:String, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function watchFile(filename:String, options:{ @:optional
	var persistent : Bool; @:optional
	var interval : Float; }, listener:{ var curr : Stats; var prev : Stats; }):Void;
	static function unwatchFile(filename:String, ?listener:Stats):Void;
	static function watch(filename:String, ?options:{ @:optional
	var persistent : Bool; }, ?listener:String -> String -> Dynamic):FSWatcher;
	static function exists(path:String, ?callback:Bool -> Void):Void;
	static function existsSync(path:String):Bool;
	static function ensureDir(path:String, cb:Error -> Void):Void;
	static function createReadStream(path:String, ?options:ReadStreamOptions):ReadStream;
	static function createWriteStream(path:String, ?options:WriteStreamOptions):WriteStream;
}
