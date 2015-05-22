typedef Framing = {
	function disallow():Void;
	function restrictToOrigin(origin:String):Void;
	function allowAll():Void;
};
typedef Content = {
	function allowEval():Void;
	function allowInlineStyles():Void;
	function allowInlineScripts():Void;
	function allowSameOriginForAll():Void;
	function allowDataUrlForAll():Void;
	function allowOriginForAll(origin:String):Void;
	function allowImageOrigin(origin:String):Void;
	function allowFrameOrigin(origin:String):Void;
	function allowContentTypeSniffing():Void;
	function allowAllContentOrigin():Void;
	function allowAllContentDataUrl():Void;
	function allowAllContentSameOrigin():Void;
	function disallowAll():Void;
	function disallowInlineStyles():Void;
	function disallowEval():Void;
	function disallowInlineScripts():Void;
	function disallowFont():Void;
	function disallowObject():Void;
	function disallowAllContent():Void;
};
