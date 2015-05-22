typedef Options = {
	>glob.IOptions,
	@:optional
	var cwd : String;
	@:optional
	var base : String;
	@:optional
	var cwdbase : Bool;
};
typedef Element = {
	var cwd : String;
	var base : String;
	var path : String;
};
extern class Glob-streamTopLevel {
	static function create(glob:String, ?opts:Options):NodeJS.ReadableStream;
	static function create(globs:Array<String>, ?opts:Options):NodeJS.ReadableStream;
}
extern class Glob-streamTopLevel {
	static function create(glob:String, ?opts:Options):NodeJS.ReadableStream;
	static function create(globs:Array<String>, ?opts:Options):NodeJS.ReadableStream;
}
