typedef ILayoutController = {
	var viewReleased : JQueryCallback;
	function init(options:InitLayoutControllerOptions):Void;
	function activate():Void;
	function deactivate():Void;
	function showView(viewInfo:Dynamic, ?direction:String):JQueryPromise<Dynamic>;
};
typedef ILayoutControllerRegistration = {
	>IDevice,
	var name : String;
	var controller : ILayoutController;
	@:optional
	var root : Bool;
};
typedef InitLayoutControllerOptions = {
	@:optional
	var $viewPort : JQuery;
	@:optional
	var $hiddenBag : JQuery;
	@:optional
	var navigationManager : framework.StackBasedNavigationManager;
};
extern class DefaultLayoutController {
	var viewReleased : JQueryCallback;
	function new(?options:{ var layoutTemplateName : String; }):Void;
	function init(options:InitLayoutControllerOptions):Void;
	function activate():Void;
	function deactivate():Void;
	function showView(viewInfo:Dynamic, ?direction:String):JQueryPromise<Dynamic>;
}
typedef CommandManagerOptions = {
	@:optional
	var globalCommands : Array<framework.DxCommand>;
	@:optional
	var commandMapping : framework.CommandMapping;
};
extern class CommandManager {
	var globalCommands : Array<framework.DxCommand>;
	var commandMapping : framework.CommandMapping;
	function new(?options:CommandManagerOptions):Void;
	function layoutCommands($markup:JQuery, ?extraCommands:Dynamic):Void;
}
typedef ITemplateEngine = {
	@:overload(function(template:Element, model:Dynamic):Void { })
	@:overload(function(template:JQuery, model:Dynamic):Void { })
	function applyTemplate(template:String, model:Dynamic):Void;
};
extern class KnockoutJSTemplateEngine {
	function new():Void;
	@:overload(function(template:Element, model:Dynamic):Void { })
	@:overload(function(template:JQuery, model:Dynamic):Void { })
	function applyTemplate(template:String, model:Dynamic):Void;
}
typedef TransitionExecutorOptions = {
	@:optional
	var type : String;
	@:optional
	var source : JQuery;
	@:optional
	var destination : JQuery;
};
extern class TransitionExecutor {
	var container : JQuery;
	function new(container:JQuery, options:TransitionExecutorOptions):Void;
	function finalize():Void;
	function exec():JQueryPromise<TransitionExecutorOptions>;
	static function create(container:JQuery, options:TransitionExecutorOptions):TransitionExecutor;
}
typedef ViewEngineOptions = {
	var $root : JQuery;
	var device : IDevice;
	@:optional
	var commandManager : CommandManager;
	@:optional
	var templateEngine : ITemplateEngine;
	@:optional
	var dataOptionsAttributeName : String;
};
extern class ViewEngineBase {
	var $root : JQuery;
	var device : IDevice;
	var commandManager : CommandManager;
	var templateEngine : ITemplateEngine;
	var dataOptionsAttributeName : String;
	var viewSelecting : JQueryCallback;
	var modelFromViewDataExtended : JQueryCallback;
	function new(?options:ViewEngineOptions):Void;
	function init():JQueryPromise<Dynamic>;
	function findViewTemplate(viewName:String):JQuery;
	function afterViewSetup(viewInfo:Dynamic):Void;
}
extern class ViewEngine extends ViewEngineBase {
	var layoutSelecting : JQueryCallback;
	function new(?options:ViewEngineOptions):Void;
	function init():JQueryPromise<Dynamic>;
	function findLayoutTemplate(layoutName:String):JQuery;
}
typedef HtmlApplicationOptions = {
	>framework.ApplicationOptions,
	@:optional
	var commandManager : CommandManager;
	@:optional
	var templateEngine : ITemplateEngine;
	@:optional
	var navigateToRootViewMode : String;
	@:optional
	var layoutControllers : Array<ILayoutControllerRegistration>;
	@:optional
	var device : IDevice;
	@:optional
	var layoutSet : Array<Dynamic>;
};
extern class HtmlApplication extends framework.Application {
	var viewEngine : ViewEngineBase;
	var viewRendered : JQueryCallback;
	var resolveLayoutController : JQueryCallback;
	function new(?options:HtmlApplicationOptions):Void;
	function init():Dynamic;
	function viewPort():JQuery;
}
extern class DevExpress.framework.htmlTopLevel {
	static var layoutControllers : Array<ILayoutControllerRegistration>;
	static var layoutSets : Dynamic;
}
