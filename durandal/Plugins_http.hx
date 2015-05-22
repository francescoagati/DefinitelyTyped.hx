extern class Plugins_httpTopLevel {
	static var callbackParam : String;
	static function toJSON(data:Dynamic):String;
	static function get(url:String, ?query:Dynamic, ?headers:Dynamic):JQueryPromise<Dynamic>;
	static function jsonp(url:String, ?query:Dynamic, ?callbackParam:String, ?headers:Dynamic):JQueryPromise<Dynamic>;
	static function post(url:String, data:Dynamic, ?headers:Dynamic):JQueryPromise<Dynamic>;
	static function put(url:String, data:Dynamic, ?headers:Dynamic):JQueryPromise<Dynamic>;
	static function remove(url:String, ?query:Dynamic, ?headers:Dynamic):JQueryPromise<Dynamic>;
}
