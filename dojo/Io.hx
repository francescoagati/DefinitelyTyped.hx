typedef Iframe = {
	function create(fname:String, onloadstr:String, uri:String):Void;
	function doc(iframeNode:Dynamic):Void;
	function setSrc(iframe:Dynamic, src:Dynamic, replace:Dynamic):Void;
};
typedef Script = {
	function attach(id:Dynamic, url:Dynamic, frameDocument:Dynamic):Void;
	function get(args:Dynamic):Dynamic;
	function remove(id:Dynamic, frameDocument:Dynamic):Void;
};
