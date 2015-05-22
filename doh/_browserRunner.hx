typedef _groups = { };
typedef _testTypes = {
	function perf(group:Dynamic, tObj:Dynamic, type:Dynamic):Void;
};
typedef Robot = {
	var doc : Dynamic;
	var mouseWheelSize : Float;
	var window : Dynamic;
	function initRobot(url:String):Void;
	function keyDown(charOrCode:Float, delay:Float):Void;
	function keyPress(charOrCode:Float, delay:Float, modifiers:Dynamic, asynchronous:Bool):Void;
	function keyUp(charOrCode:Float, delay:Float):Void;
	function killRobot():Void;
	function mouseClick(buttons:Dynamic, delay:Float):Void;
	function mouseMove(x:Float, y:Float, delay:Float, duration:Float, absolute:Bool):Void;
	@:overload(function(node:HTMLElement, delay:Float, duration:Float, offsetX:Float, offsetY:Float):Void { })
	@:overload(function(node:haxe.Constraints.Function, delay:Float, duration:Float, offsetX:Float, offsetY:Float):Void { })
	function mouseMoveAt(node:String, delay:Float, duration:Float, offsetX:Float, offsetY:Float):Void;
	function mouseMoveTo(point:Dynamic, delay:Float, duration:Float, absolute:Bool):Void;
	function mousePress(buttons:Dynamic, delay:Float):Void;
	function mouseRelease(buttons:Dynamic, delay:Float):Void;
	function mouseWheel(wheelAmt:Float, delay:Float, duration:Float):Void;
	@:overload(function(node:HTMLElement, delay:Float):Void { })
	@:overload(function(node:haxe.Constraints.Function, delay:Float):Void { })
	function scrollIntoView(node:String, delay:Float):Void;
	function sequence(f:haxe.Constraints.Function, delay:Float, duration:Float):Void;
	function setClipboard(data:String, format:String):Void;
	function startRobot():Dynamic;
	@:overload(function(chars:Float, delay:Float, duration:Float):Void { })
	function typeKeys(chars:String, delay:Float, duration:Float):Void;
	function waitForPageToLoad(submitActions:haxe.Constraints.Function):Dynamic;
};
typedef Main = {
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
