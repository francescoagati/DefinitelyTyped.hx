extern class RouterBase {
	function new(kwArgs:Dynamic):Void;
	var globMatch : js.RegExp;
	var globReplacement : String;
	var idMatch : js.RegExp;
	var idReplacement : String;
	function destroy():Void;
	function go(path:String, ?replace:Bool):Dynamic;
	@:overload(function(route:js.RegExp, callback:haxe.Constraints.Function):Dynamic { })
	function register(route:String, callback:haxe.Constraints.Function):Dynamic;
	@:overload(function(route:js.RegExp, callback:haxe.Constraints.Function):Dynamic { })
	function registerBefore(route:String, callback:haxe.Constraints.Function):Dynamic;
	function startup(defaultPath:Dynamic):Void;
}
typedef Aspect = {
	function after(target:Dynamic, methodName:String, advice:haxe.Constraints.Function, receiveArguments:Bool):Dynamic;
	function around(target:Dynamic, methodName:String, advice:haxe.Constraints.Function):Void;
	function before(target:Dynamic, methodName:String, advice:haxe.Constraints.Function):Void;
};
typedef Back = {
	function addToHistory(args:Dynamic):Void;
	function getHash():Dynamic;
	function goBack():Void;
	function goForward():Void;
	function init():Void;
};
typedef Colors = {
	var ThreeD : Dynamic;
};
typedef Currency = {
	function format(value:Float, options:dojo.currency.__FormatOptions):Dynamic;
	function parse(expression:String, options:Dynamic):Dynamic;
	function regexp(options:Dynamic):Dynamic;
};
