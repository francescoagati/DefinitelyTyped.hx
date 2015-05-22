typedef Resource = {
	var url : String;
	function getContent(callback:String -> String -> Void):Void;
	function setContent(content:String, commit:Bool, ?callback:Dynamic -> Void):Void;
};
typedef ReloadOptions = {
	@:optional
	var userAgent : String;
	@:optional
	var ignoreCache : Bool;
	@:optional
	var injectedScript : Bool;
};
typedef ResourceAddedEvent = {
	>chrome.events.Event,
	function addListener(callback:Resource -> Void):Void;
};
typedef ResourceContentCommittedEvent = {
	>chrome.events.Event,
	function addListener(callback:Resource -> String -> Void):Void;
};
extern class Chrome.devtools.inspectedWindowTopLevel {
	static var tabId : Float;
	static function reload(reloadOptions:ReloadOptions):Void;
	static function eval(expression:String, ?callback:Dynamic -> Bool -> Void):Void;
	static function getResources(callback:Array<Resource> -> Void):Void;
	static var onResourceAdded : ResourceAddedEvent;
	static var onResourceContentCommitted : ResourceContentCommittedEvent;
}
