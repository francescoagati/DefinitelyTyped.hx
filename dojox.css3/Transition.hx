typedef BeforeClear = { };
typedef BeforeStart = { };
typedef ChainedPlay = { };
typedef Clear = { };
typedef Fade = { };
typedef Flip = { };
typedef GetWaitingList = { };
typedef GroupedPlay = { };
typedef InitState = { };
typedef Play = { };
typedef Slide = { };
typedef Start = { };
typedef EndState = { };
typedef StartState = { };
typedef Playing = { };
extern class TransitionTopLevel {
	static var autoClear : Bool;
	static var deferred : Dynamic;
	static var direction : Float;
	static var duration : Float;
	static var endState : Dynamic;
	static var in_ : Bool;
	static var node : Dynamic;
	static var playing : Dynamic;
	static var startState : Dynamic;
}
typedef Fx = {
	function bounce(args:Dynamic):Dynamic;
	function expand(args:Dynamic):Dynamic;
	function flip(args:Dynamic):Dynamic;
	function puff(args:Dynamic):Dynamic;
	function rotate(args:Dynamic):Dynamic;
	function shrink(args:Dynamic):Dynamic;
};
