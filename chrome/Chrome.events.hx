typedef UrlFilter = {
	@:optional
	var schemes : Array<String>;
	@:optional
	var urlMatches : String;
	@:optional
	var pathContains : String;
	@:optional
	var hostSuffix : String;
	@:optional
	var hostPrefix : String;
	@:optional
	var hostContains : String;
	@:optional
	var urlContains : String;
	@:optional
	var querySuffix : String;
	@:optional
	var urlPrefix : String;
	@:optional
	var hostEquals : String;
	@:optional
	var urlEquals : String;
	@:optional
	var queryContains : String;
	@:optional
	var pathPrefix : String;
	@:optional
	var pathEquals : String;
	@:optional
	var pathSuffix : String;
	@:optional
	var queryEquals : String;
	@:optional
	var queryPrefix : String;
	@:optional
	var urlSuffix : String;
	@:optional
	var ports : Array<Dynamic>;
};
typedef Event = {
	function addListener(callback:haxe.Constraints.Function):Void;
	@:overload(function(ruleIdentifiers:Array<String>, callback:Array<Rule> -> Void):Void { })
	function getRules(callback:Array<Rule> -> Void):Void;
	function hasListener(callback:haxe.Constraints.Function):Void;
	function removeRules(?ruleIdentifiers:Array<String>, ?callback:haxe.Constraints.Function):Void;
	function addRules(rules:Array<Rule>, ?callback:Array<Rule> -> Void):Void;
	function removeListener(callback:haxe.Constraints.Function):Void;
	function hasListeners():Bool;
};
typedef Rule = {
	@:optional
	var priority : Float;
	var conditions : Array<Dynamic>;
	@:optional
	var id : String;
	var actions : Array<Dynamic>;
};
