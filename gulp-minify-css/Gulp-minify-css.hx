typedef IOptions = {
	@:optional
	var cache : Bool;
	@:optional
	var advanced : Bool;
	@:optional
	var aggressiveMerging : Bool;
	@:optional
	var benchmark : Bool;
	@:optional
	var compatibility : String;
	@:optional
	var debug : Bool;
	@:optional
	var inliner : Dynamic;
	@:optional
	var keepBreaks : Bool;
	@:optional
	var keepSpecialComments : haxe.extern.EitherType<String, Float>;
	@:optional
	var processImport : Bool;
	@:optional
	var rebase : Bool;
	@:optional
	var relativeTo : String;
	@:optional
	var root : String;
	@:optional
	var roundingPrecision : Float;
	@:optional
	var shorthandCompacting : Bool;
};
extern class Gulp-minify-cssTopLevel {
	static function minifyCSS(?options:IOptions):NodeJS.ReadWriteStream;
}
extern class Gulp-minify-cssTopLevel {
	static function minifyCSS(?options:IOptions):NodeJS.ReadWriteStream;
}
