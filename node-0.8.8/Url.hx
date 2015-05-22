typedef Url = {
	var href : String;
	var protocol : String;
	var auth : String;
	var hostname : String;
	var port : String;
	var host : String;
	var pathname : String;
	var search : String;
	var query : String;
	var slashes : Bool;
};
extern class UrlTopLevel {
	static function parse(urlStr:String, ?parseQueryString:Dynamic, ?slashesDenoteHost:Dynamic):Url;
	static function format(url:Url):String;
	static function resolve(from:String, to:String):String;
}
