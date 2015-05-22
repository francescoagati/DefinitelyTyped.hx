typedef IHashSet<TValue> = {
	function add(value:TValue):Void;
	function addAll(arr:Array<TValue>):Void;
	function contains(value:TValue):Bool;
	function clear():Void;
	function isEmpty():Bool;
	function values():Array<TValue>;
	function remove(value:TValue):Void;
	function size():Float;
	function clone():IHashSet<TValue>;
	function isSubsetOf(set:IHashSet<TValue>):Bool;
	function intersection(set:IHashSet<TValue>):IHashSet<TValue>;
	function union(set:IHashSet<TValue>):IHashSet<TValue>;
	function complement(set:IHashSet<TValue>):IHashSet<TValue>;
};
typedef IHashSetStatic = {
	@:overload(function<TValue>(options:IHashtableOptions<TValue>):IHashSet<TValue> { })
	@:overload(function<TValue>(?hashCode:TValue -> Dynamic, ?equals:TValue -> TValue -> Bool):IHashSet<TValue> { })
	function new<TValue>():IHashSet<TValue>;
};
extern class HashsetTopLevel {
	static var HashSet : IHashSetStatic;
}
extern class HashsetTopLevel {
	static var HashSet : IHashSetStatic;
}
