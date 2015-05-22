typedef Options = {
	@:optional
	var skipBinary : Bool;
};
typedef Replacer = { };
extern class Gulp-replaceTopLevel {
	static function replace(pattern:String, replacement:haxe.extern.EitherType<String, Replacer>, ?opts:Options):NodeJS.ReadWriteStream;
	static function replace(pattern:js.RegExp, replacement:haxe.extern.EitherType<String, Replacer>, ?opts:Options):NodeJS.ReadWriteStream;
}
extern class Gulp-replaceTopLevel {
	static function replace(pattern:String, replacement:haxe.extern.EitherType<String, Replacer>, ?opts:Options):NodeJS.ReadWriteStream;
	static function replace(pattern:js.RegExp, replacement:haxe.extern.EitherType<String, Replacer>, ?opts:Options):NodeJS.ReadWriteStream;
}
