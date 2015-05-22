extern class Durandal_viewEngineTopLevel {
	static var viewExtension : String;
	static var viewPlugin : String;
	static var isViewUrl : String -> Bool;
	static var convertViewUrlToViewId : String -> String;
	static var convertViewIdToRequirePath : String -> String;
	static var parseMarkup : String -> HTMLElement;
	static var createView : String -> JQueryPromise<Dynamic>;
}
