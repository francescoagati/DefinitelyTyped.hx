typedef ParameterMap = { };
typedef Url = {
	function attr(option:String):String;
	@:overload(function(parameterName:String):String { })
	function param():ParameterMap;
	function segment(position:Float):String;
	@:overload(function(parameterName:String):String { })
	function fparam():ParameterMap;
	function fsegment(position:Float):String;
};
extern class PurlTopLevel {
	static function purl():purl.Url;
	static function purl(someUrl:String):purl.Url;
}
extern class PurlTopLevel {
	static function purl():purl.Url;
	static function purl(someUrl:String):purl.Url;
}
