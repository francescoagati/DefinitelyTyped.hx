typedef HtmlApplicationOptions = {
	@:optional
	var commandMapping : Dynamic;
	@:optional
	var defaultLayout : String;
	@:optional
	var disableViewCache : Bool;
	@:optional
	var layoutSet : Dynamic;
	@:optional
	var mode : String;
	@:optional
	var namespace : Dynamic;
	@:optional
	var navigateToRootViewMode : String;
	@:optional
	var navigation : Array<Dynamic>;
	@:optional
	var navigationType : String;
	@:optional
	var ns : Dynamic;
	@:optional
	var useViewTitleAsBackText : Bool;
	@:optional
	var viewCache : Dynamic;
	@:optional
	var viewCacheSize : Float;
	@:optional
	var viewPort : JQuery;
	@:optional
	var router : Router;
};
extern class HtmlApplication {
	function new(options:HtmlApplicationOptions):Void;
	var afterViewSetup : JQueryCallback;
	var beforeViewSetup : JQueryCallback;
	var initialized : JQueryCallback;
	var navigating : JQueryCallback;
	var navigatingBack : JQueryCallback;
	var resolveLayoutController : JQueryCallback;
	var viewDisposed : JQueryCallback;
	var viewDisposing : JQueryCallback;
	var viewHidden : JQueryCallback;
	var viewRendered : JQueryCallback;
	var viewShowing : JQueryCallback;
	var viewShown : JQueryCallback;
	var viewCache : ViewCache;
	var navigation : Array<Dynamic>;
	var router : Router;
	function back():Void;
	function canBack():Bool;
	function clearState():Void;
	function createNavigation(navigationConfig:Array<Dynamic>):Void;
	function getViewTemplate(viewName:String):JQuery;
	function getViewTemplateInfo(viewName:String):Dynamic;
	function loadTemplates(source:Dynamic):JQueryPromise<Dynamic>;
	function navigate(?uri:Dynamic, ?options:Dynamic):Void;
	function renderNavigation():Void;
	function restoreState():Void;
	function saveState():Void;
	function templateContext():Dynamic;
	@:overload(function(eventName:AfterViewSetup, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:BeforeViewSetup, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:Navigating, eventHandler:{ var currentUri : String; var uri : String; var cancel : Bool; var options : { var root : Bool; var target : String; var direction : String; var rootInDetailPane : Bool; var modal : Bool; }; } -> Void):HtmlApplication { })
	@:overload(function(eventName:NavigatingBack, eventHandler:{ var cancel : Bool; var isHardwareButton : Bool; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ResolveLayoutController, eventHandler:{ var viewInfo : Dynamic; var layoutController : Dynamic; var availableLayoutControllers : Array<Dynamic>; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewDisposed, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewDisposing, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewHidden, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewRendered, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewShowing, eventHandler:{ var viewInfo : Dynamic; var direction : String; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewShown, eventHandler:{ var viewInfo : Dynamic; var direction : String; } -> Void):HtmlApplication { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):HtmlApplication { })
	@:overload(function(events:{ }):HtmlApplication { })
	function on(eventName:Initialized, eventHandler:Void -> Void):HtmlApplication;
	@:overload(function(eventName:AfterViewSetup):HtmlApplication { })
	@:overload(function(eventName:BeforeViewSetup):HtmlApplication { })
	@:overload(function(eventName:Navigating):HtmlApplication { })
	@:overload(function(eventName:NavigatingBack):HtmlApplication { })
	@:overload(function(eventName:ResolveLayoutController):HtmlApplication { })
	@:overload(function(eventName:ViewDisposed):HtmlApplication { })
	@:overload(function(eventName:ViewDisposing):HtmlApplication { })
	@:overload(function(eventName:ViewHidden):HtmlApplication { })
	@:overload(function(eventName:ViewRendered):HtmlApplication { })
	@:overload(function(eventName:ViewShowing):HtmlApplication { })
	@:overload(function(eventName:ViewShown):HtmlApplication { })
	@:overload(function(eventName:String):HtmlApplication { })
	@:overload(function(eventName:Initialized, eventHandler:Void -> Void):HtmlApplication { })
	@:overload(function(eventName:AfterViewSetup, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:BeforeViewSetup, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:Navigating, eventHandler:{ var currentUri : String; var uri : String; var cancel : Bool; var options : { var root : Bool; var target : String; var direction : String; var rootInDetailPane : Bool; var modal : Bool; }; } -> Void):HtmlApplication { })
	@:overload(function(eventName:NavigatingBack, eventHandler:{ var cancel : Bool; var isHardwareButton : Bool; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ResolveLayoutController, eventHandler:{ var viewInfo : Dynamic; var layoutController : Dynamic; var availableLayoutControllers : Array<Dynamic>; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewDisposed, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewDisposing, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewHidden, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewRendered, eventHandler:{ var viewInfo : Dynamic; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewShowing, eventHandler:{ var viewInfo : Dynamic; var direction : String; } -> Void):HtmlApplication { })
	@:overload(function(eventName:ViewShown, eventHandler:{ var viewInfo : Dynamic; var direction : String; } -> Void):HtmlApplication { })
	@:overload(function(eventName:String, eventHandler:haxe.Constraints.Function):HtmlApplication { })
	function off(eventName:Initialized):HtmlApplication;
}
extern class HtmlTopLevel {
	static var layoutSets : Array<String>;
}
