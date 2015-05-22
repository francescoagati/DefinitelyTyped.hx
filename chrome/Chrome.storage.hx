typedef StorageArea = {
	@:overload(function(keys:String, callback:Float -> Void):Void { })
	@:overload(function(keys:Array<String>, callback:Float -> Void):Void { })
	function getBytesInUse(callback:Float -> Void):Void;
	function clear(?callback:haxe.Constraints.Function):Void;
	function set(items:Dynamic, ?callback:haxe.Constraints.Function):Void;
	@:overload(function(keys:Array<String>, ?callback:haxe.Constraints.Function):Void { })
	function remove(keys:String, ?callback:haxe.Constraints.Function):Void;
	@:overload(function(keys:String, callback:Dynamic -> Void):Void { })
	@:overload(function(keys:Array<String>, callback:Dynamic -> Void):Void { })
	@:overload(function(keys:Dynamic, callback:Dynamic -> Void):Void { })
	function get(callback:Dynamic -> Void):Void;
};
typedef StorageChange = {
	@:optional
	var newValue : Dynamic;
	@:optional
	var oldValue : Dynamic;
};
typedef Local = {
	>StorageArea,
	var QUOTA_BYTES : Float;
};
typedef Sync = {
	>StorageArea,
	var MAX_SUSTAINED_WRITE_OPERATIONS_PER_MINUTE : Float;
	var QUOTA_BYTES : Float;
	var QUOTA_BYTES_PER_ITEM : Float;
	var MAX_ITEMS : Float;
	var MAX_WRITE_OPERATIONS_PER_HOUR : Float;
};
typedef StorageChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:Dynamic -> String -> Void):Void;
};
extern class Chrome.storageTopLevel {
	static var local : Local;
	static var sync : Sync;
	static var onChanged : StorageChangedEvent;
}
