typedef Options<T> = {
	@:optional
	var max : Float;
	@:optional
	var maxAge : Float;
	@:optional
	var length : T -> Float;
	@:optional
	var dispose : String -> T -> Void;
	@:optional
	var stale : Bool;
};
typedef Cache<T> = {
	function set(key:String, value:T):Void;
	function get(key:String):T;
	function peek(key:String):T;
	function has(key:String):Bool;
	function del(key:String):Void;
	function reset():Void;
	function forEach(iter:T -> String -> Cache<T> -> Void, ?thisp:Dynamic):Void;
	function keys():Array<String>;
	function values():Array<T>;
};
