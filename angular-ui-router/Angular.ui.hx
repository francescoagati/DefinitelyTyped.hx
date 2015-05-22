typedef IState = {
	@:optional
	var name : String;
	@:optional
	var template : haxe.extern.EitherType<String, { }>;
	@:optional
	var templateUrl : haxe.extern.EitherType<String, { }>;
	@:optional
	var templateProvider : haxe.Constraints.Function;
	@:optional
	var controller : haxe.extern.EitherType<haxe.Constraints.Function, String>;
	@:optional
	var controllerAs : String;
	@:optional
	var controllerProvider : haxe.Constraints.Function;
	@:optional
	var resolve : { };
	@:optional
	var url : String;
	@:optional
	var params : Dynamic;
	@:optional
	var views : { };
	@:optional
	var abstract : Bool;
	@:optional
	var onEnter : haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.extern.EitherType<String, haxe.Constraints.Function>>>;
	@:optional
	var onExit : haxe.extern.EitherType<haxe.Constraints.Function, Array<haxe.extern.EitherType<String, haxe.Constraints.Function>>>;
	@:optional
	var data : Dynamic;
	@:optional
	var reloadOnSearch : Bool;
};
typedef IStateProvider = {
	>angular.IServiceProvider,
	@:overload(function(config:IState):IStateProvider { })
	function state(name:String, config:IState):IStateProvider;
	function decorator(?name:String, ?decorator:IState -> haxe.Constraints.Function -> Dynamic):Dynamic;
};
typedef IUrlMatcher = {
	function concat(pattern:String):IUrlMatcher;
	function exec(path:String, searchParams:{ }):{ };
	function parameters():Array<String>;
	function format(values:{ }):String;
};
typedef IUrlMatcherFactory = {
	function compile(pattern:String):IUrlMatcher;
	function isMatcher(o:Dynamic):Bool;
	function type(name:String, definition:Dynamic, ?definitionFn:Dynamic):Dynamic;
};
typedef IUrlRouterProvider = {
	>angular.IServiceProvider,
	@:overload(function(whenPath:js.RegExp, handler:Array<Dynamic>):IUrlRouterProvider { })
	@:overload(function(whenPath:js.RegExp, toPath:String):IUrlRouterProvider { })
	@:overload(function(whenPath:IUrlMatcher, hanlder:haxe.Constraints.Function):IUrlRouterProvider { })
	@:overload(function(whenPath:IUrlMatcher, handler:Array<Dynamic>):IUrlRouterProvider { })
	@:overload(function(whenPath:IUrlMatcher, toPath:String):IUrlRouterProvider { })
	@:overload(function(whenPath:String, handler:haxe.Constraints.Function):IUrlRouterProvider { })
	@:overload(function(whenPath:String, handler:Array<Dynamic>):IUrlRouterProvider { })
	@:overload(function(whenPath:String, toPath:String):IUrlRouterProvider { })
	function when(whenPath:js.RegExp, handler:haxe.Constraints.Function):IUrlRouterProvider;
	@:overload(function(handler:Array<Dynamic>):IUrlRouterProvider { })
	@:overload(function(path:String):IUrlRouterProvider { })
	function otherwise(handler:haxe.Constraints.Function):IUrlRouterProvider;
	@:overload(function(handler:Array<Dynamic>):IUrlRouterProvider { })
	function rule(handler:haxe.Constraints.Function):IUrlRouterProvider;
};
typedef IStateOptions = {
	@:optional
	var location : haxe.extern.EitherType<Bool, String>;
	@:optional
	var inherit : Bool;
	@:optional
	var relative : IState;
	@:optional
	var notify : Bool;
	@:optional
	var reload : Bool;
};
typedef IHrefOptions = {
	@:optional
	var lossy : Bool;
	@:optional
	var inherit : Bool;
	@:optional
	var relative : IState;
	@:optional
	var absolute : Bool;
};
typedef IStateService = {
	function go(to:String, ?params:{ }, ?options:IStateOptions):angular.IPromise<Dynamic>;
	@:overload(function(state:String, ?params:{ }, ?options:IStateOptions):Void { })
	function transitionTo(state:String, ?params:{ }, ?updateLocation:Bool):Void;
	function includes(state:String, ?params:{ }):Bool;
	@:overload(function(state:IState, ?params:{ }):Bool { })
	function is(state:String, ?params:{ }):Bool;
	@:overload(function(state:String, ?params:{ }, ?options:IHrefOptions):String { })
	function href(state:IState, ?params:{ }, ?options:IHrefOptions):String;
	@:overload(function():Array<IState> { })
	function get(state:String):IState;
	var current : IState;
	var params : IStateParamsService;
	function reload():Void;
};
typedef IStateParamsService = { };
typedef IUrlRouterService = {
	function sync():Void;
};
typedef IUiViewScrollProvider = {
	function useAnchorScroll():Void;
};
