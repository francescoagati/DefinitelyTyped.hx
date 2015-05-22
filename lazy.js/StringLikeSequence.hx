extern class StringLikeSequenceTopLevel {
	static function define(methodName:Array<String>, overrides:Dynamic):haxe.Constraints.Function;
	static var Lazy : LazyJS.LazyStatic;
}
typedef StringLikeSequence = {
	>SequenceBaser<String>,
	function charAt(index:Float):String;
	function charCodeAt(index:Float):Float;
	function contains(value:String):Bool;
	function endsWith(suffix:String):Bool;
	@:overload(function(count:Float):StringLikeSequence { })
	function first():String;
	function indexOf(substring:String, ?startIndex:Float):Float;
	@:overload(function(count:Float):StringLikeSequence { })
	function last():String;
	function lastIndexOf(substring:String, ?startIndex:Float):Float;
	function mapString(mapFn:MapStringCallback):StringLikeSequence;
	function match(pattern:js.RegExp):StringLikeSequence;
	function reverse():StringLikeSequence;
	@:overload(function(delimiter:js.RegExp):StringLikeSequence { })
	function split(delimiter:String):StringLikeSequence;
	function startsWith(prefix:String):Bool;
	function substring(start:Float, ?stop:Float):StringLikeSequence;
	function toLowerCase():StringLikeSequence;
	function toUpperCase():StringLikeSequence;
};
