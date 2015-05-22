typedef SinonSpyCallApi = {
	var thisValue : Dynamic;
	var args : Array<Dynamic>;
	var exception : Dynamic;
	var returnValue : Dynamic;
	function calledOn(obj:Dynamic):Bool;
	function calledWith(args:haxe.extern.Rest<Dynamic>):Bool;
	function calledWithExactly(args:haxe.extern.Rest<Dynamic>):Bool;
	function calledWithMatch(args:haxe.extern.Rest<SinonMatcher>):Bool;
	function notCalledWith(args:haxe.extern.Rest<Dynamic>):Bool;
	function notCalledWithMatch(args:haxe.extern.Rest<SinonMatcher>):Bool;
	function returned(value:Dynamic):Bool;
	@:overload(function(type:String):Bool { })
	@:overload(function(obj:Dynamic):Bool { })
	function threw():Bool;
	function callArg(pos:Float):Void;
	function callArgOn(pos:Float, obj:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	function callArgWith(pos:Float, args:haxe.extern.Rest<Dynamic>):Void;
	function callArgOnWith(pos:Float, obj:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	function yield(args:haxe.extern.Rest<Dynamic>):Void;
	function yieldOn(obj:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	function yieldTo(property:String, args:haxe.extern.Rest<Dynamic>):Void;
	function yieldToOn(property:String, obj:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
};
typedef SinonSpyCall = {
	>SinonSpyCallApi,
	function calledBefore(call:SinonSpyCall):Bool;
	function calledAfter(call:SinonSpyCall):Bool;
	function calledWithNew(call:SinonSpyCall):Bool;
};
typedef SinonSpy = {
	>SinonSpyCallApi,
	var callCount : Float;
	var called : Bool;
	var notCalled : Bool;
	var calledOnce : Bool;
	var calledTwice : Bool;
	var calledThrice : Bool;
	var firstCall : SinonSpyCall;
	var secondCall : SinonSpyCall;
	var thirdCall : SinonSpyCall;
	var lastCall : SinonSpyCall;
	var thisValues : Array<Dynamic>;
	var args : Array<Array<Dynamic>>;
	var exceptions : Array<Dynamic>;
	var returnValues : Array<Dynamic>;
	function calledBefore(anotherSpy:SinonSpy):Bool;
	function calledAfter(anotherSpy:SinonSpy):Bool;
	function calledWithNew(spy:SinonSpy):Bool;
	function withArgs(args:haxe.extern.Rest<Dynamic>):SinonSpy;
	function alwaysCalledOn(obj:Dynamic):Bool;
	function alwaysCalledWith(args:haxe.extern.Rest<Dynamic>):Bool;
	function alwaysCalledWithExactly(args:haxe.extern.Rest<Dynamic>):Bool;
	function alwaysCalledWithMatch(args:haxe.extern.Rest<SinonMatcher>):Bool;
	function neverCalledWith(args:haxe.extern.Rest<Dynamic>):Bool;
	function neverCalledWithMatch(args:haxe.extern.Rest<SinonMatcher>):Bool;
	@:overload(function(type:String):Bool { })
	@:overload(function(obj:Dynamic):Bool { })
	function alwaysThrew():Bool;
	function alwaysReturned():Bool;
	function invokeCallback(args:haxe.extern.Rest<Dynamic>):Void;
	function getCall(n:Float):SinonSpyCall;
	function reset():Void;
	function printf(format:String, args:haxe.extern.Rest<Dynamic>):String;
	function restore():Void;
};
typedef SinonSpyStatic = { };
typedef SinonStatic = {
	var spy : SinonSpyStatic;
};
typedef SinonStub = {
	>SinonSpy,
	function resetBehavior():Void;
	function returns(obj:Dynamic):SinonStub;
	function returnsArg(index:Float):SinonStub;
	@:overload(function(obj:Dynamic):SinonStub { })
	function throws(?type:String):SinonStub;
	function callsArg(index:Float):SinonStub;
	function callsArgOn(index:Float, context:Dynamic):SinonStub;
	function callsArgWith(index:Float, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function callsArgOnWith(index:Float, context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function callsArgAsync(index:Float):SinonStub;
	function callsArgOnAsync(index:Float, context:Dynamic):SinonStub;
	function callsArgWithAsync(index:Float, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function callsArgOnWithAsync(index:Float, context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function onCall(n:Float):SinonStub;
	function onFirstCall():SinonStub;
	function onSecondCall():SinonStub;
	function onThirdCall():SinonStub;
	function yields(args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsOn(context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsTo(property:String, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsToOn(property:String, context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsAsync(args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsOnAsync(context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsToAsync(property:String, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function yieldsToOnAsync(property:String, context:Dynamic, args:haxe.extern.Rest<Dynamic>):SinonStub;
	function withArgs(args:haxe.extern.Rest<Dynamic>):SinonStub;
};
typedef SinonStubStatic = { };
typedef SinonStatic = {
	var stub : SinonStubStatic;
};
typedef SinonExpectation = {
	>SinonStub,
	function atLeast(n:Float):SinonExpectation;
	function atMost(n:Float):SinonExpectation;
	function never():SinonExpectation;
	function once():SinonExpectation;
	function twice():SinonExpectation;
	function thrice():SinonExpectation;
	function exactly(n:Float):SinonExpectation;
	function withArgs(args:haxe.extern.Rest<Dynamic>):SinonExpectation;
	function withExactArgs(args:haxe.extern.Rest<Dynamic>):SinonExpectation;
	function on(obj:Dynamic):SinonExpectation;
	function verify():SinonExpectation;
	function restore():Void;
};
typedef SinonExpectationStatic = {
	function create(?methodName:String):SinonExpectation;
};
typedef SinonMock = {
	function expects(method:String):SinonExpectation;
	function restore():Void;
	function verify():Void;
};
typedef SinonMockStatic = { };
typedef SinonStatic = {
	var expectation : SinonExpectationStatic;
	var mock : SinonMockStatic;
};
typedef SinonFakeTimers = {
	var now : Float;
	function create(now:Float):SinonFakeTimers;
	function setTimeout(callback:haxe.extern.Rest<Dynamic> -> Void, timeout:Float, args:haxe.extern.Rest<Dynamic>):Float;
	function clearTimeout(id:Float):Void;
	function setInterval(callback:haxe.extern.Rest<Dynamic> -> Void, timeout:Float, args:haxe.extern.Rest<Dynamic>):Float;
	function clearInterval(id:Float):Void;
	function tick(ms:Float):Float;
	function reset():Void;
	@:overload(function(year:Float):Date { })
	@:overload(function(year:Float, month:Float):Date { })
	@:overload(function(year:Float, month:Float, day:Float):Date { })
	@:overload(function(year:Float, month:Float, day:Float, hour:Float):Date { })
	@:overload(function(year:Float, month:Float, day:Float, hour:Float, minute:Float):Date { })
	@:overload(function(year:Float, month:Float, day:Float, hour:Float, minute:Float, second:Float):Date { })
	@:overload(function(year:Float, month:Float, day:Float, hour:Float, minute:Float, second:Float, ms:Float):Date { })
	function Date():Date;
	function restore():Void;
};
typedef SinonFakeTimersStatic = { };
typedef SinonStatic = {
	var useFakeTimers : SinonFakeTimersStatic;
	var clock : SinonFakeTimers;
};
typedef SinonFakeUploadProgress = {
	var eventListeners : { var progress : Array<Dynamic>; var load : Array<Dynamic>; var abort : Array<Dynamic>; var error : Array<Dynamic>; };
	function addEventListener(event:String, listener:Event -> Dynamic):Void;
	function removeEventListener(event:String, listener:Event -> Dynamic):Void;
	function dispatchEvent(event:Event):Void;
};
typedef SinonFakeXMLHttpRequest = {
	var onCreate : SinonFakeXMLHttpRequest -> Void;
	var url : String;
	var method : String;
	var requestHeaders : Dynamic;
	var requestBody : String;
	var status : Float;
	var statusText : String;
	var async : Bool;
	var username : String;
	var password : String;
	var withCredentials : Bool;
	var upload : SinonFakeUploadProgress;
	var responseXML : Document;
	function getResponseHeader(header:String):String;
	function getAllResponseHeaders():Dynamic;
	function restore():Void;
	var useFilters : Bool;
	function addFilter(filter:String -> String -> Bool -> String -> String -> Bool):Void;
	function setResponseHeaders(headers:Dynamic):Void;
	function setResponseBody(body:String):Void;
	function respond(status:Float, headers:Dynamic, body:String):Void;
	function autoRespond(ms:Float):Void;
};
typedef SinonFakeXMLHttpRequestStatic = { };
typedef SinonStatic = {
	var useFakeXMLHttpRequest : SinonFakeXMLHttpRequestStatic;
	var FakeXMLHttpRequest : SinonFakeXMLHttpRequest;
};
typedef SinonFakeServer = {
	var autoRespond : Bool;
	var autoRespondAfter : Float;
	var fakeHTTPMethods : Bool;
	var getHTTPMethod : SinonFakeXMLHttpRequest -> String;
	var requests : Array<SinonFakeXMLHttpRequest>;
	@:overload(function(response:Array<Dynamic>):Void { })
	@:overload(function(fn:SinonFakeXMLHttpRequest -> Void):Void { })
	@:overload(function(url:String, body:String):Void { })
	@:overload(function(url:String, response:Array<Dynamic>):Void { })
	@:overload(function(url:String, fn:SinonFakeXMLHttpRequest -> Void):Void { })
	@:overload(function(method:String, url:String, body:String):Void { })
	@:overload(function(method:String, url:String, response:Array<Dynamic>):Void { })
	@:overload(function(method:String, url:String, fn:SinonFakeXMLHttpRequest -> Void):Void { })
	@:overload(function(url:js.RegExp, body:String):Void { })
	@:overload(function(url:js.RegExp, response:Array<Dynamic>):Void { })
	@:overload(function(url:js.RegExp, fn:SinonFakeXMLHttpRequest -> Void):Void { })
	@:overload(function(method:String, url:js.RegExp, body:String):Void { })
	@:overload(function(method:String, url:js.RegExp, response:Array<Dynamic>):Void { })
	@:overload(function(method:String, url:js.RegExp, fn:SinonFakeXMLHttpRequest -> Void):Void { })
	function respondWith(body:String):Void;
	function respond():Void;
	function restore():Void;
};
typedef SinonFakeServerStatic = {
	function create():SinonFakeServer;
};
typedef SinonStatic = {
	var fakeServer : SinonFakeServerStatic;
	var fakeServerWithClock : SinonFakeServerStatic;
};
typedef SinonExposeOptions = {
	@:optional
	var prefix : String;
	@:optional
	var includeFail : Bool;
};
typedef SinonAssert = {
	var failException : String;
	var fail : ?String -> Void;
	var pass : Dynamic -> Void;
	function notCalled(spy:SinonSpy):Void;
	function called(spy:SinonSpy):Void;
	function calledOnce(spy:SinonSpy):Void;
	function calledTwice(spy:SinonSpy):Void;
	function calledThrice(spy:SinonSpy):Void;
	function callCount(spy:SinonSpy, count:Float):Void;
	function callOrder(spies:haxe.extern.Rest<SinonSpy>):Void;
	function calledOn(spy:SinonSpy, obj:Dynamic):Void;
	function alwaysCalledOn(spy:SinonSpy, obj:Dynamic):Void;
	function calledWith(spy:SinonSpy, args:haxe.extern.Rest<Dynamic>):Void;
	function alwaysCalledWith(spy:SinonSpy, args:haxe.extern.Rest<Dynamic>):Void;
	function neverCalledWith(spy:SinonSpy, args:haxe.extern.Rest<Dynamic>):Void;
	function calledWithExactly(spy:SinonSpy, args:haxe.extern.Rest<Dynamic>):Void;
	function alwaysCalledWithExactly(spy:SinonSpy, args:haxe.extern.Rest<Dynamic>):Void;
	function calledWithMatch(spy:SinonSpy, args:haxe.extern.Rest<SinonMatcher>):Void;
	function alwaysCalledWithMatch(spy:SinonSpy, args:haxe.extern.Rest<SinonMatcher>):Void;
	function neverCalledWithMatch(spy:SinonSpy, args:haxe.extern.Rest<SinonMatcher>):Void;
	@:overload(function(spy:SinonSpy, exception:String):Void { })
	@:overload(function(spy:SinonSpy, exception:Dynamic):Void { })
	function threw(spy:SinonSpy):Void;
	@:overload(function(spy:SinonSpy, exception:String):Void { })
	@:overload(function(spy:SinonSpy, exception:Dynamic):Void { })
	function alwaysThrew(spy:SinonSpy):Void;
	function expose(obj:Dynamic, ?options:SinonExposeOptions):Void;
};
typedef SinonStatic = {
	var assert : SinonAssert;
};
typedef SinonMatcher = {
	function and(expr:SinonMatcher):SinonMatcher;
	function or(expr:SinonMatcher):SinonMatcher;
};
typedef SinonMatch = {
	var any : SinonMatcher;
	var defined : SinonMatcher;
	var truthy : SinonMatcher;
	var falsy : SinonMatcher;
	var bool : SinonMatcher;
	var number : SinonMatcher;
	var string : SinonMatcher;
	var object : SinonMatcher;
	var func : SinonMatcher;
	var array : SinonMatcher;
	var regexp : SinonMatcher;
	var date : SinonMatcher;
	function same(obj:Dynamic):SinonMatcher;
	function typeOf(type:String):SinonMatcher;
	function instanceOf(type:Dynamic):SinonMatcher;
	function has(property:String, ?expect:Dynamic):SinonMatcher;
	function hasOwn(property:String, ?expect:Dynamic):SinonMatcher;
};
typedef SinonStatic = {
	var match : SinonMatch;
};
typedef SinonSandboxConfig = {
	@:optional
	var injectInto : Dynamic;
	@:optional
	var properties : Array<String>;
	@:optional
	var useFakeTimers : Dynamic;
	@:optional
	var useFakeServer : Dynamic;
};
typedef SinonSandbox = {
	var clock : SinonFakeTimers;
	var requests : SinonFakeXMLHttpRequest;
	var server : SinonFakeServer;
	var spy : SinonSpyStatic;
	var stub : SinonStubStatic;
	var mock : SinonMockStatic;
	var useFakeTimers : SinonFakeTimersStatic;
	var useFakeXMLHttpRequest : SinonFakeXMLHttpRequestStatic;
	function useFakeServer():SinonFakeServer;
	function restore():Void;
};
typedef SinonSandboxStatic = {
	@:overload(function(config:SinonSandboxConfig):SinonSandbox { })
	function create():SinonSandbox;
};
typedef SinonStatic = {
	var sandbox : SinonSandboxStatic;
};
typedef SinonTestConfig = {
	@:optional
	var injectIntoThis : Bool;
	@:optional
	var injectInto : Dynamic;
	@:optional
	var properties : Array<String>;
	@:optional
	var useFakeTimers : Bool;
	@:optional
	var useFakeServer : Bool;
};
typedef SinonTestWrapper = {
	>SinonSandbox,
};
typedef SinonStatic = {
	var config : SinonTestConfig;
	function test(fn:haxe.extern.Rest<Dynamic> -> Dynamic):SinonTestWrapper;
	function testCase(tests:Dynamic):Dynamic;
};
typedef SinonStatic = {
	function createStubInstance(constructor:Dynamic):SinonStub;
	function format(obj:Dynamic):String;
	function log(message:String):Void;
	function restore(object:Dynamic):Void;
};
