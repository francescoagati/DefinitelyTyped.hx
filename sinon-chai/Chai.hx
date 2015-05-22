typedef LanguageChains = {
	var always : Assertion;
};
typedef Assertion = {
	var called : Assertion;
	function callCount(count:Float):Assertion;
	var calledOnce : Assertion;
	var calledTwice : Assertion;
	var calledThrice : Assertion;
	function calledBefore(anotherSpy:Sinon.SinonSpy):Assertion;
	function calledAfter(anotherSpy:Sinon.SinonSpy):Assertion;
	var calledWithNew : Assertion;
	function calledOn(context:Dynamic):Assertion;
	function calledWith(args:haxe.extern.Rest<Dynamic>):Assertion;
	function calledWithExactly(args:haxe.extern.Rest<Dynamic>):Assertion;
	function calledWithMatch(args:haxe.extern.Rest<Dynamic>):Assertion;
	function returned(obj:Dynamic):Assertion;
	function thrown(?obj:haxe.extern.EitherType<Error, haxe.extern.EitherType<Dynamic, String>>):Assertion;
};
