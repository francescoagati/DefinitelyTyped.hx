typedef Url = {
	var href : String;
	var protocol : String;
	var auth : String;
	var hostname : String;
	var port : String;
	var host : String;
	var pathname : String;
	var search : String;
	var query : Dynamic;
	var slashes : Bool;
	@:optional
	var hash : String;
	@:optional
	var path : String;
};
typedef UrlOptions = {
	@:optional
	var protocol : String;
	@:optional
	var auth : String;
	@:optional
	var hostname : String;
	@:optional
	var port : String;
	@:optional
	var host : String;
	@:optional
	var pathname : String;
	@:optional
	var search : String;
	@:optional
	var query : Dynamic;
	@:optional
	var hash : String;
	@:optional
	var path : String;
};
extern class UrlTopLevel {
	static function parse(urlStr:String, ?parseQueryString:Bool, ?slashesDenoteHost:Bool):Url;
	static function format(url:UrlOptions):String;
	static function resolve(from:String, to:String):String;
}
