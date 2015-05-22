typedef FontName = {
	var displayName : String;
	var fontId : String;
};
typedef DefaultFontSizeDetails = {
	var pixelSize : Float;
};
typedef FontDetails = {
	var genericFamily : String;
	@:optional
	var script : String;
};
typedef FullFontDetails = {
	var genericFamily : String;
	var levelOfControl : String;
	@:optional
	var script : String;
	var fontId : String;
};
typedef FontDetailsResult = {
	var levelOfControl : String;
	var fontId : String;
};
typedef FontSizeDetails = {
	var pixelSize : Float;
	var levelOfControl : String;
};
typedef SetFontSizeDetails = {
	var pixelSize : Float;
};
typedef SetFontDetails = {
	var genericFamily : String;
	@:optional
	var script : String;
	var fontId : String;
};
typedef DefaultFixedFontSizeChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:FontSizeDetails -> Void):Void;
};
typedef DefaultFontSizeChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:FontSizeDetails -> Void):Void;
};
typedef MinimumFontSizeChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:FontSizeDetails -> Void):Void;
};
typedef FontChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:FullFontDetails -> Void):Void;
};
extern class Chrome.fontSettingsTopLevel {
	static function setDefaultFontSize(details:DefaultFontSizeDetails, ?callback:haxe.Constraints.Function):Void;
	static function getFont(details:FontDetails, ?callback:FontDetailsResult -> Void):Void;
	static function getDefaultFontSize(?details:FontSizeDetails, ?callback:FontSizeDetails -> Void):Void;
	static function getMinimumFontSize(?details:FontSizeDetails, ?callback:FontSizeDetails -> Void):Void;
	static function setMinimumFontSize(details:SetFontSizeDetails, ?callback:haxe.Constraints.Function):Void;
	static function getDefaultFixedFontSize(?details:Dynamic, ?callback:FontSizeDetails -> Void):Void;
	static function clearDefaultFontSize(?details:Dynamic, ?callback:haxe.Constraints.Function):Void;
	static function setDefaultFixedFontSize(details:SetFontSizeDetails, ?callback:haxe.Constraints.Function):Void;
	static function clearFont(details:FontDetails, ?callback:haxe.Constraints.Function):Void;
	static function setFont(details:SetFontDetails, ?callback:haxe.Constraints.Function):Void;
	static function clearMinimumFontSize(?details:Dynamic, ?callback:haxe.Constraints.Function):Void;
	static function getFontList(callback:Array<FontName> -> Void):Void;
	static function clearDefaultFixedFontSize(details:Dynamic, ?callback:haxe.Constraints.Function):Void;
	static var onDefaultFixedFontSizeChanged : DefaultFixedFontSizeChangedEvent;
	static var onDefaultFontSizeChanged : DefaultFontSizeChangedEvent;
	static var onMinimumFontSizeChanged : MinimumFontSizeChangedEvent;
	static var onFontChanged : FontChangedEvent;
}
