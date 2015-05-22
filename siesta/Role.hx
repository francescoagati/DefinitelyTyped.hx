typedef IHasTarget = {
	@:optional
	var passTargetToNext : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var el : Dynamic;
};
typedef Click = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
};
typedef Done = {
	>IAction,
	@:optional
	var delay : Float;
};
typedef DoubleClick = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
};
typedef DoubleTap = {
	>IAction,
	>Role.IHasTarget,
};
typedef Drag = {
	>IAction,
	@:optional
	var by : Dynamic;
	@:optional
	var dragOnly : Bool;
	@:optional
	var source : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef Eval = {
	>IAction,
	@:optional
	var options : Dynamic;
};
typedef LongPress = {
	>IAction,
	>Role.IHasTarget,
};
typedef MouseDown = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
};
typedef MouseUp = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
};
typedef MoveCursor = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var by : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef MoveCursorTo = {
	>IAction,
	>Role.IHasTarget,
};
typedef RightClick = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
};
typedef Swipe = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var direction : String;
};
typedef Tap = {
	>IAction,
	>Role.IHasTarget,
	@:optional
	var options : Dynamic;
	@:optional
	var text : String;
};
typedef Type = {
	>IAction,
	>Role.IHasTarget,
};
typedef Wait = {
	>IAction,
	@:optional
	var args : Array<Dynamic>;
	@:optional
	var delay : Float;
	@:optional
	var timeout : Float;
	@:optional
	var waitFor : String;
};
typedef IBDD = {
	function any(clsConstructor:haxe.Constraints.Function):Dynamic;
	function ddescribe(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
	function describe(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
	function expect(value:Dynamic):BDD.Expectation;
	function iit(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
	function it(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
	function xdescribe(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
	function xit(name:String, code:haxe.Constraints.Function, ?timeout:Float):Void;
};
