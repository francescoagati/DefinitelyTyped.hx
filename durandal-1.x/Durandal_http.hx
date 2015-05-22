extern class Durandal_httpTopLevel {
	static var defaultJSONPCallbackParam : String;
	static var get : String -> Dynamic -> JQueryPromise<Dynamic>;
	static var jsonp : String -> Dynamic -> String -> JQueryPromise<Dynamic>;
	static var post : String -> Dynamic -> JQueryPromise<Dynamic>;
}
