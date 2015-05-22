extern class AppTopLevel {
	static var EVENT_ACCESSIBILITY_ANNOUNCEMENT : String;
	static var EVENT_ACCESSIBILITY_CHANGED : String;
	static var accessibilityEnabled : Bool;
	static var analytics : Bool;
	static var apiName : String;
	static var bubbleParent : Bool;
	static var copyright : String;
	static var deployType : String;
	static var description : String;
	static var disableNetworkActivityIndicator : Bool;
	static var forceSplashAsSnapshot : Bool;
	static var guid : String;
	static var id : String;
	static var idleTimerDisabled : Bool;
	static var installId : String;
	static var keyboardVisible : Bool;
	static var name : String;
	static var proximityDetection : Bool;
	static var proximityState : Bool;
	static var publisher : String;
	static var sessionId : String;
	static var url : String;
	static var version : String;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function fireSystemEvent(eventName:String, ?param:Dynamic):Void;
	static function getAccessibilityEnabled():Bool;
	static function getAnalytics():Bool;
	static function getApiName():String;
	static function getArguments():LaunchOptions;
	static function getBubbleParent():Bool;
	static function getCopyright():String;
	static function getDeployType():String;
	static function getDescription():String;
	static function getDisableNetworkActivityIndicator():Bool;
	static function getForceSplashAsSnapshot():Bool;
	static function getGuid():String;
	static function getId():String;
	static function getIdleTimerDisabled():Bool;
	static function getInstallId():String;
	static function getKeyboardVisible():Bool;
	static function getName():String;
	static function getProximityDetection():Bool;
	static function getProximityState():Bool;
	static function getPublisher():String;
	static function getSessionId():String;
	static function getUrl():String;
	static function getVersion():String;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function setDisableNetworkActivityIndicator(disableNetworkActivityIndicator:Bool):Void;
	static function setForceSplashAsSnapshot(forceSplashAsSnapshot:Bool):Void;
	static function setIdleTimerDisabled(idleTimerDisabled:Bool):Void;
	static function setProximityDetection(proximityDetection:Bool):Void;
}
