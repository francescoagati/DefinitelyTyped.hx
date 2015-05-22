extern class __FormatAbsoluteOptions {
	function new():Void;
	var decimal : String;
	var group : String;
	var places : Float;
	var round : Float;
}
extern class __IntegerRegexpFlags {
	function new():Void;
	var groupSize : Float;
	var groupSize2 : Float;
	var separator : String;
	var signed : Bool;
}
extern class __FormatOptions {
	function new():Void;
	var fractional : Bool;
	var locale : String;
	var pattern : String;
	var places : Float;
	var round : Float;
	var type : String;
}
extern class __RealNumberRegexpFlags {
	function new():Void;
	var decimal : String;
	var eSigned : Bool;
	var exponent : Bool;
	var fractional : Bool;
	var places : Float;
}
extern class __ParseOptions {
	function new():Void;
	var fractional : Bool;
	var locale : String;
	var pattern : String;
	var strict : Bool;
	var type : String;
}
extern class __RegexpOptions {
	function new():Void;
	var locale : String;
	var pattern : String;
	var places : Float;
	var strict : Bool;
	var type : String;
}
typedef Parser = {
	function construct(ctor:haxe.Constraints.Function, node:HTMLElement, mixin:Dynamic, options:Dynamic, scripts:Array<HTMLElement>, inherited:Dynamic):Dynamic;
	function instantiate(nodes:Array<Dynamic>, mixin:Dynamic, options:Dynamic):Dynamic;
	function parse(rootNode:HTMLElement, options:Dynamic):Dynamic;
	function scan(root:HTMLElement, options:Dynamic):dojo.promise.Promise<Dynamic>;
};
typedef Regexp = {
	@:overload(function(arr:Array<Dynamic>, re:haxe.Constraints.Function, nonCapture:Bool):Dynamic { })
	function buildGroupRE(arr:Dynamic, re:haxe.Constraints.Function, nonCapture:Bool):Dynamic;
	function escapeString(str:String, except:String):Dynamic;
	function group(expression:String, nonCapture:Bool):String;
};
typedef Require = {
	var dynamic : Float;
	var load : Dynamic;
	function normalize(id:Dynamic):Dynamic;
};
typedef Robotx = {
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
