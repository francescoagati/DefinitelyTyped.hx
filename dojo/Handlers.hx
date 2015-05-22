typedef Iframe = { };
typedef Iframe = {
	function create(name:Dynamic, onloadstr:Dynamic, uri:Dynamic):Dynamic;
	function doc(iframeNode:Dynamic):Dynamic;
	function get(url:String, options:dojo.request.iframe.__BaseOptions):dojo.request.__Promise;
	function post(url:String, options:dojo.request.iframe.__BaseOptions):dojo.request.__Promise;
	function setSrc(_iframe:Dynamic, src:Dynamic, replace:Dynamic):Void;
};
