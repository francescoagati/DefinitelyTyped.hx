typedef Function = {
	@:optional
	var $inject : Array<String>;
};
extern class AngularTopLevel {
	static var angular : angular.IAngularStatic;
}
typedef IServiceProviderClass = {
	function new(args:haxe.extern.Rest<Dynamic>):IServiceProvider;
};
typedef IServiceProviderFactory = { };
typedef IServiceProvider = {
	var $get : Dynamic;
};
typedef IAngularBootstrapConfig = {
	@:optional
	var strictDi : Bool;
};
typedef IAngularStatic = {
	function bind(context:Dynamic, fn:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	@:overload(function(element:String, ?modules:haxe.Constraints.Function, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:String, ?modules:Array<String>, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:JQuery, ?modules:String, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:JQuery, ?modules:haxe.Constraints.Function, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:JQuery, ?modules:Array<String>, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Element, ?modules:String, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Element, ?modules:haxe.Constraints.Function, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Element, ?modules:Array<String>, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Document, ?modules:String, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Document, ?modules:haxe.Constraints.Function, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	@:overload(function(element:Document, ?modules:Array<String>, ?config:IAngularBootstrapConfig):auto.IInjectorService { })
	function bootstrap(element:String, ?modules:String, ?config:IAngularBootstrapConfig):auto.IInjectorService;
	function copy<T>(source:T, ?destination:T):T;
	var element : IAugmentedJQueryStatic;
	function equals(value1:Dynamic, value2:Dynamic):Bool;
	function extend(destination:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function<T>(obj:{ }, iterator:T -> String -> Dynamic, ?context:Dynamic):Dynamic { })
	@:overload(function(obj:Dynamic, iterator:Dynamic -> Dynamic -> Dynamic, ?context:Dynamic):Dynamic { })
	function forEach<T>(obj:Array<T>, iterator:T -> Float -> Dynamic, ?context:Dynamic):Dynamic;
	function fromJson(json:String):Dynamic;
	function identity(?arg:Dynamic):Dynamic;
	function injector(?modules:Array<Dynamic>):auto.IInjectorService;
	function isArray(value:Dynamic):Bool;
	function isDate(value:Dynamic):Bool;
	function isDefined(value:Dynamic):Bool;
	function isElement(value:Dynamic):Bool;
	function isFunction(value:Dynamic):Bool;
	function isNumber(value:Dynamic):Bool;
	function isObject(value:Dynamic):Bool;
	function isString(value:Dynamic):Bool;
	function isUndefined(value:Dynamic):Bool;
	function lowercase(str:String):String;
	function module(name:String, ?requires:Array<String>, ?configFn:haxe.Constraints.Function):IModule;
	function noop(args:haxe.extern.Rest<Dynamic>):Void;
	function reloadWithDebugInfo():Void;
	function toJson(obj:Dynamic, ?pretty:Bool):String;
	function uppercase(str:String):String;
	var version : { var full : String; var major : Float; var minor : Float; var dot : Float; var codeName : String; };
};
typedef IModule = {
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function animation(name:String, animationFactory:haxe.Constraints.Function):IModule;
	@:overload(function(inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	function config(configFn:haxe.Constraints.Function):IModule;
	@:overload(function(object:Dynamic):IModule { })
	function constant(name:String, value:Dynamic):IModule;
	@:overload(function(name:String, inlineAnnotatedConstructor:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function controller(name:String, controllerConstructor:haxe.Constraints.Function):IModule;
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function directive(name:String, directiveFactory:IDirectiveFactory):IModule;
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function factory(name:String, $getFn:haxe.Constraints.Function):IModule;
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function filter(name:String, filterFactoryFunction:haxe.Constraints.Function):IModule;
	@:overload(function(name:String, serviceProviderConstructor:IServiceProviderClass):IModule { })
	@:overload(function(name:String, inlineAnnotatedConstructor:Array<Dynamic>):IModule { })
	@:overload(function(name:String, providerObject:IServiceProvider):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function provider(name:String, serviceProviderFactory:IServiceProviderFactory):IModule;
	@:overload(function(inlineAnnotatedFunction:Array<Dynamic>):IModule { })
	function run(initializationFunction:haxe.Constraints.Function):IModule;
	@:overload(function(name:String, inlineAnnotatedConstructor:Array<Dynamic>):IModule { })
	@:overload(function(object:Dynamic):IModule { })
	function service(name:String, serviceConstructor:haxe.Constraints.Function):IModule;
	@:overload(function(object:Dynamic):IModule { })
	function value(name:String, value:Dynamic):IModule;
	var name : String;
	var requires : Array<String>;
};
typedef IAttributes = {
	function $addClass(classVal:String):Void;
	function $removeClass(classVal:String):Void;
	function $set(key:String, value:Dynamic):Void;
	function $observe(name:String, fn:?Dynamic -> Dynamic):haxe.Constraints.Function;
	var $attr : Dynamic;
};
typedef IFormController = {
	var $pristine : Bool;
	var $dirty : Bool;
	var $valid : Bool;
	var $invalid : Bool;
	var $submitted : Bool;
	var $error : Dynamic;
	function $addControl(control:INgModelController):Void;
	function $removeControl(control:INgModelController):Void;
	function $setValidity(validationErrorKey:String, isValid:Bool, control:INgModelController):Void;
	function $setDirty():Void;
	function $setPristine():Void;
	function $commitViewValue():Void;
	function $rollbackViewValue():Void;
	function $setSubmitted():Void;
	function $setUntouched():Void;
};
typedef INgModelController = {
	function $render():Void;
	function $setValidity(validationErrorKey:String, isValid:Bool):Void;
	function $setViewValue(value:Dynamic, ?trigger:String):Void;
	function $setPristine():Void;
	function $validate():Void;
	function $setTouched():Void;
	function $setUntouched():Void;
	function $rollbackViewValue():Void;
	function $commitViewValue():Void;
	function $isEmpty(value:Dynamic):Bool;
	var $viewValue : Dynamic;
	var $modelValue : Dynamic;
	var $parsers : Array<IModelParser>;
	var $formatters : Array<IModelFormatter>;
	var $viewChangeListeners : Array<IModelViewChangeListener>;
	var $error : Dynamic;
	var $name : String;
	var $touched : Bool;
	var $untouched : Bool;
	var $validators : IModelValidators;
	var $asyncValidators : IAsyncModelValidators;
	var $pending : Dynamic;
	var $pristine : Bool;
	var $dirty : Bool;
	var $valid : Bool;
	var $invalid : Bool;
};
typedef IModelValidators = { };
typedef IAsyncModelValidators = { };
typedef IModelParser = { };
typedef IModelFormatter = { };
typedef IModelViewChangeListener = { };
typedef IRootScopeService = {
	@:overload(function(exp:String):Dynamic { })
	@:overload(function(exp:IScope -> Dynamic):Dynamic { })
	function $apply():Dynamic;
	@:overload(function(exp:String):Dynamic { })
	@:overload(function(exp:IScope -> Dynamic):Dynamic { })
	function $applyAsync():Dynamic;
	function $broadcast(name:String, args:haxe.extern.Rest<Dynamic>):IAngularEvent;
	function $destroy():Void;
	function $digest():Void;
	function $emit(name:String, args:haxe.extern.Rest<Dynamic>):IAngularEvent;
	@:overload(function(expression:String, ?locals:Dynamic):Dynamic { })
	@:overload(function(expression:IScope -> Dynamic, ?locals:Dynamic):Dynamic { })
	function $eval():Dynamic;
	@:overload(function(expression:String):Void { })
	@:overload(function(expression:IScope -> Dynamic):Void { })
	function $evalAsync():Void;
	function $new(?isolate:Bool, ?parent:IScope):IScope;
	function $on(name:String, listener:IAngularEvent -> haxe.extern.Rest<Dynamic> -> Dynamic):haxe.Constraints.Function;
	@:overload(function(watchExpression:String, ?listener:Dynamic -> Dynamic -> IScope -> Dynamic, ?objectEquality:Bool):haxe.Constraints.Function { })
	@:overload(function(watchExpression:IScope -> Dynamic, ?listener:String, ?objectEquality:Bool):haxe.Constraints.Function { })
	@:overload(function(watchExpression:IScope -> Dynamic, ?listener:Dynamic -> Dynamic -> IScope -> Dynamic, ?objectEquality:Bool):haxe.Constraints.Function { })
	function $watch(watchExpression:String, ?listener:String, ?objectEquality:Bool):haxe.Constraints.Function;
	@:overload(function(watchExpression:IScope -> Dynamic, listener:Dynamic -> Dynamic -> IScope -> Dynamic):haxe.Constraints.Function { })
	function $watchCollection(watchExpression:String, listener:Dynamic -> Dynamic -> IScope -> Dynamic):haxe.Constraints.Function;
	@:overload(function(watchExpressions:Array<{ }>, listener:Dynamic -> Dynamic -> IScope -> Dynamic):haxe.Constraints.Function { })
	function $watchGroup(watchExpressions:Array<Dynamic>, listener:Dynamic -> Dynamic -> IScope -> Dynamic):haxe.Constraints.Function;
	var $parent : IScope;
	var $root : IRootScopeService;
	var $id : Float;
	var $$isolateBindings : Dynamic;
	var $$phase : Dynamic;
};
typedef IScope = {
	>IRootScopeService,
};
typedef IRepeatScope = {
	>IScope,
	var $index : Float;
	var $first : Bool;
	var $middle : Bool;
	var $last : Bool;
	var $even : Bool;
	var $odd : Bool;
};
typedef IAngularEvent = {
	var targetScope : IScope;
	var currentScope : IScope;
	var name : String;
	@:optional
	var stopPropagation : haxe.Constraints.Function;
	var preventDefault : haxe.Constraints.Function;
	var defaultPrevented : Bool;
};
typedef IWindowService = {
	>Window,
};
typedef IBrowserService = {
	var defer : angular.ITimeoutService;
};
typedef ITimeoutService = {
	function cancel(promise:IPromise<Dynamic>):Bool;
};
typedef IIntervalService = {
	function cancel(promise:IPromise<Dynamic>):Bool;
};
typedef IAnimateProvider = {
	function register(name:String, factory:Void -> IAnimateCallbackObject):Void;
	function classNameFilter(?expression:js.RegExp):js.RegExp;
};
typedef IAnimateCallbackObject = {
	function eventFn(element:Node, doneFn:Void -> Void):haxe.Constraints.Function;
};
typedef IFilterService = { };
typedef IFilterProvider = {
	>IServiceProvider,
	function register(name:String, filterFactory:haxe.Constraints.Function):IServiceProvider;
};
typedef ILocaleService = {
	var id : String;
	var NUMBER_FORMATS : ILocaleNumberFormatDescriptor;
	var DATETIME_FORMATS : ILocaleDateTimeFormatDescriptor;
	var pluralCat : Dynamic -> String;
};
typedef ILocaleNumberFormatDescriptor = {
	var DECIMAL_SEP : String;
	var GROUP_SEP : String;
	var PATTERNS : Array<ILocaleNumberPatternDescriptor>;
	var CURRENCY_SYM : String;
};
typedef ILocaleNumberPatternDescriptor = {
	var minInt : Float;
	var minFrac : Float;
	var maxFrac : Float;
	var posPre : String;
	var posSuf : String;
	var negPre : String;
	var negSuf : String;
	var gSize : Float;
	var lgSize : Float;
};
typedef ILocaleDateTimeFormatDescriptor = {
	var MONTH : Array<String>;
	var SHORTMONTH : Array<String>;
	var DAY : Array<String>;
	var SHORTDAY : Array<String>;
	var AMPMS : Array<String>;
	var medium : String;
	var short : String;
	var fullDate : String;
	var longDate : String;
	var mediumDate : String;
	var shortDate : String;
	var mediumTime : String;
	var shortTime : String;
};
typedef ILogService = {
	var debug : ILogCall;
	var error : ILogCall;
	var info : ILogCall;
	var log : ILogCall;
	var warn : ILogCall;
};
typedef ILogProvider = {
	@:overload(function(enabled:Bool):ILogProvider { })
	function debugEnabled():Bool;
};
typedef ILogCall = { };
typedef IParseService = { };
typedef IParseProvider = {
	@:overload(function(value:Bool):IParseProvider { })
	function logPromiseWarnings():Bool;
	@:overload(function(value:Bool):IParseProvider { })
	function unwrapPromises():Bool;
};
typedef ICompiledExpression = {
	function assign(context:Dynamic, value:Dynamic):Dynamic;
};
typedef ILocationService = {
	function absUrl():String;
	@:overload(function(newHash:String):ILocationService { })
	function hash():String;
	function host():String;
	@:overload(function(path:String):ILocationService { })
	function path():String;
	function port():Float;
	function protocol():String;
	function replace():ILocationService;
	@:overload(function(search:Dynamic):ILocationService { })
	@:overload(function(search:String, paramValue:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<String>, Bool>>>):ILocationService { })
	function search():Dynamic;
	@:overload(function(state:Dynamic):ILocationService { })
	function state():Dynamic;
	@:overload(function(url:String):ILocationService { })
	function url():String;
};
typedef ILocationProvider = {
	>IServiceProvider,
	@:overload(function(prefix:String):ILocationProvider { })
	function hashPrefix():String;
	@:overload(function(active:Bool):ILocationProvider { })
	@:overload(function(mode:{ @:optional
	var enabled : Bool; @:optional
	var requireBase : Bool; @:optional
	var rewriteLinks : Bool; }):ILocationProvider { })
	function html5Mode():Bool;
};
typedef IDocumentService = {
	>IAugmentedJQuery,
};
typedef IExceptionHandlerService = { };
typedef IRootElementService = {
	>JQuery,
};
typedef IQResolveReject<T> = { };
typedef IQService = {
	@:overload(function(resolver:IQResolveReject<Dynamic> -> IQResolveReject<Dynamic> -> Dynamic):IPromise<Dynamic> { })
	@:overload(function<T>(resolver:IQResolveReject<T> -> IQResolveReject<Dynamic> -> Dynamic):IPromise<T> { })
	function new(resolver:IQResolveReject<Dynamic> -> Dynamic):IPromise<Dynamic>;
	@:overload(function(promises:{ }):IPromise<{ }> { })
	function all(promises:Array<IPromise<Dynamic>>):IPromise<Array<Dynamic>>;
	function defer<T>():IDeferred<T>;
	function reject(?reason:Dynamic):IPromise<Dynamic>;
	@:overload(function():IPromise<Void> { })
	function when<T>(value:haxe.extern.EitherType<IPromise<T>, T>):IPromise<T>;
};
typedef IPromise<T> = {
	function then<TResult>(successCallback:T -> haxe.extern.EitherType<IHttpPromise<TResult>, haxe.extern.EitherType<IPromise<TResult>, TResult>>, ?errorCallback:Dynamic -> Dynamic, ?notifyCallback:Dynamic -> Dynamic):IPromise<TResult>;
	function catch<TResult>(onRejected:Dynamic -> haxe.extern.EitherType<IHttpPromise<TResult>, haxe.extern.EitherType<IPromise<TResult>, TResult>>):IPromise<TResult>;
	function finally<TResult>(finallyCallback:Void -> Dynamic):IPromise<TResult>;
};
typedef IDeferred<T> = {
	function resolve(?value:T):Void;
	function reject(?reason:Dynamic):Void;
	function notify(?state:Dynamic):Void;
	var promise : IPromise<T>;
};
typedef IAnchorScrollService = {
	var yOffset : Dynamic;
};
typedef IAnchorScrollProvider = {
	>IServiceProvider,
	function disableAutoScrolling():Void;
};
typedef ICacheFactoryService = {
	function info():Dynamic;
	function get(cacheId:String):ICacheObject;
};
typedef ICacheObject = {
	function info():{ var id : String; var size : Float; };
	function put<T>(key:String, ?value:T):T;
	function get(key:String):Dynamic;
	function remove(key:String):Void;
	function removeAll():Void;
	function destroy():Void;
};
typedef ICompileService = { };
typedef ICompileProvider = {
	>IServiceProvider,
	@:overload(function(directivesMap:Dynamic):ICompileProvider { })
	function directive(name:String, directiveFactory:haxe.Constraints.Function):ICompileProvider;
	@:overload(function(regexp:js.RegExp):ICompileProvider { })
	function aHrefSanitizationWhitelist():js.RegExp;
	@:overload(function(regexp:js.RegExp):ICompileProvider { })
	function imgSrcSanitizationWhitelist():js.RegExp;
	function debugInfoEnabled(?enabled:Bool):Dynamic;
};
typedef ICloneAttachFunction = { };
typedef ITemplateLinkingFunction = { };
typedef ITranscludeFunction = { };
typedef IControllerService = { };
typedef IControllerProvider = {
	>IServiceProvider,
	@:overload(function(name:String, dependencyAnnotatedConstructor:Array<Dynamic>):Void { })
	function register(name:String, controllerConstructor:haxe.Constraints.Function):Void;
	function allowGlobals():Void;
};
typedef IHttpService = {
	function get<T>(url:String, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function delete<T>(url:String, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function head<T>(url:String, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function jsonp<T>(url:String, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function post<T>(url:String, data:Dynamic, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function put<T>(url:String, data:Dynamic, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	function patch<T>(url:String, data:Dynamic, ?config:IRequestShortcutConfig):IHttpPromise<T>;
	var defaults : IRequestConfig;
	var pendingRequests : Array<Dynamic>;
};
typedef IRequestShortcutConfig = {
	@:optional
	var params : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var xsrfHeaderName : String;
	@:optional
	var xsrfCookieName : String;
	@:optional
	var cache : Dynamic;
	@:optional
	var withCredentials : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var transformRequest : Dynamic;
	@:optional
	var transformResponse : Dynamic;
	@:optional
	var timeout : Dynamic;
	@:optional
	var responseType : String;
};
typedef IRequestConfig = {
	>IRequestShortcutConfig,
	var method : String;
	var url : String;
};
typedef IHttpHeadersGetter = { };
typedef IHttpPromiseCallback<T> = { };
typedef IHttpPromiseCallbackArg<T> = {
	@:optional
	var data : T;
	@:optional
	var status : Float;
	@:optional
	var headers : IHttpHeadersGetter;
	@:optional
	var config : IRequestConfig;
	@:optional
	var statusText : String;
};
typedef IHttpPromise<T> = {
	>IPromise<IHttpPromiseCallbackArg<T>>,
	function success(callback:IHttpPromiseCallback<T>):IHttpPromise<T>;
	function error(callback:IHttpPromiseCallback<Dynamic>):IHttpPromise<T>;
	function then<TResult>(successCallback:IHttpPromiseCallbackArg<T> -> haxe.extern.EitherType<IPromise<TResult>, TResult>, ?errorCallback:IHttpPromiseCallbackArg<Dynamic> -> Dynamic):IPromise<TResult>;
};
typedef IHttpProviderDefaults = {
	@:optional
	var xsrfCookieName : String;
	@:optional
	var xsrfHeaderName : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var headers : { @:optional
	var common : Dynamic; @:optional
	var post : Dynamic; @:optional
	var put : Dynamic; @:optional
	var patch : Dynamic; };
};
typedef IHttpProvider = {
	>IServiceProvider,
	var defaults : IHttpProviderDefaults;
	var interceptors : Array<Dynamic>;
	@:overload(function(value:Bool):IHttpProvider { })
	function useApplyAsync():Bool;
};
typedef IHttpBackendService = { };
typedef IInterpolateService = {
	function endSymbol():String;
	function startSymbol():String;
};
typedef IInterpolationFunction = { };
typedef IInterpolateProvider = {
	>IServiceProvider,
	@:overload(function(value:String):IInterpolateProvider { })
	function startSymbol():String;
	@:overload(function(value:String):IInterpolateProvider { })
	function endSymbol():String;
};
typedef ITemplateCacheService = {
	>ICacheObject,
};
typedef ISCEService = {
	function getTrusted(type:String, mayBeTrusted:Dynamic):Dynamic;
	function getTrustedCss(value:Dynamic):Dynamic;
	function getTrustedHtml(value:Dynamic):Dynamic;
	function getTrustedJs(value:Dynamic):Dynamic;
	function getTrustedResourceUrl(value:Dynamic):Dynamic;
	function getTrustedUrl(value:Dynamic):Dynamic;
	function parse(type:String, expression:String):Dynamic -> Dynamic -> Dynamic;
	function parseAsCss(expression:String):Dynamic -> Dynamic -> Dynamic;
	function parseAsHtml(expression:String):Dynamic -> Dynamic -> Dynamic;
	function parseAsJs(expression:String):Dynamic -> Dynamic -> Dynamic;
	function parseAsResourceUrl(expression:String):Dynamic -> Dynamic -> Dynamic;
	function parseAsUrl(expression:String):Dynamic -> Dynamic -> Dynamic;
	function trustAs(type:String, value:Dynamic):Dynamic;
	function trustAsHtml(value:Dynamic):Dynamic;
	function trustAsJs(value:Dynamic):Dynamic;
	function trustAsResourceUrl(value:Dynamic):Dynamic;
	function trustAsUrl(value:Dynamic):Dynamic;
	function isEnabled():Bool;
};
typedef ISCEProvider = {
	>IServiceProvider,
	function enabled(value:Bool):Void;
};
typedef ISCEDelegateService = {
	function getTrusted(type:String, mayBeTrusted:Dynamic):Dynamic;
	function trustAs(type:String, value:Dynamic):Dynamic;
	function valueOf(value:Dynamic):Dynamic;
};
typedef ISCEDelegateProvider = {
	>IServiceProvider,
	function resourceUrlBlacklist(blacklist:Array<Dynamic>):Void;
	function resourceUrlWhitelist(whitelist:Array<Dynamic>):Void;
};
typedef ITemplateRequestService = {
	var totalPendingRequests : Float;
};
typedef IDirectiveFactory = { };
typedef IDirectiveLinkFn = { };
typedef IDirectivePrePost = {
	@:optional
	var pre : IDirectiveLinkFn;
	@:optional
	var post : IDirectiveLinkFn;
};
typedef IDirectiveCompileFn = { };
typedef IDirective = {
	@:optional
	var compile : IDirectiveCompileFn;
	@:optional
	var controller : Dynamic;
	@:optional
	var controllerAs : String;
	@:optional
	var bindToController : Bool;
	@:optional
	var link : haxe.extern.EitherType<IDirectiveLinkFn, IDirectivePrePost>;
	@:optional
	var name : String;
	@:optional
	var priority : Float;
	@:optional
	var replace : Bool;
	@:optional
	var require : Dynamic;
	@:optional
	var restrict : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var templateUrl : Dynamic;
	@:optional
	var terminal : Bool;
	@:optional
	var transclude : Dynamic;
};
typedef IAugmentedJQueryStatic = {
	>JQueryStatic,
};
typedef IAugmentedJQuery = {
	>JQuery,
	@:overload(function(element:Dynamic):IAugmentedJQuery { })
	@:overload(function(obj:JQuery):IAugmentedJQuery { })
	function find(selector:String):IAugmentedJQuery;
	@:overload(function(name:String):Dynamic { })
	function controller():Dynamic;
	function injector():Dynamic;
	function scope():IScope;
	function isolateScope():IScope;
	@:overload(function(obj:{ }):JQuery { })
	@:overload(function(?key:String):Dynamic { })
	function inheritedData(key:String, value:Dynamic):JQuery;
};
typedef IAnimateService = {
	function addClass(element:JQuery, className:String, ?done:haxe.Constraints.Function):IPromise<Dynamic>;
	function enter(element:JQuery, parent:JQuery, after:JQuery, ?done:haxe.Constraints.Function):Void;
	function leave(element:JQuery, ?done:haxe.Constraints.Function):Void;
	function move(element:JQuery, parent:JQuery, after:JQuery, ?done:haxe.Constraints.Function):Void;
	function removeClass(element:JQuery, className:String, ?done:haxe.Constraints.Function):Void;
};
extern class AngularTopLevel {
	static var angular : angular.IAngularStatic;
}
extern class AngularTopLevel {
	static var angular : angular.IAngularStatic;
}
