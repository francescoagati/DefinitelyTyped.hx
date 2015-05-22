typedef IAngularStatic = {
	var mock : IMockStatic;
};
typedef IMockStatic = {
	function debug(obj:Dynamic):String;
	function inject(fns:haxe.extern.Rest<haxe.Constraints.Function>):Dynamic;
	function module(modules:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(offset:Float, timestamp:String):Date { })
	function TzDate(offset:Float, timestamp:Float):Date;
};
typedef IExceptionHandlerProvider = {
	>IServiceProvider,
	function mode(mode:String):Void;
};
typedef ITimeoutService = {
	function flush():Void;
};
typedef ILogService = {
	function assertEmpty():Void;
	function reset():Void;
};
typedef LogCall = {
	var logs : Array<String>;
};
typedef IHttpBackendService = {
	function flush(?count:Float):Void;
	function resetExpectations():Void;
	function verifyNoOutstandingExpectation():Void;
	function verifyNoOutstandingRequest():Void;
	@:overload(function(method:String, url:js.RegExp, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:String, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:js.RegExp, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	function expect(method:String, url:String, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(method:String, url:js.RegExp, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:String, url:String, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:String, url:js.RegExp, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:String, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:js.RegExp, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:String, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(method:js.RegExp, url:js.RegExp, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function when(method:String, url:String, ?data:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function expectDELETE(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function expectGET(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function expectHEAD(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp):mock.IRequestHandler { })
	function expectJSONP(url:String):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	function expectPATCH(url:String, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	function expectPOST(url:String, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler { })
	function expectPUT(url:String, ?data:Dynamic, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenDELETE(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenGET(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenHEAD(url:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp):mock.IRequestHandler { })
	function whenJSONP(url:String):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:String, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:js.RegExp, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenPATCH(url:String, ?data:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:String, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:js.RegExp, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenPOST(url:String, ?data:String, ?headers:Dynamic):mock.IRequestHandler;
	@:overload(function(url:js.RegExp, ?data:String, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:String, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	@:overload(function(url:js.RegExp, ?data:js.RegExp, ?headers:Dynamic):mock.IRequestHandler { })
	function whenPUT(url:String, ?data:String, ?headers:Dynamic):mock.IRequestHandler;
};
