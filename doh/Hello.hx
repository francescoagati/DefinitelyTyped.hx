typedef RemoteRobot = { };
typedef Android_webdriver_robot = {
	function downKey(sec:Dynamic, charCode:Dynamic, keyCode:Dynamic, delay:Dynamic):Void;
	function moveMouse(sec:Dynamic, x:Dynamic, y:Dynamic, delay:Dynamic, duration:Dynamic):Void;
	function pressMouse(sec:Dynamic, left:Dynamic, middle:Dynamic, right:Dynamic, delay:Dynamic):Void;
	function releaseMouse(sec:Dynamic, left:Dynamic, middle:Dynamic, right:Dynamic, delay:Dynamic):Void;
	function setDocumentBounds(sec:Dynamic, docScreenX:Dynamic, docScreenY:Dynamic, width:Dynamic, height:Dynamic):Void;
	function typeKey(sec:Dynamic, charCode:Dynamic, keyCode:Dynamic, alt:Dynamic, ctrl:Dynamic, shift:Dynamic, meta:Dynamic, delay:Dynamic, async:Dynamic):Void;
	@:overload(function(chars:Float, delay:Float, duration:Float):Void { })
	function typeKeys(chars:String, delay:Float, duration:Float):Void;
	function upKey(sec:Dynamic, charCode:Dynamic, keyCode:Dynamic, delay:Dynamic):Void;
};
typedef _nodeRunner = { };
typedef _rhinoRunner = { };
typedef _parseURLargs = {
	var isDebug : Bool;
	var noGlobals : Bool;
	var scopeMap : Array<Dynamic>;
};
typedef _browserRunner = {
	var debug : Dynamic;
	var error : Dynamic;
	var isBrowser : Bool;
	var registerUrl : Dynamic;
	var robot : Dynamic;
	function assertEqual(expected:Dynamic, actual:Dynamic, hint:String, doNotThrow:Dynamic):Void;
	function assertError(expectedError:Dynamic, scope:Dynamic, functionName:String, args:Array<Dynamic>, hint:String):Void;
	function assertFalse(condition:Dynamic, hint:String):Void;
	function assertNotEqual(notExpected:Dynamic, actual:Dynamic, hint:String):Void;
	function assertTrue(condition:Dynamic, hint:String):Void;
	function Deferred(canceller:Dynamic):Void;
	function e(expectedError:Dynamic, scope:Dynamic, functionName:String, args:Array<Dynamic>, hint:String):Void;
	function f(condition:Dynamic, hint:String):Void;
	function is(expected:Dynamic, actual:Dynamic, hint:String, doNotThrow:Dynamic):Void;
	function isNot(notExpected:Dynamic, actual:Dynamic, hint:String):Void;
	function pause():Void;
	function register(a1:Dynamic, a2:Dynamic, a3:Dynamic, a4:Dynamic, a5:Dynamic):Void;
	function registerDocTests(module:Dynamic):Void;
	@:overload(function(group:String, tests:haxe.Constraints.Function, setUp:haxe.Constraints.Function, tearDown:haxe.Constraints.Function, type:String):Void { })
	@:overload(function(group:String, tests:Dynamic, setUp:haxe.Constraints.Function, tearDown:haxe.Constraints.Function, type:String):Void { })
	function registerGroup(group:String, tests:Array<Dynamic>, setUp:haxe.Constraints.Function, tearDown:haxe.Constraints.Function, type:String):Void;
	@:overload(function(group:String, test:haxe.Constraints.Function, type:String):Void { })
	@:overload(function(group:String, test:Dynamic, type:String):Void { })
	function registerTest(group:String, test:Array<Dynamic>, type:String):Void;
	function registerTestNs(group:String, ns:Dynamic):Void;
	function registerTests(group:String, testArr:Array<Dynamic>, type:String):Void;
	function registerTestType(name:String, initProc:haxe.Constraints.Function):Void;
	function run():Void;
	function runGroup(groupName:String, idx:Float):Void;
	function runOnLoad():Void;
	function showLogPage():Void;
	function showPerfTestsPage():Void;
	function showTestPage():Void;
	function t(condition:Dynamic, hint:String):Void;
	function togglePaused():Void;
	function toggleRunAll():Void;
};
