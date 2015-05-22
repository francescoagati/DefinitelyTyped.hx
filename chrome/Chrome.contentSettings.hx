typedef ClearDetails = {
	@:optional
	var scope : String;
};
typedef SetDetails = {
	@:optional
	var resourceIdentifier : ResourceIdentifier;
	var setting : Dynamic;
	@:optional
	var secondaryPattern : String;
	@:optional
	var scope : String;
	var primaryPattern : String;
};
typedef GetDetails = {
	@:optional
	var secondaryUrl : String;
	@:optional
	var resourceIdentifier : ResourceIdentifier;
	@:optional
	var incognito : Bool;
	var primaryUrl : String;
};
typedef ReturnedDetails = {
	var setting : Dynamic;
};
typedef ContentSetting = {
	function clear(details:ClearDetails, ?callback:haxe.Constraints.Function):Void;
	function set(details:SetDetails, ?callback:haxe.Constraints.Function):Void;
	function getResourceIdentifiers(callback:Array<ResourceIdentifier> -> Void):Void;
	function get(details:GetDetails, callback:ReturnedDetails -> Void):Void;
};
typedef ResourceIdentifier = {
	var id : String;
	@:optional
	var description : String;
};
extern class Chrome.contentSettingsTopLevel {
	static var cookies : ContentSetting;
	static var popups : ContentSetting;
	static var javascript : ContentSetting;
	static var notifications : ContentSetting;
	static var plugins : ContentSetting;
	static var images : ContentSetting;
}
