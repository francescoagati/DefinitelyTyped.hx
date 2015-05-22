typedef JStorageOptions = {
	var TTL : Float;
};
typedef JStorageReadonlyStore = { };
typedef JStorageStatic = {
	function set<TValue>(key:String, value:TValue, ?options:JStorageOptions):TValue;
	function get<TValue>(key:String, ?defaultIfNotFound:TValue):TValue;
	function deleteKey(key:String):Bool;
	function setTTL(key:String, ttl:Float):Bool;
	function getTTL(key:String):Float;
	function flush():Bool;
	function storageObj():JStorageReadonlyStore;
	function index():Array<String>;
	function storageSize():Float;
	function currentBackend():Storage;
	function storageAvailable():Bool;
	@:overload(function<TValue>(key:String, callback:String -> TValue -> Void):Void { })
	function listenKeyChange(key:String, callback:String -> Dynamic -> Void):Void;
	function stopListening(key:String, ?callback:haxe.Constraints.Function):Void;
	@:overload(function<TValue>(channel:String, callback:String -> TValue -> Void):Void { })
	function subscribe(channel:String, callback:String -> Dynamic -> Void):Void;
	function publish(channel:String, payload:Dynamic):Void;
	function reInit():Void;
};
typedef JQueryStatic = {
	var jStorage : JStorageStatic;
};
