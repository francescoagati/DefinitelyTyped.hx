typedef ITestGroupDescriptor = {
	var group : String;
	var items : Array<Dynamic>;
};
typedef ITestUrlDescriptor = {
	var url : String;
};
typedef IPreloadUrlDescriptor = {
	var type : String;
	var url : String;
};
typedef IPreloadContentDescriptor = {
	var type : String;
	var content : String;
};
typedef IPreloadTextDescriptor = {
	var text : String;
};
typedef IBrowser = {
	>IHarness,
	var autoRun : Bool;
	var autoScrollElementsIntoView : Bool;
	var breakOnFail : Bool;
	var coverageUnit : String;
	var disableCaching : Bool;
	var enableCodeCoverage : Bool;
	var excludeCoverageUnits : js.RegExp;
	var hostPageUrl : String;
	var includeCoverageUnits : js.RegExp;
	var maintainViewportSize : Bool;
	var runCore : String;
	var separateContext : Bool;
	var simulateEventsWith : String;
	var speedRun : Bool;
	var useStrictMode : Bool;
	var viewDOM : Bool;
	var viewportHeight : Float;
	var viewportWidth : Float;
};
typedef IBrowserExtJSCore = {
	var coverageUnit : String;
	var excludeCoverageUnits : js.RegExp;
	var installLoaderInstrumentationHook : Bool;
};
typedef IBrowserExtJS = {
	>IBrowser,
	>IBrowserExtJSCore,
	var allowExtVersionChange : Bool;
	var loaderPath : Dynamic;
	var waitForAppReady : Dynamic;
	var waitForExtReady : Dynamic;
};
typedef IBrowserSenchaTouch = {
	>IBrowser,
	>IBrowserExtJSCore,
	var loaderPath : Dynamic;
	var performSetup : Bool;
	var runCore : String;
	var transparentEx : Bool;
};
typedef IBrowserSingleton = {
	>IBrowser,
	var ExtJS : IBrowserExtJS;
	var SenchaTouch : IBrowserSenchaTouch;
};
typedef IHarnessNodeJS = {
	>IHarness,
};
extern class HarnessTopLevel {
	static var Browser : IBrowserSingleton;
	static var NodeJS : IHarnessNodeJS;
}
typedef ITest = {
	>Test.IBDD,
	>Test.IDate,
	>Test.IFunction,
	>Test.IMore,
	var isReadyTimeout : Float;
	function beginAsync(time:Float, errback:haxe.Constraints.Function):Dynamic;
	function compareObjects(obj1:Dynamic, obj2:Dynamic, ?strict:Bool, ?onlyPrimitives:Bool, ?asObjects:Bool):Bool;
	function diag(desc:String):Void;
	function done(delay:Float):Void;
	function endAsync(frame:Dynamic):Void;
	function endWait(title:String):Void;
	function fail(desc:String, annotation:Dynamic):Void;
	function getSubTest(name:String, code:ITest -> Void, ?timeout:Float):ITest;
	function is(got:Dynamic, expected:Dynamic, desc:String):Void;
	function isNot(got:Dynamic, expected:Dynamic, desc:String):Void;
	function isNotStrict(got:Dynamic, expected:Dynamic, desc:String):Void;
	function isReady():Dynamic;
	function isStrict(got:Dynamic, expected:Dynamic, desc:String):Void;
	function launchSubTest(subTest:ITest, callback:haxe.Constraints.Function):Void;
	function notOk(value:Dynamic, desc:String):Void;
	function ok(value:Dynamic, desc:String):Void;
	function pass(desc:String, annotation:Dynamic):Void;
	function subTest(desc:String, code:ITest -> Void, callback:haxe.Constraints.Function, ?timeout:Float):Void;
	function todo(why:String, code:haxe.Constraints.Function):Void;
	function typeOf(object:Dynamic):String;
	function wait(title:String, howLong:Float):Void;
};
