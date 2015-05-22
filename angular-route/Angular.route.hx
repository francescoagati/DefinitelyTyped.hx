typedef IRouteParamsService = { };
typedef IRouteService = {
	function reload():Void;
	var routes : Dynamic;
	@:optional
	var current : ICurrentRoute;
};
typedef IRoute = {
	@:optional
	var controller : haxe.extern.EitherType<String, haxe.Constraints.Function>;
	@:optional
	var controllerAs : String;
	@:optional
	var name : String;
	@:optional
	var template : haxe.extern.EitherType<String, { }>;
	@:optional
	var templateUrl : haxe.extern.EitherType<String, { }>;
	@:optional
	var resolve : { };
	@:optional
	var redirectTo : haxe.extern.EitherType<String, { }>;
	@:optional
	var reloadOnSearch : Bool;
	@:optional
	var caseInsensitiveMatch : Bool;
};
typedef ICurrentRoute = {
	>IRoute,
	var locals : { var $scope : IScope; var $template : String; };
	var params : Dynamic;
};
typedef IRouteProvider = {
	>IServiceProvider,
	function otherwise(params:IRoute):IRouteProvider;
	function when(path:String, route:IRoute):IRouteProvider;
};
