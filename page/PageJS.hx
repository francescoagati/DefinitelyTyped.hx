typedef Static = {
	@:overload(function(page:String):Void { })
	function redirect(fromPath:String, toPath:String):Void;
	function show(path:String):Void;
	@:overload(function():Void { })
	function start(options:Options):Void;
	function stop():Void;
	function base(?path:String):Void;
	@:overload(function(callback:Callback):Void { })
	function exit(path:String, callback:Callback, ?moreCallbacks:Array<Callback>):Void;
};
typedef Options = {
	@:optional
	var click : Bool;
	@:optional
	var popstate : Bool;
	@:optional
	var dispatch : Bool;
	@:optional
	var hashbang : Bool;
};
typedef Callback = { };
typedef Context = {
	var save : Void -> Void;
	var handled : Bool;
	var canonicalPath : String;
	var path : String;
	var querystring : String;
	var pathname : String;
	var state : Dynamic;
	var title : String;
	var params : Dynamic;
};
