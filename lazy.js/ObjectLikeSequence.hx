extern class ObjectLikeSequenceTopLevel {
	static function define(methodName:Array<String>, overrides:Dynamic):haxe.Constraints.Function;
}
typedef ObjectLikeSequence<T> = {
	>Sequence<T>,
	function assign(other:Dynamic):ObjectLikeSequence<T>;
	function defaults(defaults:Dynamic):ObjectLikeSequence<T>;
	function functions():Sequence<T>;
	function get(property:String):ObjectLikeSequence<T>;
	function invert():ObjectLikeSequence<T>;
	function keys():Sequence<String>;
	function omit(properties:Array<String>):ObjectLikeSequence<T>;
	function pairs():Sequence<T>;
	function pick(properties:Array<String>):ObjectLikeSequence<T>;
	function toArray():Array<T>;
	function toObject():Dynamic;
	function values():Sequence<T>;
};
