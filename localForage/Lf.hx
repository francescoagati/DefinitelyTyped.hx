typedef ILocalForage<T> = {
	function clear(callback:IErrorCallback):Void;
	function iterate(iterateCallback:IIterateCallback<T>):Void;
	function key(keyIndex:Float, callback:IKeyCallback):Void;
	function keys(callback:IKeysCallback):Void;
	function length(callback:INumberCallback):Void;
	@:overload(function(key:String):IPromise<T> { })
	function getItem(key:String, callback:ICallback<T>):Void;
	@:overload(function(key:String, value:T):IPromise<T> { })
	function setItem(key:String, value:T, callback:ICallback<T>):Void;
	@:overload(function(key:String):IPromise<T> { })
	function removeItem(key:String, callback:IErrorCallback):Void;
};
typedef ICallback<T> = { };
typedef IIterateCallback<T> = { };
typedef IErrorCallback = { };
typedef IKeyCallback = { };
typedef IKeysCallback = { };
typedef INumberCallback = { };
typedef IPromise<T> = {
	function then(callback:ICallback<T>):Void;
};
