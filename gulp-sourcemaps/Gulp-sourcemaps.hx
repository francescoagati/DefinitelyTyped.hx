typedef InitOptions = {
	@:optional
	var loadMaps : Bool;
	@:optional
	var debug : Bool;
};
typedef WriteMapper = { };
typedef WriteOptions = {
	@:optional
	var addComment : Bool;
	@:optional
	var includeContext : Bool;
	@:optional
	var sourceRoot : haxe.extern.EitherType<String, WriteMapper>;
	@:optional
	var sourceMappingURLPrefix : haxe.extern.EitherType<String, WriteMapper>;
};
extern class Gulp-sourcemapsTopLevel {
	static function init(?opts:InitOptions):NodeJS.ReadWriteStream;
	static function write(?opts:WriteOptions):NodeJS.ReadWriteStream;
	static function write(?path:String, ?opts:WriteOptions):NodeJS.ReadWriteStream;
}
extern class Gulp-sourcemapsTopLevel {
	static function init(?opts:InitOptions):NodeJS.ReadWriteStream;
	static function write(?opts:WriteOptions):NodeJS.ReadWriteStream;
	static function write(?path:String, ?opts:WriteOptions):NodeJS.ReadWriteStream;
}
