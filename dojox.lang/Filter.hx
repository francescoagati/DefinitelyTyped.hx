extern class FilterTopLevel {
	static var bag : Dynamic;
	static var filter : haxe.Constraints.Function;
}
typedef Mixin = { };
typedef Rearrange = { };
typedef Aop = {
	var after : Dynamic;
	var afterReturning : Dynamic;
	var afterThrowing : Dynamic;
	var around : Dynamic;
	var before : Dynamic;
};
typedef General = {
	var after : Dynamic;
	var augment : Dynamic;
	var before : Dynamic;
	var override : Dynamic;
	var shuffle : Dynamic;
	var tap : Dynamic;
	var wrap : Dynamic;
};
typedef Aspect = {
	@:overload(function(obj:Dynamic, method:js.RegExp, advice:Dynamic):Void { })
	@:overload(function(obj:Dynamic, method:Array<Dynamic>, advice:Dynamic):Void { })
	@:overload(function(obj:Dynamic, method:String, advice:haxe.Constraints.Function):Void { })
	@:overload(function(obj:Dynamic, method:js.RegExp, advice:haxe.Constraints.Function):Void { })
	@:overload(function(obj:Dynamic, method:Array<Dynamic>, advice:haxe.Constraints.Function):Void { })
	@:overload(function(obj:Dynamic, method:String, advice:Array<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, method:js.RegExp, advice:Array<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, method:Array<Dynamic>, advice:Array<Dynamic>):Void { })
	function advise(obj:Dynamic, method:String, advice:Dynamic):Void;
	function adviseRaw(obj:Dynamic, methods:Array<Dynamic>, advices:Array<Dynamic>):Void;
	function getContext():Void;
	function getContextStack():Void;
	function proceed():Void;
	function unadvise(handle:Dynamic):Void;
};
