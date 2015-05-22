extern class TrackerTopLevel {
	static var ComputationFunction : Tracker.Computation -> Void;
	static var IterationCallback : T -> Float -> Mongo.Cursor<T> -> Void;
	static function Computation():Void;
	static var Dependency : DependencyStatic;
	static var active : Bool;
	static function afterFlush(callback:haxe.Constraints.Function):Void;
	static function autorun(runFunc:Tracker.Computation -> Void, ?options:{ @:optional
	var onError : haxe.Constraints.Function; }):Tracker.Computation;
	static var currentComputation : Tracker.Computation;
	static function flush():Void;
	static function nonreactive(func:haxe.Constraints.Function):Void;
	static function onInvalidate(callback:haxe.Constraints.Function):Void;
}
typedef Computation = {
	var firstRun : Bool;
	function invalidate():Void;
	var invalidated : Bool;
	function onInvalidate(callback:haxe.Constraints.Function):Void;
	function stop():Void;
	var stopped : Bool;
};
typedef DependencyStatic = {
	function new():Dependency;
};
typedef Dependency = {
	function changed():Void;
	function depend(?fromComputation:Tracker.Computation):Bool;
	function hasDependents():Bool;
};
extern class TrackerTopLevel {
	static var ComputationFunction : Tracker.Computation -> Void;
	static var IterationCallback : T -> Float -> Mongo.Cursor<T> -> Void;
	static function Computation():Void;
	static var Dependency : DependencyStatic;
	static var active : Bool;
	static function afterFlush(callback:haxe.Constraints.Function):Void;
	static function autorun(runFunc:Tracker.Computation -> Void, ?options:{ @:optional
	var onError : haxe.Constraints.Function; }):Tracker.Computation;
	static var currentComputation : Tracker.Computation;
	static function flush():Void;
	static function nonreactive(func:haxe.Constraints.Function):Void;
	static function onInvalidate(callback:haxe.Constraints.Function):Void;
}
