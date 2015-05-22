typedef ChromeSettingClearDetails = {
	@:optional
	var scope : String;
};
typedef ChromeSettingSetDetails = {
	>ChromeSettingClearDetails,
	var value : Dynamic;
};
typedef ChromeSettingGetDetails = {
	@:optional
	var incognito : Bool;
};
typedef ChromeSettingGetResultDetails = {
	var levelOfControl : String;
	var value : Dynamic;
	@:optional
	var incognitoSpecific : Bool;
};
typedef ChromeSettingChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:DetailsCallback):Void;
};
typedef ChromeSetting = {
	var details : { @:optional
	var scope : String; @:optional
	var callback : haxe.Constraints.Function; };
	function set(details:ChromeSettingSetDetails, ?callback:haxe.Constraints.Function):Void;
	function get(details:ChromeSettingGetDetails, ?callback:DetailsCallback):Void;
	function clear(details:ChromeSettingClearDetails, ?callback:haxe.Constraints.Function):Void;
	var onChange : ChromeSettingChangedEvent;
};
