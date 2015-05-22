typedef Loop = {
	@:optional
	var begin : Float;
	@:optional
	var end : Float;
	@:optional
	var step : Float;
};
typedef ConnectOption = {
	var target : Dynamic;
	@:optional
	var args : Array<Dynamic>;
	@:optional
	var ok : Float;
	@:optional
	var ng : Float;
};
typedef RetryOption = {
	var wait : Float;
};
typedef DeferredizedFunction = { };
typedef DeferredizedFunctionWithNumber = { };
typedef FunctionWithNumber = { };
typedef ErrorCallback = { };
extern class Deferred {
	static var methods : Array<String>;
	static function isDeferred(obj:Dynamic):Bool;
	@:overload(function(fun:haxe.Constraints.Function):Deferred { })
	static function next(fun:haxe.Constraints.Function):Deferred;
	static function chain(args:haxe.extern.Rest<Dynamic>):Deferred;
	@:overload(function(n:Float):Deferred { })
	static function wait(n:Float):Deferred;
	@:overload(function(?val:Dynamic):Deferred { })
	static function call(?fun:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Deferred;
	@:overload(function(dl:Dynamic):Deferred { })
	static function parallel(dl:Dynamic):Deferred;
	static function earlier(dl:Dynamic):Deferred;
	@:overload(function(n:Loop, fun:FunctionWithNumber):Deferred { })
	@:overload(function(n:Float, fun:FunctionWithNumber):Deferred { })
	@:overload(function(n:Loop, fun:FunctionWithNumber):Deferred { })
	static function loop(n:Float, fun:FunctionWithNumber):Deferred;
	static function repeat(n:Float, fun:FunctionWithNumber):Deferred;
	static function register(name:String, fun:DeferredizedFunction):Void;
	@:overload(function(funo:haxe.Constraints.Function, ?options:ConnectOption):DeferredizedFunction { })
	static function connect(funo:Dynamic, options:String):DeferredizedFunction;
	static function retry(retryCount:Float, funcDeferred:DeferredizedFunctionWithNumber, ?options:RetryOption):Deferred;
	static function define(?obj:Dynamic, ?list:Array<String>):Dynamic;
	function new():Void;
	function error(fun:ErrorCallback):Deferred;
	function fail(err:Dynamic):Deferred;
	function cancel():Deferred;
}
typedef JQueryXHR = {
	function next(fun:haxe.Constraints.Function):Deferred;
};
extern class JsdeferredTopLevel {
	static function chain(args:haxe.extern.Rest<Dynamic>):Deferred;
	static function wait(n:Float):Deferred;
	static function call(?fun:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Deferred;
	static function parallel(dl:Dynamic):Deferred;
	static function earlier(dl:Dynamic):Deferred;
	static function loop(n:Float, fun:FunctionWithNumber):Deferred;
	static function loop(n:Loop, fun:FunctionWithNumber):Deferred;
	static function repeat(n:Float, fun:FunctionWithNumber):Deferred;
	static function next(fun:haxe.Constraints.Function):Deferred;
}
