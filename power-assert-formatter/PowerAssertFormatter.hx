typedef Options = {
	@:optional
	var lineDiffThreshold : Float;
	@:optional
	var maxDepth : Float;
	@:optional
	var outputOffset : Float;
	@:optional
	var anonymous : String;
	@:optional
	var circular : String;
	@:optional
	var lineSeparator : String;
	@:optional
	var ambiguousEastAsianCharWidth : Float;
	@:optional
	var widthOf : haxe.Constraints.Function;
	@:optional
	var stringify : haxe.Constraints.Function;
	@:optional
	var diff : haxe.Constraints.Function;
	@:optional
	var writerClass : { function new():Dynamic; };
	@:optional
	var renderers : Array<Dynamic>;
};
typedef Formatter = { };
extern class PowerAssertFormatterTopLevel {
	static function defaultOptions():Options;
}
