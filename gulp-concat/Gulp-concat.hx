typedef IOptions = {
	var newLine : String;
};
typedef IFsStats = {
	@:optional
	var dev : Float;
	@:optional
	var ino : Float;
	@:optional
	var mode : Float;
	@:optional
	var nlink : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var rdev : Float;
	@:optional
	var size : Float;
	@:optional
	var blksize : Float;
	@:optional
	var blocks : Float;
	@:optional
	var atime : Date;
	@:optional
	var mtime : Date;
	@:optional
	var ctime : Date;
};
typedef IVinylOptions = {
	@:optional
	var cwd : String;
	@:optional
	var base : String;
	@:optional
	var path : String;
	@:optional
	var stat : IFsStats;
	@:optional
	var contents : haxe.extern.EitherType<NodeJS.ReadableStream, Buffer>;
};
extern class Gulp-concatTopLevel {
	static function concat(filename:String, ?options:IOptions):NodeJS.ReadWriteStream;
	static function concat(options:IVinylOptions):NodeJS.ReadWriteStream;
}
extern class Gulp-concatTopLevel {
	static function concat(filename:String, ?options:IOptions):NodeJS.ReadWriteStream;
	static function concat(options:IVinylOptions):NodeJS.ReadWriteStream;
}
