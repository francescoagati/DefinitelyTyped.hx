extern class __MethodOptions {
	function new():Void;
	var method : String;
}
extern class __BaseOptions {
	function new():Void;
	var checkString : String;
	var data : String;
	var frameDoc : Dynamic;
	var handleAs : String;
	var jsonp : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
extern class __Options {
	function new():Void;
	var checkString : String;
	var data : String;
	var frameDoc : Dynamic;
	var handleAs : String;
	var jsonp : String;
	var method : String;
	var preventCache : Bool;
	var query : String;
	var timeout : Float;
}
typedef Xhr = { };
typedef Xhr = {
	function del(url:String, options:dojo.request.xhr.__BaseOptions):dojo.request.__Promise;
	function get(url:String, options:dojo.request.xhr.__BaseOptions):dojo.request.__Promise;
	function post(url:String, options:dojo.request.xhr.__BaseOptions):dojo.request.__Promise;
	function put(url:String, options:dojo.request.xhr.__BaseOptions):dojo.request.__Promise;
};
