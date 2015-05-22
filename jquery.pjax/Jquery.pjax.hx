typedef PjaxPopStateEventObject = {
	>JQueryEventObject,
	var direction : String;
};
typedef PjaxSettings = {
	>JQueryAjaxSettings,
	@:optional
	var container : String;
	@:optional
	var push : Bool;
	@:optional
	var replace : Bool;
};
typedef JQuery = {
	@:overload(function(delegationSelector:String, ?containerSelector:String, ?options:PjaxSettings):JQuery { })
	function pjax(delegationSelector:String, ?options:PjaxSettings):JQuery;
};
typedef JQueryStatic = {
	var pjax : PjaxStatic;
};
typedef PjaxStatic = {
	var defaults : PjaxSettings;
	@:overload(function(event:JQueryEventObject, ?containerSelector:String, ?options:PjaxSettings):Void { })
	function click(event:JQueryEventObject, ?options:PjaxSettings):Void;
	@:overload(function(event:JQueryEventObject, ?containerSelector:String, ?options:PjaxSettings):Void { })
	function submit(event:JQueryEventObject, ?options:PjaxSettings):Void;
	function enable():Void;
	function disable():Void;
	function reload(container:String, ?options:PjaxSettings):JQueryXHR;
};
typedef JQuerySupport = {
	var pjax : Bool;
};
