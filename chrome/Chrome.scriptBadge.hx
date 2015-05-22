typedef GetPopupDetails = {
	var tabId : Float;
};
typedef AttentionDetails = {
	var tabId : Float;
};
typedef SetPopupDetails = {
	var tabId : Float;
	var popup : String;
};
typedef ScriptBadgeClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:chrome.tabs.Tab -> Void):Void;
};
extern class Chrome.scriptBadgeTopLevel {
	static function getPopup(details:GetPopupDetails, callback:haxe.Constraints.Function):Void;
	static function getAttention(details:AttentionDetails):Void;
	static function setPopup(details:SetPopupDetails):Void;
	static var onClicked : ScriptBadgeClickedEvent;
}
