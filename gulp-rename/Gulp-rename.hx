typedef ParsedPath = {
	@:optional
	var dirname : String;
	@:optional
	var basename : String;
	@:optional
	var extname : String;
};
typedef Options = {
	>ParsedPath,
	@:optional
	var prefix : String;
	@:optional
	var suffix : String;
};
extern class Gulp-renameTopLevel {
	static function rename(name:String):NodeJS.ReadWriteStream;
	static function rename(callback:ParsedPath -> Dynamic):NodeJS.ReadWriteStream;
	static function rename(opts:Options):NodeJS.ReadWriteStream;
}
extern class Gulp-renameTopLevel {
	static function rename(name:String):NodeJS.ReadWriteStream;
	static function rename(callback:ParsedPath -> Dynamic):NodeJS.ReadWriteStream;
	static function rename(opts:Options):NodeJS.ReadWriteStream;
}
