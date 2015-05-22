typedef IRouteInfo = {
	var url : String;
	var moduleId : String;
	var name : String;
	var caption : String;
	var visible : Bool;
	var settings : Dynamic;
	var hash : String;
	@:optional
	var isActive : KnockoutComputed<Bool>;
};
typedef IRouteInfoParameters = {
	var url : Dynamic;
	@:optional
	var moduleId : String;
	@:optional
	var name : String;
	@:optional
	var caption : String;
	@:optional
	var visible : Bool;
	@:optional
	var settings : Dynamic;
};
extern class Durandal_plugins_routerTopLevel {
	static var ready : KnockoutObservable<Bool>;
	static var allRoutes : KnockoutObservableArray<IRouteInfo>;
	static var visibleRoutes : KnockoutObservableArray<IRouteInfo>;
	static var isNavigating : KnockoutObservable<Bool>;
	static var activeItem : IDurandalViewModelActiveItem;
	static var activeRoute : KnockoutObservable<IRouteInfo>;
	static var afterCompose : Void -> Void;
	static var getActivatableInstance : IRouteInfo -> Dynamic -> Dynamic -> Dynamic;
	static var navigateBack : Void -> Void;
	static var useConvention : Void -> Void;
	static var navigateTo : String -> Void;
	static var replaceLocation : String -> Void;
	static var convertRouteToName : String -> String;
	static var convertRouteToModuleId : String -> String;
	static var autoConvertRouteToModuleId : String -> String;
	static var prepareRouteInfo : IRouteInfo -> Void;
	static var handleInvalidRoute : IRouteInfo -> Dynamic -> Void;
	static var mapAuto : ?String -> Void;
	static var mapNav : String -> ?String -> ?String -> IRouteInfo;
	static var mapRoute : { };
	static var map : { };
	static var activate : String -> JQueryPromise<Dynamic>;
	static var guardRoute : IRouteInfo -> Dynamic -> Dynamic -> Dynamic;
}
