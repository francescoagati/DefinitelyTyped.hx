typedef Options = {
	var out : String;
	@:optional
	var mode : String;
	@:optional
	var json : String;
	@:optional
	var exclude : String;
	@:optional
	var includeDeclarations : Bool;
	@:optional
	var externalPattern : String;
	@:optional
	var excludeExternals : Bool;
	@:optional
	var module : String;
	@:optional
	var target : String;
	@:optional
	var theme : String;
	@:optional
	var name : String;
	@:optional
	var readme : String;
	@:optional
	var hideGenerator : Bool;
	@:optional
	var gaID : String;
	@:optional
	var gaSite : String;
	@:optional
	var verbose : Bool;
};
extern class Gulp-typedocTopLevel {
	static function typedoc(opts:Options):NodeJS.ReadWriteStream;
}
extern class Gulp-typedocTopLevel {
	static function typedoc(opts:Options):NodeJS.ReadWriteStream;
}
