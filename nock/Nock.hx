typedef Scope = {
	function get(path:String, ?data:String):Scope;
	@:overload(function(path:String, ?data:Dynamic):Scope { })
	@:overload(function(path:String, ?regex:js.RegExp):Scope { })
	function post(path:String, ?data:String):Scope;
	@:overload(function(path:String, ?data:Dynamic):Scope { })
	@:overload(function(path:String, ?regex:js.RegExp):Scope { })
	function patch(path:String, ?data:String):Scope;
	@:overload(function(path:String, ?data:Dynamic):Scope { })
	@:overload(function(path:String, ?regex:js.RegExp):Scope { })
	function put(path:String, ?data:String):Scope;
	function head(path:String):Scope;
	@:overload(function(path:String, ?data:Dynamic):Scope { })
	@:overload(function(path:String, ?regex:js.RegExp):Scope { })
	function delete(path:String, ?data:String):Scope;
	@:overload(function(path:String, ?data:Dynamic):Scope { })
	@:overload(function(path:String, ?regex:js.RegExp):Scope { })
	function merge(path:String, ?data:String):Scope;
	@:overload(function(path:String, verb:String, ?body:Dynamic, ?options:Dynamic):Scope { })
	@:overload(function(path:String, verb:String, ?body:js.RegExp, ?options:Dynamic):Scope { })
	function intercept(path:String, verb:String, ?body:String, ?options:Dynamic):Scope;
	@:overload(function(responseCode:Float, ?body:Dynamic, ?headers:Dynamic):Scope { })
	@:overload(function(responseCode:Float, callback:String -> String -> String, ?headers:Dynamic):Scope { })
	function reply(responseCode:Float, ?body:String, ?headers:Dynamic):Scope;
	function replyWithFile(responseCode:Float, fileName:String):Scope;
	function defaultReplyHeaders(headers:Dynamic):Scope;
	@:overload(function(name:String, regex:js.RegExp):Scope { })
	@:overload(function(name:String, fn:String -> Bool):Scope { })
	function matchHeader(name:String, value:String):Scope;
	@:overload(function(fn:String -> String):Scope { })
	function filteringPath(regex:js.RegExp, replace:String):Scope;
	@:overload(function(fn:String -> String):Scope { })
	function filteringRequestBody(regex:js.RegExp, replace:String):Scope;
	function persist():Scope;
	function log(out:Void -> Void):Scope;
	function delay(timeMs:Float):Scope;
	function delayConnection(timeMs:Float):Scope;
	function times(repeats:Float):Scope;
	function once():Scope;
	function twice():Scope;
	function thrice():Scope;
	function done():Void;
	function isDone():Bool;
	function restore():Void;
	function pendingMocks():Array<Dynamic>;
};
typedef Recorder = {
	@:overload(function(?options:RecorderOptions):Void { })
	function rec(?capture:Bool):Void;
	function play():Array<Dynamic>;
};
typedef Options = {
	@:optional
	var allowUnmocked : Bool;
};
typedef RecorderOptions = {
	@:optional
	var dont_print : Bool;
	@:optional
	var output_objects : Bool;
	@:optional
	var enable_reqheaders_recording : Bool;
};
extern class NockTopLevel {
	static function nock(host:String, ?options:nock.Options):nock.Scope;
	static function cleanAll():Void;
	static function disableNetConnect():Void;
	static function enableNetConnect():Void;
	static function enableNetConnect(regex:js.RegExp):Void;
	static function enableNetConnect(domain:String):Void;
	static var recorder : Recorder;
}
extern class NockTopLevel {
	static function nock(host:String, ?options:nock.Options):nock.Scope;
	static function cleanAll():Void;
	static function disableNetConnect():Void;
	static function enableNetConnect():Void;
	static function enableNetConnect(regex:js.RegExp):Void;
	static function enableNetConnect(domain:String):Void;
	static var recorder : Recorder;
}
extern class NockTopLevel {
	static function nock(host:String, ?options:nock.Options):nock.Scope;
	static function cleanAll():Void;
	static function disableNetConnect():Void;
	static function enableNetConnect():Void;
	static function enableNetConnect(regex:js.RegExp):Void;
	static function enableNetConnect(domain:String):Void;
	static var recorder : Recorder;
}
