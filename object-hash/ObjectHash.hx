typedef IOptions = {
	@:optional
	var algorithm : String;
	@:optional
	var encoding : String;
	@:optional
	var excludeValues : Bool;
};
typedef HashTableItem = {
	var value : Dynamic;
	var count : Float;
};
typedef HashTableItemWithKey = {
	>HashTableItem,
	var hash : String;
};
typedef HashTable = {
	function add(values:haxe.extern.Rest<Dynamic>):HashTable;
	function remove(values:haxe.extern.Rest<Dynamic>):HashTable;
	function hasKey(key:String):Bool;
	function getValue(key:String):Dynamic;
	function getCount(key:String):Float;
	function table():{ };
	function toArray():Array<HashTableItemWithKey>;
	function reset():HashTable;
};
typedef HashTableStatic = { };
typedef Hash = {
	function sha1(object:Dynamic):String;
	function keys(object:Dynamic):String;
	function MD5(object:Dynamic):String;
	function keysMD5(object:Dynamic):String;
	var HashTable : HashTableStatic;
};
extern class ObjectHashTopLevel {
	static var HashStatic : Hash;
}
