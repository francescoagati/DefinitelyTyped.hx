typedef CasperModule = {
	function create(options:CasperOptions):Casper;
	function selectXPath(expression:String):Dynamic;
};
typedef EventEmitter = {
	function removeAllFilters(filter:String):Casper;
	function setFilter(filter:String, cb:haxe.Constraints.Function):Bool;
};
typedef Casper = {
	>EventEmitter,
	var test : Tester;
	function new(options:CasperOptions):Void;
	var options : CasperOptions;
	var __utils__ : ClientUtils;
	function back():Casper;
	function base64encode(url:String, ?method:String, ?data:Dynamic):String;
	function bypass(nb:Float):Dynamic;
	function click(selector:String):Bool;
	function clickLabel(label:String, ?tag:String):Bool;
	function capture(targetFilePath:String, clipRect:ClipRect):Casper;
	@:overload(function(format:String, area:String):String { })
	@:overload(function(format:String, area:ClipRect):String { })
	@:overload(function(format:String, area:Dynamic):String { })
	function captureBase64(format:String):String;
	function captureSelector(targetFile:String, selector:String):Casper;
	function clear():Casper;
	function debugHTML(?selector:String, ?outer:Bool):Casper;
	function debugPage():Casper;
	function die(message:String, ?status:Float):Casper;
	function download(url:String, ?target:String, ?method:String, ?data:Dynamic):Casper;
	function each<T>(array:Array<T>, fn:Casper -> T -> Float -> Void):Casper;
	function echo(message:String, ?style:String):Casper;
	function evaluate<T>(fn:Void -> T, args:haxe.extern.Rest<Dynamic>):T;
	function evaluateOrDie(fn:Void -> Dynamic, ?message:String, ?status:Float):Casper;
	function exit(?status:Float):Casper;
	function exists(selector:String):Bool;
	function fetchText(selector:String):String;
	function forward():Casper;
	function log(message:String, ?level:String, ?space:String):Casper;
	function fill(selector:String, values:Dynamic, ?submit:Bool):Void;
	function fillSelectors(selector:String, values:Dynamic, ?submit:Bool):Void;
	function fillXPath(selector:String, values:Dynamic, ?submit:Bool):Void;
	function getCurrentUrl():String;
	function getElementAttribute(selector:String, attribute:String):String;
	function getElementsAttribute(selector:String, attribute:String):String;
	function getElementBounds(selector:String):ElementBounds;
	function getElementsBounds(selector:String):Array<ElementBounds>;
	function getElementInfo(selector:String):ElementInfo;
	function getElementsInfo(selector:String):ElementInfo;
	function getFormValues(selector:String):Dynamic;
	function getGlobal(name:String):Dynamic;
	function getHTML(?selector:String, ?outer:Bool):String;
	function getPageContent():String;
	function getTitle():String;
	function mouseEvent(type:String, selector:String):Bool;
	function open(location:String, settings:OpenSettings):Casper;
	function reload(?then:HttpResponse -> Void):Casper;
	function repeat(times:Float, then:haxe.Constraints.Function):Casper;
	@:overload(function(test:String):Bool { })
	function resourceExists(test:haxe.Constraints.Function):Bool;
	function run(onComplete:haxe.Constraints.Function, ?time:Float):Casper;
	function scrollTo(x:Float, y:Float):Casper;
	function scrollToBottom():Casper;
	function sendKeys(selector:String, keys:String, ?options:Dynamic):Casper;
	function setHttpAuth(username:String, password:String):Casper;
	function start(?url:String, ?then:HttpResponse -> Void):Casper;
	function status(asString:Bool):Dynamic;
	function then(fn:?Casper -> Void):Casper;
	function thenBypass(nb:Float):Casper;
	function thenBypassIf(condition:Dynamic, nb:Float):Casper;
	function thenBypassUnless(condition:Dynamic, nb:Float):Casper;
	function thenClick(selector:String):Casper;
	function thenEvaluate(fn:Void -> Dynamic, args:haxe.extern.Rest<Dynamic>):Casper;
	@:overload(function(location:String, ?options:OpenSettings, ?then:HttpResponse -> Void):Casper { })
	function thenOpen(location:String, ?then:HttpResponse -> Void):Casper;
	function thenOpenAndEvaluate(location:String, ?then:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Casper;
	function toString():String;
	function unwait():Casper;
	function userAgent(agent:String):String;
	function viewport(width:Float, height:Float):Casper;
	function visible(selector:String):Bool;
	function wait(timeout:Float, ?then:haxe.Constraints.Function):Casper;
	function waitFor(testFx:haxe.Constraints.Function, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitForAlert(then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	@:overload(function(urlPattern:js.RegExp, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper { })
	function waitForPopup(urlPattern:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	@:overload(function(url:js.RegExp, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper { })
	function waitForUrl(url:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitForSelector(selector:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitWhileSelector(selector:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitForResource(testFx:haxe.Constraints.Function, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	@:overload(function(pattern:js.RegExp, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper { })
	function waitForText(pattern:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitUntilVisible(selector:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function waitWhileVisible(selector:String, ?then:haxe.Constraints.Function, ?onTimeout:haxe.Constraints.Function, ?timeout:Float):Casper;
	function warn(message:String):Casper;
	@:overload(function(frameInfo:Float, then:haxe.Constraints.Function):Casper { })
	function withFrame(frameInfo:String, then:haxe.Constraints.Function):Casper;
	@:overload(function(popupInfo:js.RegExp, step:haxe.Constraints.Function):Casper { })
	function withPopup(popupInfo:String, step:haxe.Constraints.Function):Casper;
	function zoom(factor:Float):Casper;
};
typedef HttpResponse = {
	var contentType : String;
	var headers : Array<Dynamic>;
	var id : Float;
	var redirectURL : String;
	var stage : String;
	var status : Float;
	var statusText : String;
	var time : String;
	var url : String;
};
typedef OpenSettings = {
	var method : String;
	var data : Dynamic;
	var headers : Dynamic;
};
typedef ElementBounds = {
	var top : Float;
	var left : Float;
	var width : Float;
	var height : Float;
};
typedef ElementInfo = {
	var nodeName : String;
	var attributes : Dynamic;
	var tag : String;
	var html : String;
	var text : String;
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	var visible : Bool;
};
typedef CasperOptions = {
	@:optional
	var clientScripts : Array<Dynamic>;
	@:optional
	var exitOnError : Bool;
	@:optional
	var httpStatusHandlers : Dynamic;
	@:optional
	var logLevel : String;
	@:optional
	var onAlert : haxe.Constraints.Function;
	@:optional
	var onDie : haxe.Constraints.Function;
	@:optional
	var onError : haxe.Constraints.Function;
	@:optional
	var onLoadError : haxe.Constraints.Function;
	@:optional
	var onPageInitialized : haxe.Constraints.Function;
	@:optional
	var onResourceReceived : haxe.Constraints.Function;
	@:optional
	var onResourceRequested : haxe.Constraints.Function;
	@:optional
	var onStepComplete : haxe.Constraints.Function;
	@:optional
	var onStepTimeout : haxe.Constraints.Function;
	@:optional
	var onTimeout : haxe.Constraints.Function;
	@:optional
	var onWaitTimeout : haxe.Constraints.Function;
	@:optional
	var page : WebPage;
	@:optional
	var pageSettings : Dynamic;
	@:optional
	var remoteScripts : Array<Dynamic>;
	@:optional
	var safeLogs : Bool;
	@:optional
	var silentErrors : Bool;
	@:optional
	var stepTimeout : Float;
	@:optional
	var timeout : Float;
	@:optional
	var verbose : Bool;
	@:optional
	var viewportSize : Dynamic;
	@:optional
	var retryTimeout : Float;
	@:optional
	var waitTimeout : Float;
};
typedef ClientUtils = {
	function echo(message:String):Void;
	function encode(contents:String):Void;
	function exists(selector:String):Void;
	function findAll(selector:String):Void;
	function findOne(selector:String):Void;
	function getBase64(url:String, ?method:String, ?data:Dynamic):Void;
	function getBinary(url:String, ?method:String, ?data:Dynamic):Void;
	function getDocumentHeight():Void;
	function getElementBounds(selector:String):Void;
	function getElementsBounds(selector:String):Void;
	function getElementByXPath(expression:String, ?scope:HTMLElement):Void;
	function getElementsByXPath(expression:String, ?scope:HTMLElement):Void;
	function getFieldValue(inputName:String):Void;
	function getFormValues(selector:String):Void;
	function mouseEvent(type:String, selector:String):Void;
	function removeElementsByXPath(expression:String):Void;
	function sendAJAX(url:String, ?method:String, ?data:Dynamic, ?async:Bool):Void;
	function visible(selector:String):Void;
};
typedef Colorizer = {
	function colorize(text:String, styleName:String):Void;
	function format(text:String, style:Dynamic):Void;
};
typedef Tester = {
	function assert(condition:Bool, ?message:String):Dynamic;
	function assertDoesntExist(selector:String, ?message:String):Dynamic;
	function assertElementCount(selctor:String, expected:Float, ?message:String):Dynamic;
	function assertEquals(testValue:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function assertEval(fn:haxe.Constraints.Function, message:String, arguments:Dynamic):Dynamic;
	function assertEvalEquals(fn:haxe.Constraints.Function, expected:Dynamic, ?message:String, ?arguments:Dynamic):Dynamic;
	function assertExists(selector:String, ?message:String):Dynamic;
	function assertFalsy(subject:Dynamic, ?message:String):Dynamic;
	function assertField(inputName:String, expected:String, ?message:String):Dynamic;
	function assertFieldName(inputName:String, expected:String, ?message:String, ?options:Dynamic):Dynamic;
	function assertFieldCSS(cssSelector:String, expected:String, ?message:String):Dynamic;
	function assertFieldXPath(xpathSelector:String, expected:String, ?message:String):Dynamic;
	function assertHttpStatus(status:Float, ?message:String):Dynamic;
	function assertMatch(subject:Dynamic, pattern:js.RegExp, ?message:String):Dynamic;
	function assertNot(subject:Dynamic, ?message:String):Dynamic;
	function assertNotEquals(testValue:Dynamic, expected:Dynamic, ?message:String):Dynamic;
	function assertNotVisible(selector:String, ?message:String):Dynamic;
	function assertRaises(fn:haxe.Constraints.Function, args:Array<Dynamic>, ?message:String):Dynamic;
	function assertSelectorDoesntHaveText(selector:String, text:String, ?message:String):Dynamic;
	function assertSelectorExists(selector:String, ?message:String):Dynamic;
	function assertSelectorHasText(selector:String, text:String, ?message:String):Dynamic;
	function assertResourceExists(testFx:haxe.Constraints.Function, ?message:String):Dynamic;
	function assertTextExists(expected:String, ?message:String):Dynamic;
	function assertTextDoesntExist(unexpected:String, message:String):Dynamic;
	function assertTitle(expected:String, ?message:String):Dynamic;
	function assertTitleMatch(pattern:js.RegExp, ?message:String):Dynamic;
	function assertTruthy(subject:Dynamic, ?message:String):Dynamic;
	function assertType(input:Dynamic, type:String, ?message:String):Dynamic;
	function assertInstanceOf(input:Dynamic, ctor:haxe.Constraints.Function, ?message:String):Dynamic;
	@:overload(function(pattern:js.RegExp, ?message:String):Dynamic { })
	function assertUrlMatch(pattern:String, ?message:String):Dynamic;
	function assertVisible(selector:String, ?message:String):Dynamic;
	@:overload(function(description:String, suite:haxe.Constraints.Function):Dynamic { })
	@:overload(function(description:String, planned:Float, config:Dynamic):Dynamic { })
	@:overload(function(description:String, config:Dynamic):Dynamic { })
	function begin(description:String, planned:Float, suite:haxe.Constraints.Function):Dynamic;
	function colorize(message:String, style:String):Dynamic;
	function comment(message:String):Dynamic;
	function done(?expected:Float):Dynamic;
	function error(message:String):Dynamic;
	function fail(message:String):Dynamic;
	function formatMessage(message:String, style:String):Dynamic;
	function getFailures():Cases;
	function getPasses():Cases;
	function info(message:String):Dynamic;
	function pass(message:String):Dynamic;
	function renderResults(exit:Bool, status:Float, save:String):Dynamic;
	function setup(fn:haxe.Constraints.Function):Dynamic;
	function skip(nb:Float, message:String):Dynamic;
	function tearDown(fn:haxe.Constraints.Function):Dynamic;
};
typedef Cases = {
	var length : Float;
	var cases : Array<Case>;
};
typedef Case = {
	var success : Bool;
	var type : String;
	var standard : String;
	var file : String;
	var values : CaseValues;
};
typedef CaseValues = {
	var subject : Bool;
	var expected : Bool;
};
typedef Utils = {
	function betterTypeOf(input:Dynamic):Dynamic;
	function dump(value:Dynamic):Dynamic;
	function fileExt(file:String):Dynamic;
	function fillBlanks(text:String, pad:Float):Dynamic;
	function format(f:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function getPropertyPath(obj:Dynamic, path:String):Dynamic;
	function inherits(ctor:Dynamic, superCtor:Dynamic):Dynamic;
	function isArray(value:Dynamic):Dynamic;
	function isCasperObject(value:Dynamic):Dynamic;
	function isClipRect(value:Dynamic):Dynamic;
	function isFalsy(subject:Dynamic):Dynamic;
	function isFunction(value:Dynamic):Dynamic;
	function isJsFile(file:String):Dynamic;
	function isNull(value:Dynamic):Dynamic;
	function isNumber(value:Dynamic):Dynamic;
	function isObject(value:Dynamic):Dynamic;
	function isRegExp(value:Dynamic):Dynamic;
	function isString(value:Dynamic):Dynamic;
	function isTruthy(subject:Dynamic):Dynamic;
	function isType(what:Dynamic, type:String):Dynamic;
	function isUndefined(value:Dynamic):Dynamic;
	function isWebPage(what:Dynamic):Dynamic;
	function mergeObjects(origin:Dynamic, add:Dynamic):Dynamic;
	function node(name:String, attributes:Dynamic):Dynamic;
	function serialize(value:Dynamic):Dynamic;
	function unique(array:Array<Dynamic>):Dynamic;
};
