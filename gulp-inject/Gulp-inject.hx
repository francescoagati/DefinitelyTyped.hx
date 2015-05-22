typedef ITagFunction = { };
typedef ITransformFunction = { };
typedef IOptions = {
	@:optional
	var ignorePath : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var relative : Bool;
	@:optional
	var addPrefix : String;
	@:optional
	var addRootSlash : Bool;
	@:optional
	var name : String;
	@:optional
	var starttag : haxe.extern.EitherType<String, ITagFunction>;
	@:optional
	var endtag : haxe.extern.EitherType<String, ITagFunction>;
	@:optional
	var transform : ITransformFunction;
	@:optional
	var selfClosingTag : Bool;
};
extern class Gulp-injectTopLevel {
	static function inject(sources:NodeJS.ReadableStream, ?options:IOptions):NodeJS.ReadWriteStream;
}
extern class Gulp-injectTopLevel {
	static function inject(sources:NodeJS.ReadableStream, ?options:IOptions):NodeJS.ReadWriteStream;
}
