typedef StoreJSStatic = {
	function set(key:String, value:Dynamic):Dynamic;
	function get(key:String):Dynamic;
	function remove(key:String):Void;
	function clear():Void;
	var enabled : Bool;
	var disabled : Bool;
	function transact(key:String, defaultValue:Dynamic, ?transactionFn:Dynamic -> Void):Void;
	function getAll():Dynamic;
	function serialize(value:Dynamic):String;
	function deserialize(value:String):Dynamic;
};
extern class StorejsTopLevel {
	static var store : StoreJSStatic;
}
