typedef ILocalStorageServiceProvider = {
	>IServiceProvider,
	function setPrefix(prefix:String):ILocalStorageServiceProvider;
	function setStorageType(storageType:String):ILocalStorageServiceProvider;
	function setStorageCookie(exp:Float, path:String):ILocalStorageServiceProvider;
	function setStorageCookieDomain(domain:String):ILocalStorageServiceProvider;
	function setNotify(setItem:Bool, removeItem:Bool):ILocalStorageServiceProvider;
};
typedef ICookie = {
	var isSupported : Bool;
	function set(key:String, val:String):Bool;
	function get(key:String):String;
	function remove(key:String):Bool;
	function clearAll():Dynamic;
};
typedef ILocalStorageService = {
	var isSupported : Bool;
	function getStorageType():String;
	function set<T>(key:String, value:T):Bool;
	function get<T>(key:String):T;
	function keys():Array<String>;
	function remove(key:String):Bool;
	function clearAll(?regularExpression:js.RegExp):Bool;
	function bind(scope:angular.IScope, property:String, ?value:Dynamic, ?key:String):haxe.Constraints.Function;
	function deriveKey(key:String):String;
	function length():Float;
	var cookie : ICookie;
};
