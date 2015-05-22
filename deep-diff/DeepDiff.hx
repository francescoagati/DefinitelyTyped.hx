typedef IDiff = {
	var kind : String;
	var path : Array<String>;
	var lhs : Dynamic;
	var rhs : Dynamic;
	@:optional
	var index : Float;
	@:optional
	var item : IDiff;
};
typedef IAccumulator = {
	function push(diff:IDiff):Void;
	var length : Float;
};
typedef IPrefilter = { };
typedef IDeepDiff = {
	@:overload(function(lhs:Dynamic, rhs:Dynamic, ?prefilter:IPrefilter, ?acc:IAccumulator):Array<IDiff> { })
	function diff():IDiff;
	function observableDiff(lhs:Dynamic, rhs:Dynamic, changes:haxe.Constraints.Function, ?prefilter:IPrefilter, ?path:Array<String>, ?key:String, ?stack:Array<Dynamic>):Void;
	function applyDiff(target:Dynamic, source:Dynamic, filter:haxe.Constraints.Function):Void;
	function applyChange(target:Dynamic, source:Dynamic, change:IDiff):Void;
	function revertChange(target:Dynamic, source:Dynamic, change:IDiff):Void;
	function isConflict():Bool;
	function noConflict():IDeepDiff;
};
