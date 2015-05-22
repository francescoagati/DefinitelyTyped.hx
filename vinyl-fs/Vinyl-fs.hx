extern class Vinyl-fsTopLevel {
	static function src(globs:haxe.extern.EitherType<String, Array<String>>, ?opt:{ @:optional
	var read : Bool; @:optional
	var buffer : Bool; }):NodeJS.ReadWriteStream;
	static function watch(globs:haxe.extern.EitherType<String, Array<String>>, ?cb:{ var type : Dynamic; var path : Dynamic; var old : Dynamic; } -> Void):_events.EventEmitter;
	static function watch(globs:haxe.extern.EitherType<String, Array<String>>, ?opt:{ @:optional
	var interval : Float; @:optional
	var debounceDelay : Float; @:optional
	var cwd : String; @:optional
	var maxListeners : haxe.Constraints.Function; }, ?cb:{ var type : Dynamic; var path : Dynamic; var old : Dynamic; } -> Void):_events.EventEmitter;
	static function dest(folder:String, ?opt:{ @:optional
	var cwd : String; @:optional
	var mode : haxe.extern.EitherType<Float, String>; }):NodeJS.ReadWriteStream;
	static function dest(getFolderPath:File -> String):NodeJS.ReadWriteStream;
}
extern class Vinyl-fsTopLevel {
	static function src(globs:haxe.extern.EitherType<String, Array<String>>, ?opt:{ @:optional
	var read : Bool; @:optional
	var buffer : Bool; }):NodeJS.ReadWriteStream;
	static function watch(globs:haxe.extern.EitherType<String, Array<String>>, ?cb:{ var type : Dynamic; var path : Dynamic; var old : Dynamic; } -> Void):_events.EventEmitter;
	static function watch(globs:haxe.extern.EitherType<String, Array<String>>, ?opt:{ @:optional
	var interval : Float; @:optional
	var debounceDelay : Float; @:optional
	var cwd : String; @:optional
	var maxListeners : haxe.Constraints.Function; }, ?cb:{ var type : Dynamic; var path : Dynamic; var old : Dynamic; } -> Void):_events.EventEmitter;
	static function dest(folder:String, ?opt:{ @:optional
	var cwd : String; @:optional
	var mode : haxe.extern.EitherType<Float, String>; }):NodeJS.ReadWriteStream;
	static function dest(getFolderPath:File -> String):NodeJS.ReadWriteStream;
}
