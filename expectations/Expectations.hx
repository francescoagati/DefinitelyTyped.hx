typedef IExpectations = {
	function addAssertion(name:String, matcher:haxe.Constraints.Function):Void;
};
typedef IAssertions = {
	function pass(?message:String):Dynamic;
	function fail(message:String):Dynamic;
};
extern class Expect {
	var value : Dynamic;
	var assertions : IAssertions;
	var expr : Dynamic;
	var parent : Expect;
	var not : Expect;
	function new(value:Dynamic, ?assertions:IAssertions, ?expr:Dynamic, ?parent:Expect):Void;
	function generateMessage(value:Dynamic, expr:Dynamic, toDo:String, ?otherVal:Dynamic):String;
	function toEqual(val:Dynamic):Dynamic;
	function toNotEqual(val:Dynamic):Dynamic;
	function toBe(val:Dynamic):Dynamic;
	function toBeTruthy():Dynamic;
	function toBeFalsey():Dynamic;
	function toBeFalsy():Dynamic;
	function toBeGreaterThan(val:Dynamic):Dynamic;
	function toBeLessThan(val:Dynamic):Dynamic;
	function toContain(val:Dynamic):Dynamic;
	function toMatch(val:Dynamic):Dynamic;
	function toBeDefined():Dynamic;
	function toBeUndefined():Dynamic;
	function toBeNull():Dynamic;
	function toThrow():Dynamic;
	function pass():Dynamic;
	function fail(?why:String, ?what:Dynamic):Dynamic;
}
