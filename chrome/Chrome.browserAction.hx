typedef BadgeBackgroundColorDetails = {
	var color : Dynamic;
	@:optional
	var tabId : Float;
};
typedef BadgeTextDetails = {
	var text : String;
	@:optional
	var tabId : Float;
};
typedef TitleDetails = {
	var title : String;
	@:optional
	var tabId : Float;
};
typedef TabDetails = {
	@:optional
	var tabId : Float;
};
typedef TabIconDetails = {
	@:optional
	var path : Dynamic;
	@:optional
	var tabId : Float;
	@:optional
	var imageData : ImageData;
};
typedef PopupDetails = {
	@:optional
	var tabId : Float;
	var popup : String;
};
typedef BrowserClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:chrome.tabs.Tab -> Void):Void;
};
extern class Chrome.browserActionTopLevel {
	static function enable(?tabId:Float):Void;
	static function setBadgeBackgroundColor(details:BadgeBackgroundColorDetails):Void;
	static function setBadgeText(details:BadgeTextDetails):Void;
	static function setTitle(details:TitleDetails):Void;
	static function getBadgeText(details:TabDetails, callback:String -> Void):Void;
	static function setPopup(details:PopupDetails):Void;
	static function disable(?tabId:Float):Void;
	static function getTitle(details:TabDetails, callback:String -> Void):Void;
	static function getBadgeBackgroundColor(details:TabDetails, callback:Array<Float> -> Void):Void;
	static function getPopup(details:TabDetails, callback:String -> Void):Void;
	static function setIcon(details:TabIconDetails, ?callback:haxe.Constraints.Function):Void;
	static var onClicked : BrowserClickedEvent;
}
