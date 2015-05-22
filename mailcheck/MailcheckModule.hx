typedef IDistanceFunction = { };
typedef ISuggestFunction = { };
typedef IJQuerySuggested = { };
typedef IJQueryEmpty = { };
typedef IEmpty = { };
typedef ISuggested = { };
typedef ISplitEmail = {
	@:optional
	var topLevelDomain : String;
	@:optional
	var domain : String;
	@:optional
	var address : String;
};
typedef ISuggestion = {
	var address : String;
	var domain : String;
	var full : String;
};
typedef IOptions = {
	@:optional
	var domains : Array<String>;
	@:optional
	var topLevelDomains : Array<String>;
	@:optional
	var distanceFunction : IDistanceFunction;
	@:optional
	var suggested : haxe.extern.EitherType<ISuggested, IJQuerySuggested>;
	@:optional
	var empty : haxe.extern.EitherType<IEmpty, IJQueryEmpty>;
};
typedef Static = {
	var defaultDomains : Array<String>;
	var defaultSecondLevelDomains : Array<String>;
	var defaultTopLevelDomains : Array<String>;
	var domainThreshold : Float;
	var topLevelThreshold : Float;
	function run(opts:IOptions):Void;
	var suggest : ISuggestFunction;
	function encodeEmail(email:String):String;
	function splitEmail(email:String):ISplitEmail;
	function sift3Distance(s1:String, s2:String):Float;
	function findClosestDomain(domain:String, domains:Array<String>, ?distanceFunction:IDistanceFunction, ?threshold:Float):haxe.extern.EitherType<Bool, String>;
};
typedef JQuery = {
	function mailcheck(opts:MailcheckModule.IOptions):Void;
};
