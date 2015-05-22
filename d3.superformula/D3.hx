typedef SuperformulaPath = {
	function superformulaPath(params:Array<Float>, n:Float, diameter:Float):Superformula;
};
typedef SuperformulaType = {
	var m : Float;
	var n1 : Float;
	var n2 : Float;
	var n3 : Float;
	var a : Float;
	var b : Float;
};
typedef Superformula = {
	function type(any:Dynamic):Dynamic;
	function param(name:String, value:Float):Superformula;
	function size(x:Float):Superformula;
	function segments(x:Float):Superformula;
};
typedef Base = {
	>Selectors,
	var superformula : Superformula;
	var superformulaPath : SuperformulaPath;
	var superformulaTypes : Array<SuperformulaType>;
};
