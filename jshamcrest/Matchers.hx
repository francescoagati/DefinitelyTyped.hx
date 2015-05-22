extern class MatchersTopLevel {
	static function empty():JsHamcrest.SimpleMatcher;
	static function everyItem(matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function hasItem(matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function hasItems(matchersOrValues:haxe.extern.Rest<Dynamic>):JsHamcrest.SimpleMatcher;
	static function hasSize(matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function isIn(items:haxe.extern.Rest<Dynamic>):JsHamcrest.SimpleMatcher;
	static function oneOf(items:haxe.extern.Rest<Dynamic>):JsHamcrest.SimpleMatcher;
	static function allOf(matchersOrValues:haxe.extern.Rest<Dynamic>):JsHamcrest.SimpleMatcher;
	static function anyOf(matchersOrValues:haxe.extern.Rest<Dynamic>):JsHamcrest.SimpleMatcher;
	static function anything():JsHamcrest.SimpleMatcher;
	static function both(matcherOrValue:Dynamic):JsHamcrest.CombinableMatcher;
	static function either(matcherOrValue:Dynamic):JsHamcrest.CombinableMatcher;
	static function equalTo(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function is(matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function nil():JsHamcrest.SimpleMatcher;
	static function not(matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function raises(exceptionName:String):JsHamcrest.SimpleMatcher;
	static function raisesAnything():JsHamcrest.SimpleMatcher;
	static function sameAs(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function truth():JsHamcrest.SimpleMatcher;
	static function between(start:Dynamic):JsHamcrest.BetweenBuilder;
	static function closeTo(expected:Float, ?delta:Float):JsHamcrest.SimpleMatcher;
	static function divisibleBy(divisor:Float):JsHamcrest.SimpleMatcher;
	static function even():JsHamcrest.SimpleMatcher;
	static function greaterThan(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function greaterThanOrEqualTo(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function lessThan(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function lessThanOrEqualTo(expected:Dynamic):JsHamcrest.SimpleMatcher;
	static function notANumber():JsHamcrest.SimpleMatcher;
	static function odd():JsHamcrest.SimpleMatcher;
	static function zero():JsHamcrest.SimpleMatcher;
	static function bool():JsHamcrest.SimpleMatcher;
	static function func():JsHamcrest.SimpleMatcher;
	static function hasFunction(functionName:String):JsHamcrest.SimpleMatcher;
	static function hasMember(memberName:String, ?matcherOrValue:Dynamic):JsHamcrest.SimpleMatcher;
	static function instanceOf(clazz:Dynamic):JsHamcrest.SimpleMatcher;
	static function number():JsHamcrest.SimpleMatcher;
	static function object():JsHamcrest.SimpleMatcher;
	static function string():JsHamcrest.SimpleMatcher;
	static function typeOf(typeName:String):JsHamcrest.SimpleMatcher;
	static function containsString(str:String):JsHamcrest.SimpleMatcher;
	static function emailAddress():JsHamcrest.SimpleMatcher;
	static function endsWith(str:String):JsHamcrest.SimpleMatcher;
	static function equalIgnoringCase(str:String):JsHamcrest.SimpleMatcher;
	static function matches(regex:js.RegExp):JsHamcrest.SimpleMatcher;
	static function startsWith(str:String):JsHamcrest.SimpleMatcher;
}
