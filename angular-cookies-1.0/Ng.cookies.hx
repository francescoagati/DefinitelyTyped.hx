typedef ICookiesService = { };
typedef ICookieStoreService = {
	function get(key:String):Dynamic;
	function put(key:String, value:Dynamic):Void;
	function remove(key:String):Void;
};
