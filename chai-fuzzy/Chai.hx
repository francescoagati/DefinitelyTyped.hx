typedef Assertion = {
	function like(expected:Dynamic, ?message:String):Assertion;
	function notLike(expected:Dynamic, ?message:String):Assertion;
	function containOneLike(expected:Dynamic, ?message:String):Assertion;
	function notContainOneLike(expected:Dynamic, ?message:String):Assertion;
	function jsonOf(expected:Dynamic, ?message:String):Assertion;
	function notJsonOf(expected:Dynamic, ?message:String):Assertion;
};
typedef Assert = {
	function like(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notLike(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function containOneLike(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notContainOneLike(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function jsonOf(actual:Dynamic, expected:Dynamic, ?message:String):Void;
	function notJsonOf(actual:Dynamic, expected:Dynamic, ?message:String):Void;
};
