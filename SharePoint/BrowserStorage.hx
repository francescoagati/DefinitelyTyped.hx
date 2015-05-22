typedef CachedStorage = {
	function getItem(key:String):String;
	function setItem(key:String, value:String):Dynamic;
	function removeItem(key:String):Void;
	function clead():Void;
	var length : Float;
};
extern class BrowserStorageTopLevel {
	static var local : CachedStorage;
	static var session : CachedStorage;
}
