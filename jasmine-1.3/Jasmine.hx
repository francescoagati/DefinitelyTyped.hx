typedef Any = {
	function new(expectedClass:Dynamic):Dynamic;
	function jasmineMatches(other:Dynamic):Bool;
	function jasmineToString():String;
};
typedef ObjectContaining = {
	function new(sample:Dynamic):Dynamic;
	function jasmineMatches(other:Dynamic, mismatchKeys:Array<Dynamic>, mismatchValues:Array<Dynamic>):Bool;
	function jasmineToString():String;
};
typedef Block = {
	function new(env:Env, func:SpecFunction, spec:Spec):Dynamic;
	function execute(onComplete:Void -> Void):Void;
};
typedef WaitsBlock = {
	>Block,
	function new(env:Env, timeout:Float, spec:Spec):Dynamic;
};
typedef WaitsForBlock = {
	>Block,
	function new(env:Env, timeout:Float, latchFunction:SpecFunction, message:String, spec:Spec):Dynamic;
};
typedef Clock = {
	function reset():Void;
	function tick(millis:Float):Void;
	function runFunctionsWithinRange(oldMillis:Float, nowMillis:Float):Void;
	function scheduleFunction(timeoutKey:Dynamic, funcToCall:Void -> Void, millis:Float, recurring:Bool):Void;
	function useMock():Void;
	function installMock():Void;
	function uninstallMock():Void;
	var real : Void;
	function assertInstalled():Void;
	function isInstalled():Bool;
	var installed : Dynamic;
};
typedef Env = {
	var setTimeout : Dynamic;
	var clearTimeout : Void;
	var setInterval : Dynamic;
	var clearInterval : Void;
	var updateInterval : Float;
	var currentSpec : Spec;
	var matchersClass : Matchers;
	function version():Dynamic;
	function versionString():String;
	function nextSpecId():Float;
	function addReporter(reporter:Reporter):Void;
	function execute():Void;
	function describe(description:String, specDefinitions:Void -> Void):Suite;
	function beforeEach(beforeEachFunction:Void -> Void):Void;
	function currentRunner():Runner;
	function afterEach(afterEachFunction:Void -> Void):Void;
	function xdescribe(desc:String, specDefinitions:Void -> Void):XSuite;
	function it(description:String, func:Void -> Void):Spec;
	function xit(desc:String, func:Void -> Void):XSpec;
	function compareRegExps_(a:js.RegExp, b:js.RegExp, mismatchKeys:Array<String>, mismatchValues:Array<String>):Bool;
	function compareObjects_(a:Dynamic, b:Dynamic, mismatchKeys:Array<String>, mismatchValues:Array<String>):Bool;
	function equals_(a:Dynamic, b:Dynamic, mismatchKeys:Array<String>, mismatchValues:Array<String>):Bool;
	function contains_(haystack:Dynamic, needle:Dynamic):Bool;
	function addEqualityTester(equalityTester:Dynamic -> Dynamic -> Env -> Array<String> -> Array<String> -> Bool):Void;
	function specFilter(spec:Spec):Bool;
};
typedef FakeTimer = {
	function new():Dynamic;
	function reset():Void;
	function tick(millis:Float):Void;
	function runFunctionsWithinRange(oldMillis:Float, nowMillis:Float):Void;
	function scheduleFunction(timeoutKey:Dynamic, funcToCall:Void -> Void, millis:Float, recurring:Bool):Void;
};
typedef HtmlReporter = {
	function new():Dynamic;
};
typedef Result = {
	var type : String;
};
typedef NestedResults = {
	>Result,
	var description : String;
	var totalCount : Float;
	var passedCount : Float;
	var failedCount : Float;
	var skipped : Bool;
	function rollupCounts(result:NestedResults):Void;
	function log(values:Dynamic):Void;
	function getItems():Array<Result>;
	function addResult(result:Result):Void;
	function passed():Bool;
};
typedef MessageResult = {
	>Result,
	var values : Dynamic;
	var trace : Trace;
};
typedef ExpectationResult = {
	>Result,
	var matcherName : String;
	function passed():Bool;
	var expected : Dynamic;
	var actual : Dynamic;
	var message : String;
	var trace : Trace;
};
typedef Trace = {
	var name : String;
	var message : String;
	var stack : Dynamic;
};
typedef PrettyPrinter = {
	function new():Dynamic;
	function format(value:Dynamic):Void;
	function iterateObject(obj:Dynamic, fn:String -> Bool -> Void):Void;
	function emitScalar(value:Dynamic):Void;
	function emitString(value:String):Void;
	function emitArray(array:Array<Dynamic>):Void;
	function emitObject(obj:Dynamic):Void;
	function append(value:Dynamic):Void;
};
typedef StringPrettyPrinter = {
	>PrettyPrinter,
};
typedef Queue = {
	function new(env:Dynamic):Dynamic;
	var env : Env;
	var ensured : Array<Bool>;
	var blocks : Array<Block>;
	var running : Bool;
	var index : Float;
	var offset : Float;
	var abort : Bool;
	function addBefore(block:Block, ?ensure:Bool):Void;
	function add(block:Dynamic, ?ensure:Bool):Void;
	function insertNext(block:Dynamic, ?ensure:Bool):Void;
	function start(?onComplete:Void -> Void):Void;
	function isRunning():Bool;
	function next_():Void;
	function results():NestedResults;
};
typedef Matchers = {
	function new(env:Env, actual:Dynamic, spec:Env, ?isNot:Bool):Dynamic;
	var env : Env;
	var actual : Dynamic;
	var spec : Env;
	@:optional
	var isNot : Bool;
	function message():Dynamic;
	function toBe(expected:Dynamic):Bool;
	function toEqual(expected:Dynamic):Bool;
	function toMatch(expected:Dynamic):Bool;
	function toBeDefined():Bool;
	function toBeUndefined():Bool;
	function toBeNull():Bool;
	function toBeNaN():Bool;
	function toBeTruthy():Bool;
	function toBeFalsy():Bool;
	function toHaveBeenCalled():Bool;
	function toHaveBeenCalledWith(params:haxe.extern.Rest<Dynamic>):Bool;
	function toContain(expected:Dynamic):Bool;
	function toBeLessThan(expected:Dynamic):Bool;
	function toBeGreaterThan(expected:Dynamic):Bool;
	function toBeCloseTo(expected:Dynamic, precision:Dynamic):Bool;
	function toContainHtml(expected:String):Bool;
	function toContainText(expected:String):Bool;
	function toThrow(?expected:Dynamic):Bool;
	var not : Matchers;
	var Any : Any;
};
typedef Reporter = {
	function reportRunnerStarting(runner:Runner):Void;
	function reportRunnerResults(runner:Runner):Void;
	function reportSuiteResults(suite:Suite):Void;
	function reportSpecStarting(spec:Spec):Void;
	function reportSpecResults(spec:Spec):Void;
	function log(str:String):Void;
};
typedef MultiReporter = {
	>Reporter,
	function addReporter(reporter:Reporter):Void;
};
typedef Runner = {
	function new(env:Env):Dynamic;
	function execute():Void;
	function beforeEach(beforeEachFunction:SpecFunction):Void;
	function afterEach(afterEachFunction:SpecFunction):Void;
	function finishCallback():Void;
	function addSuite(suite:Suite):Void;
	function add(block:Block):Void;
	function specs():Array<Spec>;
	function suites():Array<Suite>;
	function topLevelSuites():Array<Suite>;
	function results():NestedResults;
};
typedef SpecFunction = { };
typedef SuiteOrSpec = {
	var id : Float;
	var env : Env;
	var description : String;
	var queue : Queue;
};
typedef Spec = {
	>SuiteOrSpec,
	function new(env:Env, suite:Suite, description:String):Dynamic;
	var suite : Suite;
	var afterCallbacks : Array<SpecFunction>;
	var spies_ : Array<Spy>;
	var results_ : NestedResults;
	var matchersClass : Matchers;
	function getFullName():String;
	function results():NestedResults;
	function log(arguments:Dynamic):Dynamic;
	function runs(func:SpecFunction):Spec;
	function addToQueue(block:Block):Void;
	function addMatcherResult(result:Result):Void;
	function expect(actual:Dynamic):Dynamic;
	function waits(timeout:Float):Spec;
	function waitsFor(latchFunction:SpecFunction, ?timeoutMessage:String, ?timeout:Float):Spec;
	function fail(?e:Dynamic):Void;
	function getMatchersClass_():Matchers;
	function addMatchers(matchersPrototype:Dynamic):Void;
	function finishCallback():Void;
	function finish(?onComplete:Void -> Void):Void;
	function after(doAfter:SpecFunction):Void;
	function execute(?onComplete:Void -> Void):Dynamic;
	function addBeforesAndAftersToQueue():Void;
	function explodes():Void;
	function spyOn(obj:Dynamic, methodName:String, ignoreMethodDoesntExist:Bool):Spy;
	function removeAllSpies():Void;
};
typedef XSpec = {
	var id : Float;
	function runs():Void;
};
typedef Suite = {
	>SuiteOrSpec,
	function new(env:Env, description:String, specDefinitions:Void -> Void, parentSuite:Suite):Dynamic;
	var parentSuite : Suite;
	function getFullName():String;
	function finish(?onComplete:Void -> Void):Void;
	function beforeEach(beforeEachFunction:SpecFunction):Void;
	function afterEach(afterEachFunction:SpecFunction):Void;
	function results():NestedResults;
	function add(suiteOrSpec:SuiteOrSpec):Void;
	function specs():Array<Spec>;
	function suites():Array<Suite>;
	function children():Array<Dynamic>;
	function execute(?onComplete:Void -> Void):Void;
};
typedef XSuite = {
	function execute():Void;
};
typedef Spy = {
	var identity : String;
	var calls : Array<Dynamic>;
	var mostRecentCall : { var args : Array<Dynamic>; };
	var argsForCall : Array<Dynamic>;
	var wasCalled : Bool;
	var callCount : Float;
	function andReturn(value:Dynamic):Spy;
	function andCallThrough():Spy;
	function andCallFake(fakeFunc:haxe.Constraints.Function):Spy;
};
typedef Util = {
	function inherit(childClass:haxe.Constraints.Function, parentClass:haxe.Constraints.Function):Dynamic;
	function formatException(e:Dynamic):Dynamic;
	function htmlEscape(str:String):String;
	function argsToArray(args:Dynamic):Dynamic;
	function extend(destination:Dynamic, source:Dynamic):Dynamic;
};
typedef JsApiReporter = {
	>Reporter,
	var started : Bool;
	var finished : Bool;
	var result : Dynamic;
	var messages : Dynamic;
	function new():Dynamic;
	function suites():Array<Suite>;
	function summarize_(suiteOrSpec:SuiteOrSpec):Dynamic;
	function results():Dynamic;
	function resultsForSpec(specId:Dynamic):Dynamic;
	function log(str:Dynamic):Dynamic;
	function resultsForSpecs(specIds:Dynamic):Dynamic;
	function summarizeResult_(result:Dynamic):Dynamic;
};
typedef Jasmine = {
	var Spec : Spec;
	var Clock : Clock;
	var util : Util;
};
extern class JasmineTopLevel {
	static var Clock : Clock;
	static function any(aclass:Dynamic):Any;
	static function objectContaining(sample:Dynamic):ObjectContaining;
	static function createSpy(name:String, ?originalFn:haxe.Constraints.Function):Spy;
	static function createSpyObj(baseName:String, methodNames:Array<Dynamic>):Dynamic;
	static function createSpyObj<T>(baseName:String, methodNames:Array<Dynamic>):T;
	static function pp(value:Dynamic):String;
	static function getEnv():Env;
	static var HtmlReporter : Dynamic;
}
