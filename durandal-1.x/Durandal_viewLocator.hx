extern class Durandal_viewLocatorTopLevel {
	static var useConvention : ?String -> ?String -> ?String -> String;
	static var locateViewForObject : { } -> Array<HTMLElement> -> JQueryPromise<Dynamic>;
	static var convertModuleIdToViewId : String -> String;
	static var determineFallbackViewId : Dynamic -> String;
	static var translateViewIdToArea : String -> ?String -> String;
	static var locateView : Dynamic -> String -> Array<HTMLElement> -> JQueryPromise<Dynamic>;
}
