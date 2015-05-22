typedef Rules = {
	function forEach(fn:Dynamic, ctx:Dynamic, context:Dynamic):Void;
};
typedef Dom = {
	function createDocument(str:String, mimetype:String):Dynamic;
	function innerXML(node:HTMLElement):Void;
	function removeChildren(node:HTMLElement):Void;
	@:overload(function(node:HTMLElement, newChildren:Array<Dynamic>):Void { })
	function replaceChildren(node:HTMLElement, newChildren:HTMLElement):Void;
	function textContent(node:HTMLElement, text:String):Void;
};
typedef GoogleSearchStore = {
	function BlogSearch():Void;
	function BookSearch():Void;
	function ImageSearch():Void;
	function LocalSearch():Void;
	function NewsSearch():Void;
	function Search():Void;
	function VideoSearch():Void;
	function WebSearch():Void;
};
