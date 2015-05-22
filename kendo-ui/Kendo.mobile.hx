extern class Application extends Observable {
	function new(?element:Dynamic, ?options:ApplicationOptions):Void;
	function init(?element:Dynamic, ?options:ApplicationOptions):Void;
	var options : ApplicationOptions;
	function hideLoading():Void;
	function navigate(url:String, ?transition:String):Void;
	function scroller():kendo.mobile.ui.Scroller;
	function showLoading():Void;
	function view():kendo.mobile.ui.View;
	var router : kendo.Router;
	var pane : kendo.mobile.ui.Pane;
}
typedef ApplicationOptions = {
	@:optional
	var hideAddressBar : Bool;
	@:optional
	var updateDocumentTitle : Bool;
	@:optional
	var initial : String;
	@:optional
	var layout : String;
	@:optional
	var loading : String;
	@:optional
	var platform : String;
	@:optional
	var serverNavigation : Bool;
	@:optional
	var transition : String;
};
typedef ApplicationEvent = {
	var sender : Application;
};
extern class Kendo.mobileTopLevel {
	static function init(selector:String):Void;
	static function init(element:JQuery):Void;
	static function init(element:Element):Void;
}
