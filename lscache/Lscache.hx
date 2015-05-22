typedef LSCache = {
	function set(key:String, value:Dynamic, ?time:Float):Void;
	function get(key:String):Dynamic;
	function remove(key:String):Void;
};
extern class LscacheTopLevel {
	static var lscache : LSCache;
}
