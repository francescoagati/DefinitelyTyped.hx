typedef ViewportOptions = {
	@:optional
	var allowPan : Bool;
	@:optional
	var allowZoom : Bool;
};
typedef ITemplate = {
	function compile(html:String):Dynamic;
	@:overload(function(template:Dynamic, data:Dynamic):Dynamic { })
	function render(template:JQuery, data:Dynamic):Dynamic;
};
extern class Template {
	@:overload(function(element:JQueryStatic):Void { })
	function new(element:HTMLElement):Void;
	@:overload(function(container:JQueryStatic):Dynamic { })
	function render(container:HTMLElement):Dynamic;
	function dispose():Void;
}
typedef TemplateStatic = {
	@:overload(function(element:JQueryStatic):Template { })
	function new(element:HTMLElement):Template;
};
extern class TemplateProvider {
	function new():Void;
	function getTemplateClass(widget:Dynamic):TemplateStatic;
	function getDefaultTemplate(widget:Dynamic):Void;
	function supportDefaultTemplate():Bool;
}
typedef NotifyOptions = {
	var message : String;
	@:optional
	var type : String;
	@:optional
	var displayTime : Float;
	var hiddenAction : Void -> Dynamic;
};
extern class DevExpress.uiTopLevel {
	static var themes : { @:overload(function(themeName:String):Void { })
	function current():String; };
	static function initViewport(options:ViewportOptions):Void;
	static function notyfy(options:Dynamic):Void;
	static function notify(message:String, ?type:String, ?displayTime:Float):Void;
}
