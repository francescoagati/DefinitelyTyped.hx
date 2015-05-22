extern class HashMap<KeyType, ValueType> {
	function get(key:KeyType):ValueType;
	function set(key:KeyType, value:ValueType):Void;
	function has(key:KeyType):Bool;
	function remove(key:KeyType):Void;
	function keys():Array<KeyType>;
	function values():Array<ValueType>;
	function count():Float;
	function clear():Void;
	function forEach(callback:ValueType -> KeyType -> Void):Void;
}
