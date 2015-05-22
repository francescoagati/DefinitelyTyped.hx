typedef IDotDotDotOptions = {
	@:optional
	var ellipsis : String;
	@:optional
	var wrap : String;
	@:optional
	var fallbackToLetter : Bool;
	@:optional
	var after : JQuery;
	@:optional
	var watch : Bool;
	@:optional
	var height : Float;
	@:optional
	var tolerance : Float;
	@:optional
	function callback(isTruncated:Bool, orgContent:Dynamic):Void;
	@:optional
	var lastCharacter : IDotDotDotOptionsLastCharacter;
};
typedef IDotDotDotOptionsLastCharacter = {
	@:optional
	var remove : Array<String>;
	@:optional
	var noEllipsis : Array<String>;
};
