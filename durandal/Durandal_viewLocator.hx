extern class Durandal_viewLocatorTopLevel {
	static var theModule : DurandalViewLocatorModule;
}
typedef DurandalViewLocatorModule = {
	function useConvention(?modulesPath:String, ?viewsPath:String, ?areasPath:String):Void;
	function locateViewForObject(obj:Dynamic, area:String, ?elementsToSearch:Array<HTMLElement>):JQueryPromise<HTMLElement>;
	function convertModuleIdToViewId(moduleId:String):String;
	function determineFallbackViewId(obj:Dynamic):String;
	function translateViewIdToArea(viewId:String, area:String):String;
	@:overload(function(viewUrlOrId:String, ?area:String, ?elementsToSearch:Array<HTMLElement>):JQueryPromise<HTMLElement> { })
	function locateView(view:HTMLElement, ?area:String, ?elementsToSearch:Array<HTMLElement>):JQueryPromise<HTMLElement>;
};
