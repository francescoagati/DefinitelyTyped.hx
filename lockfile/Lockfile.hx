typedef Options = {
	@:optional
	var wait : Float;
	@:optional
	var stale : Float;
	@:optional
	var retries : Float;
	@:optional
	var retryWait : Float;
};
extern class LockfileTopLevel {
	static function lock(path:String, opts:Options, callback:Error -> Void):Void;
	static function lock(path:String, callback:Error -> Void):Void;
	static function lockSync(path:String, opts:Options):Void;
	static function unlock(path:String, callback:Error -> Void):Void;
	static function unlockSync(path:String):Void;
	static function check(path:String, opts:Options, callback:Error -> Void):Void;
	static function check(path:String, callback:Error -> Void):Void;
	static function checkSync(path:String, opts:Options):Bool;
}
extern class LockfileTopLevel {
	static function lock(path:String, opts:Options, callback:Error -> Void):Void;
	static function lock(path:String, callback:Error -> Void):Void;
	static function lockSync(path:String, opts:Options):Void;
	static function unlock(path:String, callback:Error -> Void):Void;
	static function unlockSync(path:String):Void;
	static function check(path:String, opts:Options, callback:Error -> Void):Void;
	static function check(path:String, callback:Error -> Void):Void;
	static function checkSync(path:String, opts:Options):Bool;
}
