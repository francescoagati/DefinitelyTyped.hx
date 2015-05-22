typedef DescribeTo = { };
typedef DescribeValueTo = { };
typedef SelfDescribing = {
	var describeTo : DescribeTo;
};
extern class Description {
	function append(text:Dynamic):Description;
	function appendDescriptionOf(selfDescribingObject:SelfDescribing):Description;
	function appendList(start:String, separator:String, end:String, list:Array<Dynamic>):Description;
	function appendLiteral(literal:Dynamic):Description;
	function appendValueList(start:String, separator:String, end:String, list:Array<SelfDescribing>):Description;
	function get():String;
}
typedef Matches = { };
typedef Matcher = {
	>SelfDescribing,
	var matches : Matches;
	var describeValueTo : DescribeValueTo;
};
typedef MatcherConfig = {
	var matches : Matches;
	var describeTo : DescribeTo;
	@:optional
	var describeValueTo : DescribeValueTo;
};
extern class SimpleMatcher {
	var matches : Matches;
	var describeTo : DescribeTo;
	var describeValueTo : DescribeValueTo;
	function new(config:MatcherConfig):Void;
}
extern class CombinableMatcher extends SimpleMatcher {
	function and(matcherOrValue:Dynamic):CombinableMatcher;
	function or(matcherOrValue:Dynamic):CombinableMatcher;
}
extern class JsHamcrestTopLevel {
	static var version : String;
	static function isMatcher(obj:Dynamic):Bool;
	static function EqualTo(factory:Matcher -> Matcher):Dynamic -> Matcher;
}
