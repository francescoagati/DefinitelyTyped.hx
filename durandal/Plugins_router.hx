extern class Plugins_routerTopLevel {
	static var theModule : DurandalRootRouter;
}
typedef DurandalEventSubscription = {
	function then(thenCallback:haxe.Constraints.Function, ?context:Dynamic):DurandalEventSubscription;
	function on(thenCallback:haxe.Constraints.Function, ?context:Dynamic):DurandalEventSubscription;
	function off():DurandalEventSubscription;
};
typedef DurandalEventSupport<T> = {
	@:overload(function(events:String, callback:haxe.Constraints.Function, ?context:Dynamic):T { })
	function on(events:String):DurandalEventSubscription;
	function off(events:String, callback:haxe.Constraints.Function, ?context:Dynamic):T;
	function trigger(events:String, eventArgs:haxe.extern.Rest<Dynamic>):T;
	function proxy(events:String):haxe.Constraints.Function;
};
typedef DurandalEventModule = {
	function new():DurandalEventSupport<Dynamic>;
	function includeIn(targetObject:Dynamic):Void;
};
typedef DialogButton = {
	var text : String;
	var value : Dynamic;
};
typedef DurandalAppModule = {
	>DurandalEventSupport<DurandalAppModule>,
	var title : String;
	function showDialog(obj:Dynamic, ?activationData:Dynamic, ?context:String):JQueryPromise<Dynamic>;
	function closeDialog(obj:Dynamic, results:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(message:String, ?title:String, ?options:Array<DialogButton>, ?autoclose:Bool, ?settings:Dynamic):JQueryPromise<Dynamic> { })
	function showMessage(message:String, ?title:String, ?options:Array<String>, ?autoclose:Bool, ?settings:Dynamic):JQueryPromise<String>;
	function configurePlugins(config:Dynamic, ?baseUrl:String):Void;
	function start():JQueryPromise<Dynamic>;
	@:overload(function(root:Dynamic, ?transition:String, ?applicationHost:HTMLElement):Void { })
	function setRoot(root:Dynamic, ?transition:String, ?applicationHost:String):Void;
};
typedef DurandalActivatorSettings = {
	var closeOnDeactivate : Bool;
	var affirmations : Array<String>;
	function interpretResponse(value:Dynamic):Bool;
	function areSameItem(currentItem:Dynamic, newItem:Dynamic, currentActivationData:Dynamic, newActivationData:Dynamic):Bool;
	function beforeActivate(newItem:Dynamic):Dynamic;
	function afterDeactivate(oldItem:Dynamic, close:Bool, setter:haxe.Constraints.Function):Void;
};
typedef DurandalActivator<T> = {
	>KnockoutComputed<T>,
	var settings : DurandalActivatorSettings;
	var isActivating : KnockoutObservable<Bool>;
	function canDeactivateItem(item:T, close:Bool):JQueryPromise<Bool>;
	function deactivateItem(item:T, close:Bool):JQueryPromise<Bool>;
	function canActivateItem(newItem:T, ?activationData:Dynamic):JQueryPromise<Bool>;
	function activateItem(newItem:T, ?activationData:Dynamic):JQueryPromise<Bool>;
	function canActivate():JQueryPromise<Bool>;
	function activate():JQueryPromise<Bool>;
	function canDeactivate(close:Bool):JQueryPromise<Bool>;
	function deactivate(close:Bool):JQueryPromise<Bool>;
	function includeIn(includeIn:Dynamic):Void;
	function forItems(items:Dynamic):DurandalActivator<T>;
};
typedef DurandalHistoryOptions = {
	@:optional
	var routeHandler : String -> Void;
	@:optional
	var root : String;
	@:optional
	var hashChange : Bool;
	@:optional
	var pushState : Bool;
	@:optional
	var silent : Bool;
	@:optional
	var startRoute : String;
};
typedef DurandalNavigationOptions = {
	var trigger : Bool;
	var replace : Bool;
};
typedef DurandalRouteConfiguration = {
	@:optional
	var title : Dynamic;
	@:optional
	var moduleId : String;
	@:optional
	var hash : String;
	@:optional
	var route : Dynamic;
	@:optional
	var routePattern : js.RegExp;
	@:optional
	var isActive : KnockoutComputed<Bool>;
	@:optional
	var nav : Dynamic;
	@:optional
	var hasChildRoutes : Bool;
	@:optional
	var viewUrl : String;
};
typedef DurandalRouteInstruction = {
	var fragment : String;
	var queryString : String;
	var config : DurandalRouteConfiguration;
	var params : Array<Dynamic>;
	var queryParams : Dynamic;
};
typedef DurandalRelativeRouteSettings = {
	@:optional
	var moduleId : String;
	@:optional
	var route : String;
	@:optional
	var fromParent : Bool;
};
typedef DurandalRouterBase<T> = {
	>DurandalEventSupport<T>,
	var handlers : Array<{ var routePattern : js.RegExp; var callback : String -> Void; }>;
	var routes : Array<DurandalRouteConfiguration>;
	var activeItem : DurandalActivator<Dynamic>;
	var navigationModel : KnockoutObservableArray<DurandalRouteConfiguration>;
	var isNavigating : KnockoutComputed<Bool>;
	var activeInstruction : KnockoutObservable<DurandalRouteInstruction>;
	function parseQueryString(queryString:String):Dynamic;
	function route(routePattern:js.RegExp, callback:String -> Void):Void;
	function loadUrl(fragment:String):Bool;
	function updateDocumentTitle(instance:Dynamic, instruction:DurandalRouteInstruction):Void;
	@:overload(function(fragment:String, options:DurandalNavigationOptions):Bool { })
	function navigate(fragment:String, ?trigger:Bool):Bool;
	function navigateBack():Void;
	function convertRouteToHash(route:String):String;
	function convertRouteToModuleId(route:String):String;
	function convertRouteToTitle(route:String):String;
	@:overload(function(route:String, moduleId:String):T { })
	@:overload(function(route:js.RegExp, moduleId:String):T { })
	@:overload(function(route:String, config:DurandalRouteConfiguration):T { })
	@:overload(function(route:js.RegExp, config:DurandalRouteConfiguration):T { })
	@:overload(function(config:DurandalRouteConfiguration):T { })
	@:overload(function(configs:Array<DurandalRouteConfiguration>):T { })
	function map(route:String):T;
	function buildNavigationModel(?defaultOrder:Float):T;
	@:overload(function(notFoundModuleId:String, ?replaceRoute:String):T { })
	@:overload(function(callback:DurandalRouteInstruction -> Void):T { })
	@:overload(function(config:DurandalRouteConfiguration):T { })
	function mapUnknownRoutes():T;
	function reset():T;
	@:overload(function(settings:DurandalRelativeRouteSettings):T { })
	function makeRelative(settings:String):T;
	function createChildRouter():T;
	@:optional
	var guardRoute : Dynamic -> DurandalRouteInstruction -> Dynamic;
};
typedef DurandalRouter = {
	>DurandalRouterBase<DurandalRouter>,
};
typedef DurandalRootRouter = {
	>DurandalRouterBase<DurandalRootRouter>,
	function makeRoutesCaseSensitive():Void;
	function activate(?options:DurandalHistoryOptions):JQueryPromise<Dynamic>;
	function deactivate():Void;
	function install():Void;
};
