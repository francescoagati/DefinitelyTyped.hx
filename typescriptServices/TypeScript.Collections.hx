extern class HashTable<TKey, TValue> {
	var hash : Dynamic;
	var entries : Dynamic;
	var count : Dynamic;
	function new(capacity:Float, hash:TKey -> Float):Void;
	function set(key:TKey, value:TValue):Void;
	function add(key:TKey, value:TValue):Void;
	function containsKey(key:TKey):Bool;
	function get(key:TKey):TValue;
	function computeHashCode(key:Dynamic):Dynamic;
	function addOrSet(key:Dynamic, value:Dynamic, throwOnExistingEntry:Dynamic):Dynamic;
	function findEntry(key:Dynamic, hashCode:Dynamic):Dynamic;
	function addEntry(key:Dynamic, value:Dynamic, hashCode:Dynamic):Dynamic;
	function grow():Dynamic;
}
extern class TypeScript.CollectionsTopLevel {
	static var DefaultHashTableCapacity : Float;
	static function createHashTable<TKey, TValue>(?capacity:Float, ?hash:TKey -> Float):HashTable<TKey, TValue>;
	static function identityHashCode(value:Dynamic):Float;
	static var DefaultStringTableCapacity : Float;
	static var DefaultStringTable : StringTable;
}
extern class Enumerator {
	function atEnd():Bool;
	function moveNext():Bool;
	function item():Dynamic;
	function new(o:Dynamic):Void;
}
extern class StringTable {
	var entries : Dynamic;
	var count : Dynamic;
	function new(capacity:Float):Void;
	function addCharArray(key:Array<Float>, start:Float, len:Float):String;
	function findCharArrayEntry(key:Dynamic, start:Dynamic, len:Dynamic, hashCode:Dynamic):Dynamic;
	function addEntry(text:Dynamic, hashCode:Dynamic):Dynamic;
	function grow():Dynamic;
	static function textCharArrayEquals(text:Dynamic, array:Dynamic, start:Dynamic, length:Dynamic):Dynamic;
}
extern class TypeScript.CollectionsTopLevel {
	static var DefaultHashTableCapacity : Float;
	static function createHashTable<TKey, TValue>(?capacity:Float, ?hash:TKey -> Float):HashTable<TKey, TValue>;
	static function identityHashCode(value:Dynamic):Float;
	static var DefaultStringTableCapacity : Float;
	static var DefaultStringTable : StringTable;
}
