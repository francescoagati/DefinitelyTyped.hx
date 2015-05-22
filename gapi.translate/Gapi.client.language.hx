typedef Detections = {
	function list(object:{ var q : Array<String>; @:optional
	var fields : String; }):HttpRequest<GoogleApiTranslateDetectionListResponse>;
};
typedef Languages = {
	function list(object:{ @:optional
	var target : String; @:optional
	var fields : String; }):HttpRequest<GoogleApiTranslateLanguageListResponse>;
};
typedef Translations = {
	function list(object:{ var q : Array<String>; var target : String; @:optional
	var cid : Array<String>; @:optional
	var format : String; @:optional
	var source : String; @:optional
	var fields : String; @:optional
	var prettyprint : String; }):HttpRequest<GoogleApiTranslateTranslationListResponse>;
};
typedef GoogleApiTranslateTranslationListResponse = {
	var data : { var translations : Array<{ var translatedText : String; var detectedSourceLanguage : String; }>; };
};
typedef GoogleApiTranslateLanguageListResponse = {
	var data : { var languages : Array<{ var language : String; var name : String; }>; };
};
typedef GoogleApiTranslateDetectionListResponse = {
	var data : { var detections : Array<Array<{ var language : String; var confidence : Float; }>>; };
};
