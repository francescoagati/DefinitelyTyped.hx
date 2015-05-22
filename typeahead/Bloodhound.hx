typedef BloodhoundOptions<T> = {
	@:optional
	var datumTokenizer : Dynamic;
	@:optional
	var queryTokenizer : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var dupDetector : T -> T -> Bool;
	@:optional
	var sorter : T -> T -> Float;
	@:optional
	var local : Void -> Array<T>;
	@:optional
	var prefetch : PrefetchOptions<T>;
	@:optional
	var remote : RemoteOptions<T>;
};
typedef PrefetchOptions<T> = {
	var url : String;
	@:optional
	var ttl : Float;
	@:optional
	var filter : Dynamic -> Array<T>;
	@:optional
	var cacheKey : String;
	@:optional
	var thumbprint : String;
	@:optional
	var ajax : JQueryAjaxSettings;
};
typedef RemoteOptions<T> = {
	var url : String;
	@:optional
	var wildcard : String;
	@:optional
	var replace : String -> String -> String;
	@:optional
	var rateLimitby : String;
	@:optional
	var rateLimitWait : Float;
	@:optional
	var filter : Dynamic -> Array<T>;
	@:optional
	var ajax : JQueryAjaxSettings;
};
typedef Tokenizers = {
	function whitespace(query:String):Array<String>;
	function nonword(query:String):Array<String>;
	var obj : ObjTokenizer;
};
typedef ObjTokenizer = {
	function whitespace(query:String):Array<String>;
	function nonword(query:String):Array<String>;
};
extern class Bloodhound<T> {
	function new(options:Bloodhound.BloodhoundOptions<T>):Void;
	function ttAdapter():Dynamic;
	function initialize(?reinitialize:Bool):JQueryPromise<Dynamic>;
	function add(datums:Array<T>):Void;
	function clear():Void;
	function clearPrefetchCache():Void;
	function clearRemoteCache():Void;
	function noConflict():Dynamic;
	function get(query:String, cb:Array<T> -> Void):Void;
	static var tokenizers : Bloodhound.Tokenizers;
}
