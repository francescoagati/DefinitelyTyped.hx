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
