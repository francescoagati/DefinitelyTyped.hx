typedef Assertion = {
	function become(expected:Dynamic):Assertion;
	var rejected : Assertion;
	function rejectedWith(expected:Dynamic):Assertion;
	function notify(fn:haxe.Constraints.Function):Assertion;
};
typedef LanguageChains = {
	var eventually : Assertion;
};
typedef Assert = {
	var eventually : Assert;
	function isFulfilled(promise:Dynamic, ?message:String):Void;
	function becomes(promise:Dynamic, expected:Dynamic, ?message:String):Void;
	function doesNotBecome(promise:Dynamic, expected:Dynamic, ?message:String):Void;
	@:overload(function(promise:Dynamic, expected:Dynamic, ?message:String):Void { })
	@:overload(function(promise:Dynamic, match:js.RegExp, ?message:String):Void { })
	function isRejected(promise:Dynamic, ?message:String):Void;
};
