extern class __BaseOptions {
	function new():Void;
	var data : String;
	var handleAs : String;
	var headers : Dynamic;
	var password : String;
	var preventCache : Bool;
	var query : String;
	var sync : Bool;
	var timeout : Float;
	var user : String;
	var withCredentials : Bool;
}
extern class __MethodOptions {
	function new():Void;
	var method : String;
}
extern class __Options {
	function new():Void;
	var data : String;
	var handleAs : String;
	var headers : Dynamic;
	var method : String;
	var password : String;
	var preventCache : Bool;
	var query : String;
	var sync : Bool;
	var timeout : Float;
	var user : String;
	var withCredentials : Bool;
}
extern class __BaseOptions {
	function new():Void;
	var data : String;
	var handleAs : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
extern class __MethodOptions {
	function new():Void;
	var method : String;
}
extern class __Options {
	function new():Void;
	var data : String;
	var handleAs : String;
	var method : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
extern class __Promise {
	function new():Void;
	var response : Dynamic;
	function always(callbackOrErrback:haxe.Constraints.Function):Dynamic;
	function cancel(reason:Dynamic, strict:Bool):Dynamic;
	function isCanceled():Bool;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isResolved():Bool;
	function otherwise(errback:haxe.Constraints.Function):Dynamic;
	function then(?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function, ?progback:haxe.Constraints.Function):dojo.promise.Promise<Dynamic>;
	function toString():String;
	function trace():dojo.promise.Promise<Dynamic>;
	function traceRejected():dojo.promise.Promise<Dynamic>;
}
typedef Default_ = {
	function getPlatformDefaultId():Void;
	function load(id:Dynamic, parentRequire:Dynamic, loaded:Dynamic, config:Dynamic):Void;
};
typedef Util = {
	function addCommonMethods(provider:Dynamic, methods:Dynamic):Void;
	function checkStatus(stat:Dynamic):Bool;
	function deepCopy(target:Dynamic, source:Dynamic):Dynamic;
	function deepCreate(source:Dynamic, properties:Dynamic):Dynamic;
	function deferred(response:Dynamic, cancel:Dynamic, isValid:Dynamic, isReady:Dynamic, handleResponse:Dynamic, last:Dynamic):Dynamic;
	function notify(type:String, listener:haxe.Constraints.Function):Dynamic;
	function parseArgs(url:Dynamic, options:Dynamic, skipData:Dynamic):Dynamic;
};
typedef AdapterRegistry = { };
typedef AdapterRegistry = {
	var pairs : Array<Dynamic>;
	var returnWrappers : Bool;
	function match():Dynamic;
	function register(name:String, check:haxe.Constraints.Function, wrap:haxe.Constraints.Function, directReturn:Bool, override:Bool):Void;
	function unregister(name:String):Dynamic;
};
typedef ContentHandlers = {
	function auto(xhr:Dynamic):Void;
	function javascript(xhr:Dynamic):Dynamic;
	function json(xhr:Dynamic):Dynamic;
	function json_comment_filtered(xhr:Dynamic):Dynamic;
	function json_comment_optional(xhr:Dynamic):Dynamic;
	function olson_zoneinfo(xhr:Dynamic):Void;
	function text(xhr:Dynamic):Dynamic;
	function xml(xhr:Dynamic):Dynamic;
};
extern class Config {
	function new():Void;
	var addOnLoad : haxe.Constraints.Function;
	var afterOnLoad : Bool;
	var baseUrl : Dynamic;
	var callback : haxe.Constraints.Function;
	var debugContainerId : String;
	var debugHeight : Float;
	var defaultDuration : Float;
	var deferredInstrumentation : Bool;
	var deps : haxe.Constraints.Function;
	var dojoBlankHtmlUrl : String;
	var extraLocale : Array<Dynamic>;
	var ioPublish : Dynamic;
	var isDebug : Bool;
	var locale : String;
	var modulePaths : Dynamic;
	var parseOnLoad : Bool;
	var require : Dynamic;
	var transparentColor : Array<Dynamic>;
	var urchin : String;
	var useCustomLogger : Dynamic;
	var useDeferredInstrumentation : Bool;
}
