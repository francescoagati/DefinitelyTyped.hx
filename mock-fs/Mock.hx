typedef Config = { };
typedef CommonConfig = {
	@:optional
	var mode : Float;
	@:optional
	var uid : Float;
	@:optional
	var git : Float;
	@:optional
	var atime : Date;
	@:optional
	var ctime : Date;
	@:optional
	var mtime : Date;
};
typedef FileConfig = {
	>CommonConfig,
	var content : haxe.extern.EitherType<String, Buffer>;
};
typedef DirectoryConfig = {
	>CommonConfig,
	var items : Config;
};
typedef SymlinkConfig = {
	>CommonConfig,
	var path : String;
};
extern class File {
	var _file : Dynamic;
}
extern class Directory {
	var _directory : Dynamic;
}
extern class Symlink {
	var _symlink : Dynamic;
}
extern class MockTopLevel {
	static function file(config:FileConfig):File;
	static function directory(config:DirectoryConfig):Directory;
	static function symlink(config:SymlinkConfig):Symlink;
	static function restore():Void;
	static function fs(?config:Config):Dynamic;
}
