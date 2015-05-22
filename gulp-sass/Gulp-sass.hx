typedef SassResults = {
	var css : String;
	var map : String;
	var stats : { var entry : String; var start : Date; var end : Date; var duration : Float; var includedFiles : Array<String>; };
};
typedef SassOptions = {
	@:optional
	var file : String;
	@:optional
	var data : String;
	@:optional
	var success : SassResults -> Dynamic;
	@:optional
	var error : Error -> Dynamic;
	@:optional
	var includePaths : Array<String>;
	@:optional
	var imagePaths : Array<String>;
	@:optional
	var indentedSyntax : Bool;
	@:optional
	var omitSourceMapUrl : Bool;
	@:optional
	var outFile : String;
	@:optional
	var outputStyle : String;
	@:optional
	var precision : Float;
	@:optional
	var sourceComments : Bool;
	@:optional
	var sourceMap : haxe.extern.EitherType<Bool, String>;
	@:optional
	var sourceMapEmbed : Bool;
	@:optional
	var sourceMapContents : Bool;
};
typedef Options = {
	>SassOptions,
	@:optional
	var errLogToConsole : Bool;
	@:optional
	var onSuccess : String -> Dynamic;
	@:optional
	var onError : Error -> Dynamic;
	@:optional
	var sync : Bool;
};
extern class Gulp-sassTopLevel {
	static function sass(?opts:Options):NodeJS.ReadWriteStream;
}
extern class Gulp-sassTopLevel {
	static function sass(?opts:Options):NodeJS.ReadWriteStream;
}
