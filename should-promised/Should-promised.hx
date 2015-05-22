typedef ShouldAssertion = {
	var Promise : ShouldAssertion;
	var fulfilled : ShouldAssertion;
	var rejected : ShouldAssertion;
	@:overload(function(message:Dynamic):ShouldAssertion { })
	function rejectedWith(message:haxe.extern.EitherType<String, haxe.extern.EitherType<haxe.Constraints.Function, js.RegExp>>, ?properties:Dynamic):ShouldAssertion;
	var finally : ShouldAssertion;
	var eventually : ShouldAssertion;
};
