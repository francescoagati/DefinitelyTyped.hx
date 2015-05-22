typedef _nodeDataCache = { };
extern class Stateful {
	function new():Void;
	var inherited : { };
	function get(name:String):Dynamic;
	function postscript(params:Dynamic):Void;
	function set(name:String, value:Dynamic):Dynamic;
	function watch(property:String, callback:{ }):{ function unwatch():Void; };
}
