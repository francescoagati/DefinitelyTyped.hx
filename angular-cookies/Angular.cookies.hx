typedef ICookiesService = { };
typedef ICookiesService = {
	function get(key:String):String;
	function getObject(key:String):Dynamic;
	function getAll():Dynamic;
	function put(key:String, value:String, ?options:Dynamic):Void;
	function putObject(key:String, value:Dynamic, ?options:Dynamic):Void;
	function remove(key:String, ?options:Dynamic):Void;
};
