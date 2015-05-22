typedef Converters = {
	function html(valueToEncode:String):String;
	function attr(valueToEncode:String):String;
	function url(valueToEncode:String):String;
};
typedef Views = {
	var converters : Converters;
	@:overload(function(name:String, tagOptions:Dynamic):Dynamic { })
	@:overload(function(namedTags:Dynamic):Dynamic { })
	function tags(name:String, tagFn:Dynamic -> Dynamic):Dynamic;
	@:overload(function(namedHelpers:Dynamic, ?parentTemplate:Dynamic):Dynamic { })
	function helpers(name:String, helper:Dynamic):Dynamic;
};
typedef Template = {
	function render(?data:Dynamic):String;
};
typedef NamedTemplate = { };
typedef Render = { };
typedef RenderStatic = { };
typedef JQuery = {
	var render : JsRender.Render;
};
typedef JQueryStatic = {
	var render : JsRender.RenderStatic;
	var views : JsRender.Views;
	@:overload(function(name:String, markupOrSelector:String):JsRender.Template { })
	@:overload(function(namedTemplates:Dynamic):Dynamic { })
	function templates(markupOrSelector:String):JsRender.Template;
};
