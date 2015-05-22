typedef Options = {
	var name : String;
	var main : String;
	@:optional
	var baseDir : String;
	@:optional
	var exclude : js.RegExp;
	@:optional
	var externals : Bool;
	@:optional
	var indent : String;
	@:optional
	var newLine : String;
	@:optional
	var out : String;
	@:optional
	var prefix : String;
	@:optional
	var removeSource : Bool;
	@:optional
	var separator : String;
	@:optional
	var verbose : Bool;
};
extern class Dts-bundleTopLevel {
	static function bundle(opts:Options):Void;
}
extern class Dts-bundleTopLevel {
	static function bundle(opts:Options):Void;
}
