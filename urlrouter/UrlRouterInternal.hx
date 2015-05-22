typedef ServerRequest = {
	>http.ServerRequest,
	var params : Dynamic;
};
typedef ServerResponse = {
	>http.ServerResponse,
};
typedef App = {
	function get(urlpattern:String, handler:HttpHandler):Void;
	function post(urlpattern:String, handler:HttpHandler):Void;
	function put(urlpattern:String, handler:HttpHandler):Void;
	function head(urlpattern:String, handler:HttpHandler):Void;
	function delete(urlpattern:String, handler:HttpHandler):Void;
	function options(urlpattern:String, handler:HttpHandler):Void;
	function trace(urlpattern:String, handler:HttpHandler):Void;
	function copy(urlpattern:String, handler:HttpHandler):Void;
	function lock(urlpattern:String, handler:HttpHandler):Void;
	function mkcol(urlpattern:String, handler:HttpHandler):Void;
	function move(urlpattern:String, handler:HttpHandler):Void;
	function propfind(urlpattern:String, handler:HttpHandler):Void;
	function proppatch(urlpattern:String, handler:HttpHandler):Void;
	function unlock(urlpattern:String, handler:HttpHandler):Void;
	function report(urlpattern:String, handler:HttpHandler):Void;
	function mkactivity(urlpattern:String, handler:HttpHandler):Void;
	function checkout(urlpattern:String, handler:HttpHandler):Void;
	function merge(urlpattern:String, handler:HttpHandler):Void;
	function m-search(urlpattern:String, handler:HttpHandler):Void;
	function notify(urlpattern:String, handler:HttpHandler):Void;
	function subscribe(urlpattern:String, handler:HttpHandler):Void;
	function unsubscribe(urlpattern:String, handler:HttpHandler):Void;
	function patch(urlpattern:String, handler:HttpHandler):Void;
	function search(urlpattern:String, handler:HttpHandler):Void;
	function all(urlpattern:String, handler:HttpHandler):Void;
	function redirect(urlpattern:String, to:String):Void;
};
typedef Options = {
	@:optional
	var paramsName : String;
	@:optional
	var pageNotFound : ServerRequest -> ServerResponse -> Void;
	@:optional
	var errorHandler : Error -> ServerRequest -> ServerResponse -> Void;
};
typedef HttpHandler = { };
extern class UrlRouterInternalTopLevel {
	static function _UrlRouterfunc(handler:App -> Void, ?options:Dynamic):Void;
}
