typedef MvcModel = { };
typedef Nls = { };
typedef Model = { };
typedef SimpleModel = { };
typedef Constraints = {
	function getAllSelectedChildren(view:dojox.app.View, selChildren:Array<Dynamic>):Dynamic;
	function getSelectedChild(view:dojox.app.View, constraint:Dynamic):Dynamic;
	function register(constraint:Dynamic):Void;
	function setSelectedChild(view:dojox.app.View, constraint:Dynamic, child:dojox.app.View):Void;
};
typedef Config = {
	function configMerge(target:Dynamic, source:Dynamic):Dynamic;
	function configProcessHas(source:Dynamic):Dynamic;
};
typedef Layout = {
	function layoutChildren(container:HTMLElement, dim:Dynamic, children:Array<Dynamic>, changedRegionId:String, changedRegionSize:Float):Void;
	function marginBox2contentBox(node:HTMLElement, mb:Dynamic):Dynamic;
};
typedef Hash = {
	function addViewParams(hash:String, view:String, params:Dynamic):Dynamic;
	function buildWithParams(hash:String, params:Dynamic):Dynamic;
	function getParamObj(params:Dynamic, viewPart:String):Dynamic;
	function getParams(hash:String):Dynamic;
	function getParamString(params:Dynamic):Dynamic;
	function getTarget(hash:String, defaultView:String):Dynamic;
};
