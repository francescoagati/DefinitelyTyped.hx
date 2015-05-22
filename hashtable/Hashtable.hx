typedef IHashtable<TKey, TValue> = {
	function put(key:TKey, value:TValue):TValue;
	function putAll(hashtable:IHashtable<TKey, TValue>, ?conflictCallback:TKey -> TValue -> TValue -> TValue):Void;
	function get(key:TKey):TValue;
	function containsKey(key:TKey):Bool;
	function containsValue(value:TValue):Bool;
	function clear():Void;
	function isEmpty():Bool;
	function keys():Array<TKey>;
	function values():Array<TValue>;
	function entries():Array<Array<Dynamic>>;
	function remove(key:TKey):TValue;
	function size():Float;
	function clone():IHashtable<TKey, TValue>;
	function each(callback:TKey -> TValue -> Void):Void;
	function equals(hashtable:IHashtable<TKey, TValue>):Bool;
	function toQueryString():String;
};
typedef IHashtableOptions<TKey> = {
	@:optional
	var hashCode : TKey -> Dynamic;
	@:optional
	var equals : TKey -> TKey -> Bool;
	@:optional
	var replaceDuplicateKey : Bool;
};
typedef IHashtableStatic = {
	@:overload(function<TKey, TValue>(options:IHashtableOptions<TKey>):IHashtable<TKey, TValue> { })
	@:overload(function<TKey, TValue>(?hashCode:TValue -> Dynamic, ?equals:TValue -> TValue -> Bool):IHashtable<TKey, TValue> { })
	function new<TKey, TValue>():IHashtable<TKey, TValue>;
};
extern class HashtableTopLevel {
	static var Hashtable : IHashtableStatic;
}
extern class HashtableTopLevel {
	static var Hashtable : IHashtableStatic;
}
