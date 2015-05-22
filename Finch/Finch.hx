typedef FinchCallback = { };
typedef ExpandedCallback = {
	@:optional
	var setup : FinchCallback;
	@:optional
	var load : FinchCallback;
	@:optional
	var unload : FinchCallback;
	@:optional
	var teardown : FinchCallback;
};
typedef ObserveCallback = { };
typedef FinchOptions = {
	@:optional
	var CoerceParameterTypes : Bool;
};
typedef FinchStatic = {
	@:overload(function(route:String, callbacks:ExpandedCallback):Void { })
	function route(route:String, callback:FinchCallback):Void;
	function call(uri:String):Void;
	@:overload(function(callback:ObserveCallback -> Void):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function observe(argN:Array<String>, callback:ObserveCallback -> Void):Void;
	@:overload(function(uri:String, doUpdate:Bool):Void { })
	@:overload(function(queryParams:Dynamic, ?doUpdate:Bool):Void { })
	function navigate(uri:String, ?queryParams:Dynamic, ?doUpdate:Bool):Void;
	function listen():Bool;
	function ignore():Bool;
	function abort():Void;
	function options(options:FinchOptions):Void;
};
extern class FinchTopLevel {
	static var Finch : FinchStatic;
}
