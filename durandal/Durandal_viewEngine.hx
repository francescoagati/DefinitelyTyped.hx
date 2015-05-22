extern class Durandal_viewEngineTopLevel {
	static var theModule : DurandalViewEngineModule;
}
typedef DurandalViewEngineModule = {
	var viewExtension : String;
	var viewPlugin : String;
	var viewPluginParameters : String;
	function isViewUrl(url:String):Bool;
	function convertViewUrlToViewId(url:String):String;
	function convertViewIdToRequirePath(viewId:String):String;
	function parseMarkup(markup:String):Array<Node>;
	function processMarkup(markup:String):HTMLElement;
	function ensureSingleElement(allElements:Array<Node>):HTMLElement;
	function tryGetViewFromCache(id:String):HTMLElement;
	function putViewInCache(id:String, view:HTMLElement):Dynamic;
	function createView(viewId:String):JQueryPromise<HTMLElement>;
	function createFallbackView(viewId:String, requirePath:String, err:Error):JQueryPromise<HTMLElement>;
};
