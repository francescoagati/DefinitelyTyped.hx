typedef Request = {
	function getContent(callback:String -> String -> Void):Void;
};
typedef RequestFinishedEvent = {
	>chrome.events.Event,
	function addListener(callback:Request -> Void):Void;
};
typedef NavigatedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
extern class Chrome.devtools.networkTopLevel {
	static function getHAR(callback:Dynamic -> Void):Void;
	static var onRequestFinished : RequestFinishedEvent;
	static var onNavigated : NavigatedEvent;
}
