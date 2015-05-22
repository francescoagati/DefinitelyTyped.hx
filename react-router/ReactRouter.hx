typedef Navigation = {
	function makePath(to:String, ?params:{ }, ?query:{ }):String;
	function makeHref(to:String, ?params:{ }, ?query:{ }):String;
	function transitionTo(to:String, ?params:{ }, ?query:{ }):Void;
	function replaceWith(to:String, ?params:{ }, ?query:{ }):Void;
	function goBack():Void;
};
typedef RouteHandlerMixin = {
	function getRouteDepth():Float;
	function createChildRouteHandler(props:{ }):RouteHandler;
};
typedef State = {
	function getPath():String;
	function getRoutes():Array<Route>;
	function getPathname():String;
	function getParams():{ };
	function getQuery():{ };
	function isActive(to:String, ?params:{ }, ?query:{ }):Bool;
};
typedef DefaultRouteProp = {
	@:optional
	var name : String;
	var handler : React.ComponentClass<Dynamic>;
};
typedef DefaultRoute = {
	>React.ReactElement<DefaultRouteProp>,
	var __react_router_default_route__ : Dynamic;
};
typedef DefaultRouteClass = {
	>React.ComponentClass<DefaultRouteProp>,
	var __react_router_default_route__ : Dynamic;
};
typedef LinkProp = {
	@:optional
	var activeClassName : String;
	var to : String;
	@:optional
	var params : { };
	@:optional
	var query : { };
	@:optional
	var onClick : haxe.Constraints.Function;
};
typedef Link = {
	>React.ReactElement<LinkProp>,
	>Navigation,
	>State,
	var __react_router_link__ : Dynamic;
	function getHref():String;
	function getClassName():String;
};
typedef LinkClass = {
	>React.ComponentClass<LinkProp>,
	var __react_router_link__ : Dynamic;
};
typedef NotFoundRouteProp = {
	@:optional
	var name : String;
	var handler : React.ComponentClass<Dynamic>;
};
typedef NotFoundRoute = {
	>React.ReactElement<NotFoundRouteProp>,
	var __react_router_not_found_route__ : Dynamic;
};
typedef NotFoundRouteClass = {
	>React.ComponentClass<NotFoundRouteProp>,
	var __react_router_not_found_route__ : Dynamic;
};
typedef RedirectProp = {
	@:optional
	var path : String;
	@:optional
	var from : String;
	@:optional
	var to : String;
};
typedef Redirect = {
	>React.ReactElement<RedirectProp>,
	var __react_router_redirect__ : Dynamic;
};
typedef RedirectClass = {
	>React.ComponentClass<RedirectProp>,
	var __react_router_redirect__ : Dynamic;
};
typedef RouteProp = {
	@:optional
	var name : String;
	@:optional
	var path : String;
	@:optional
	var handler : React.ComponentClass<Dynamic>;
	@:optional
	var ignoreScrollBehavior : Bool;
};
typedef Route = {
	>React.ReactElement<RouteProp>,
	var __react_router_route__ : Dynamic;
};
typedef RouteClass = {
	>React.ComponentClass<RouteProp>,
	var __react_router_route__ : Dynamic;
};
typedef RouteHandlerProp = { };
typedef RouteHandler = {
	>React.ReactElement<RouteHandlerProp>,
	>RouteHandlerMixin,
	var __react_router_route_handler__ : Dynamic;
};
typedef RouteHandlerClass = {
	>React.ReactElement<RouteHandlerProp>,
	var __react_router_route_handler__ : Dynamic;
};
typedef LocationBase = {
	function push(path:String):Void;
	function replace(path:String):Void;
	function pop():Void;
	function getCurrentPath():Void;
};
typedef LocationListener = {
	function addChangeListener(listener:haxe.Constraints.Function):Void;
	function removeChangeListener(listener:haxe.Constraints.Function):Void;
};
typedef HashLocation = {
	>LocationBase,
	>LocationListener,
};
typedef HistoryLocation = {
	>LocationBase,
	>LocationListener,
};
typedef RefreshLocation = {
	>LocationBase,
};
typedef ScrollBehaviorBase = {
	function updateScrollPosition(position:{ var x : Float; var y : Float; }, actionType:String):Void;
};
typedef ImitateBrowserBehavior = {
	>ScrollBehaviorBase,
};
typedef ScrollToTopBehavior = {
	>ScrollBehaviorBase,
};
typedef Router = {
	>React.ReactElement<Dynamic>,
	function run(callback:RouterRunCallback):Void;
};
typedef RouterState = {
	var path : String;
	var action : String;
	var pathname : String;
	var params : { };
	var query : { };
	var routes : Array<Route>;
};
typedef RouterCreateOption = {
	var routes : React.ReactElement<RouteProp>;
	@:optional
	var location : LocationBase;
	@:optional
	var scrollBehavior : ScrollBehaviorBase;
};
typedef History = {
	function back():Void;
	var length : Float;
};
typedef Transition = {
	function abort():Void;
	function redirect(to:String, ?params:{ }, ?query:{ }):Void;
	function retry():Void;
};
typedef TransitionStaticLifecycle = {
	@:optional
	function willTransitionTo(transition:Transition, params:{ }, query:{ }, callback:haxe.Constraints.Function):Void;
	@:optional
	function willTransitionFrom(transition:Transition, component:React.ReactElement<Dynamic>, callback:haxe.Constraints.Function):Void;
};
extern class ReactRouterTopLevel {
	static var Navigation : Navigation;
	static var State : State;
	static var RouteHandlerMixin : RouteHandlerMixin;
	static var DefaultRoute : DefaultRouteClass;
	static var Link : LinkClass;
	static var NotFoundRoute : NotFoundRouteClass;
	static var Redirect : RedirectClass;
	static var Route : RouteClass;
	static var RouteHandler : RouteHandlerClass;
	static var HashLocation : HashLocation;
	static var HistoryLocation : HistoryLocation;
	static var RefreshLocation : RefreshLocation;
	static var ImitateBrowserBehavior : ImitateBrowserBehavior;
	static var ScrollToTopBehavior : ScrollToTopBehavior;
	static function create(options:RouterCreateOption):Router;
	static function run(routes:React.ReactElement<RouteProp>, callback:RouterRunCallback):Router;
	static function run(routes:React.ReactElement<RouteProp>, location:LocationBase, callback:RouterRunCallback):Router;
	static var History : History;
}
