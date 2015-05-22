typedef PageActionClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:chrome.tabs.Tab -> Void):Void;
};
typedef TitleDetails = {
	var tabId : Float;
	var title : String;
};
typedef GetDetails = {
	var tabId : Float;
};
typedef PopupDetails = {
	var tabId : Float;
	var popup : String;
};
typedef IconDetails = {
	var tabId : Float;
	@:optional
	var iconIndex : Float;
	@:optional
	var imageData : ImageData;
	@:optional
	var path : Dynamic;
};
extern class Chrome.pageActionTopLevel {
	static function hide(tabId:Float):Void;
	static function show(tabId:Float):Void;
	static function setTitle(details:TitleDetails):Void;
	static function setPopup(details:PopupDetails):Void;
	static function getTitle(details:GetDetails, callback:String -> Void):Void;
	static function getPopup(details:GetDetails, callback:String -> Void):Void;
	static function setIcon(details:IconDetails, ?callback:haxe.Constraints.Function):Void;
	static var onClicked : PageActionClickedEvent;
}
