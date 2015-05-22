typedef TopLevelAPI = {
	@:overload(function(type:ReactRouter.LinkClass, props:ReactRouter.LinkProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.Link { })
	@:overload(function(type:ReactRouter.NotFoundRouteClass, props:ReactRouter.NotFoundRouteProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.NotFoundRoute { })
	@:overload(function(type:ReactRouter.RedirectClass, props:ReactRouter.RedirectProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.Redirect { })
	@:overload(function(type:ReactRouter.RouteClass, props:ReactRouter.RouteProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.Route { })
	@:overload(function(type:ReactRouter.RouteHandlerClass, props:ReactRouter.RouteHandlerProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.RouteHandler { })
	function createElement(type:ReactRouter.DefaultRouteClass, props:ReactRouter.DefaultRouteProp, children:haxe.extern.Rest<ReactNode>):ReactRouter.DefaultRoute;
};
