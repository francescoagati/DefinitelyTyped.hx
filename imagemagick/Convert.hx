extern class ConvertTopLevel {
	static var path : String;
	static function resize(options:Options, callback:Error -> Dynamic -> Void):child_process.ChildProcess;
	static function crop(options:Options, callback:Error -> Dynamic -> Void):child_process.ChildProcess;
	static function resizeArgs(options:Options):ResizeArgs;
}
typedef Features = {
	@:optional
	var format : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var depth : Float;
};
typedef Options = {
	@:optional
	var srcPath : String;
	@:optional
	var srcData : String;
	@:optional
	var srcFormat : String;
	@:optional
	var dstPath : String;
	@:optional
	var quality : Float;
	@:optional
	var format : String;
	@:optional
	var progressive : Bool;
	@:optional
	var colorspace : Dynamic;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var strip : Bool;
	@:optional
	var filter : String;
	@:optional
	var sharpening : Float;
	@:optional
	var customArgs : Array<Dynamic>;
	@:optional
	var timeout : Float;
};
typedef ResizeArgs = {
	var opt : Options;
	var args : Array<String>;
};
