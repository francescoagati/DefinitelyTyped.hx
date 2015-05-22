typedef IdleStateChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
extern class Chrome.idleTopLevel {
	static function queryState(thresholdSeconds:Float, callback:String -> Void):Void;
	static var onStateChanged : IdleStateChangedEvent;
}
