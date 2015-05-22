typedef Options = {
	@:optional
	var mode : Float;
	@:optional
	var prefix : String;
	@:optional
	var postfix : String;
	@:optional
	var template : String;
	@:optional
	var dir : String;
	@:optional
	var tries : Float;
	@:optional
	var keep : Bool;
	@:optional
	var unsafeCleanup : Bool;
};
extern class TmpTopLevel {
	static function file(callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function file(config:Options, ?callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function dir(callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function dir(config:Options, ?callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function tmpName(callback:Dynamic -> String -> Void):Void;
	static function tmpName(config:Options, ?callback:Dynamic -> String -> Void):Void;
	static function setGracefulCleanup():Void;
}
extern class TmpTopLevel {
	static function file(callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function file(config:Options, ?callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function dir(callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function dir(config:Options, ?callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function tmpName(callback:Dynamic -> String -> Void):Void;
	static function tmpName(config:Options, ?callback:Dynamic -> String -> Void):Void;
	static function setGracefulCleanup():Void;
}
extern class TmpTopLevel {
	static function file(callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function file(config:Options, ?callback:Dynamic -> String -> Float -> Void -> Void -> Void):Void;
	static function dir(callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function dir(config:Options, ?callback:Dynamic -> String -> Void -> Void -> Void):Void;
	static function tmpName(callback:Dynamic -> String -> Void):Void;
	static function tmpName(config:Options, ?callback:Dynamic -> String -> Void):Void;
	static function setGracefulCleanup():Void;
}
