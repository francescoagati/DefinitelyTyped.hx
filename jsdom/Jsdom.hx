typedef Callback = { };
typedef FeatureOptions = {
	@:optional
	var FetchExternalResources : Dynamic;
	@:optional
	var ProcessExternalResources : Dynamic;
	@:optional
	var SkipExternalResources : Dynamic;
};
typedef EnvDocument = {
	@:optional
	var referrer : String;
	@:optional
	var cookie : String;
	@:optional
	var cookieDomain : String;
};
typedef Config = {
	@:optional
	var html : String;
	@:optional
	var file : String;
	@:optional
	var url : String;
	@:optional
	var scripts : Array<String>;
	@:optional
	var src : Array<String>;
	@:optional
	var jar : Dynamic;
	@:optional
	var parsingMode : String;
	@:optional
	var document : EnvDocument;
	@:optional
	var features : FeatureOptions;
	@:optional
	var done : Callback;
	@:optional
	var loaded : Callback;
	@:optional
	var created : Error -> Window -> Void;
};
extern class JsdomTopLevel {
	static function env(urlOrHtml:String, scripts:String, config:Config, ?callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:String, callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:Array<String>, config:Config, ?callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:Array<String>, callback:Callback):Void;
	static function env(urlOrHtml:String, callback:Callback):Void;
	static function env(urlOrHtml:String, config:Config, ?callback:Callback):Void;
	static function env(config:Config, ?callback:Callback):Void;
	static function jsdom(markup:String, ?config:Config):Document;
	static var defaultDocumentFeatures : FeatureOptions;
}
extern class JsdomTopLevel {
	static function env(urlOrHtml:String, scripts:String, config:Config, ?callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:String, callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:Array<String>, config:Config, ?callback:Callback):Void;
	static function env(urlOrHtml:String, scripts:Array<String>, callback:Callback):Void;
	static function env(urlOrHtml:String, callback:Callback):Void;
	static function env(urlOrHtml:String, config:Config, ?callback:Callback):Void;
	static function env(config:Config, ?callback:Callback):Void;
	static function jsdom(markup:String, ?config:Config):Document;
	static var defaultDocumentFeatures : FeatureOptions;
}
