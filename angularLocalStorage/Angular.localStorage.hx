typedef ILocalStorageService = {
	function set(key:String, value:Dynamic):Dynamic;
	function get(key:String):Dynamic;
	function remove(key:String):Bool;
	function clearAll():Void;
	function bind($scope:ng.IScope, key:String, ?opts:{ @:optional
	var defaultValue : Dynamic; @:optional
	var storeName : String; }):Dynamic;
	function unbind($scope:ng.IScope, key:String, ?storeName:String):Void;
};
