typedef JQuery = {
	@:overload(function(?params:Dynamic, ?merge_mode:Float):Void { })
	function pushState(?params:String, ?merge_mode:Float):Void;
	@:overload(function(?coerce:Bool):Dynamic { })
	function getState(?key:String, ?coerce:Bool):Dynamic;
	function removeState(key:haxe.extern.Rest<Dynamic>):Void;
};
typedef ParamFragment = {
	var noEscape : ?String -> Void;
	function ajaxCrawlable(?state:Bool):Bool;
};
typedef JQueryDeparam = {
	function querystring(?url:String, ?coerce:Bool):Dynamic;
	function fragment(?url:String, ?coerce:Bool):Dynamic;
};
typedef EventObject = {
	>JQueryEventObject,
	var fragment : String;
	function getState(?key:String, ?coerce:Bool):Dynamic;
};
typedef JQueryParam = {
	@:overload(function(?url:String, ?coerce:Dynamic, ?merge_mode:Float):String { })
	function querystring(?url:String, ?coerce:Bool, ?merge_mode:Float):String;
	var fragment : JQueryBbq.ParamFragment;
	function sorted(obj:Dynamic, ?traditional:Bool):String;
};
typedef JQueryStatic = {
	var bbq : JQueryBbq.JQuery;
	var deparam : JQueryBbq.JQueryDeparam;
	function elemUrlAttr(?tag_attr:Dynamic):Dynamic;
};
typedef JQuery = {
	function querystring(?attr:Dynamic, ?params:Dynamic, ?merge_mode:Float):JQuery;
	function fragment(?attr:Dynamic, ?params:Dynamic, ?merge_mode:Float):JQuery;
	@:overload(function(handler:JQueryBbq.EventObject -> Dynamic):JQuery { })
	function hashchange(?eventData:Dynamic, ?handler:JQueryBbq.EventObject -> Dynamic):JQuery;
};
