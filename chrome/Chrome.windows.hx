typedef Window = {
	@:optional
	var tabs : Array<chrome.tabs.Tab>;
	var top : Float;
	var height : Float;
	var width : Float;
	var state : String;
	var focused : Bool;
	var alwaysOnTop : Bool;
	var incognito : Bool;
	var type : String;
	var id : Float;
	var left : Float;
};
typedef GetInfo = {
	@:optional
	var populate : Bool;
};
typedef CreateData = {
	@:optional
	var tabId : Float;
	@:optional
	var url : String;
	@:optional
	var top : Float;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var focused : Bool;
	@:optional
	var incognito : Bool;
	@:optional
	var type : String;
	@:optional
	var left : Float;
};
typedef UpdateInfo = {
	@:optional
	var top : Float;
	@:optional
	var drawAttention : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var state : String;
	@:optional
	var focused : Bool;
	@:optional
	var left : Float;
};
typedef WindowRemovedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> Void):Void;
};
typedef WindowCreatedEvent = {
	>chrome.events.Event,
	function addListener(callback:Window -> Void):Void;
};
typedef WindowFocusChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> Void):Void;
};
extern class Chrome.windowsTopLevel {
	static var WINDOW_ID_CURRENT : Float;
	static var WINDOW_ID_NONE : Float;
	static function get(windowId:Float, callback:chrome.windows.Window -> Void):Void;
	static function get(windowId:Float, getInfo:GetInfo, callback:chrome.windows.Window -> Void):Void;
	static function getCurrent(callback:chrome.windows.Window -> Void):Void;
	static function getCurrent(getInfo:GetInfo, callback:chrome.windows.Window -> Void):Void;
	static function create(?createData:CreateData, ?callback:chrome.windows.Window -> Void):Void;
	static function getAll(callback:Array<chrome.windows.Window> -> Void):Void;
	static function getAll(getInfo:GetInfo, callback:Array<chrome.windows.Window> -> Void):Void;
	static function update(windowId:Float, updateInfo:UpdateInfo, ?callback:chrome.windows.Window -> Void):Void;
	static function remove(windowId:Float, ?callback:haxe.Constraints.Function):Void;
	static function getLastFocused(callback:chrome.windows.Window -> Void):Void;
	static function getLastFocused(getInfo:GetInfo, callback:chrome.windows.Window -> Void):Void;
	static var onRemoved : WindowRemovedEvent;
	static var onCreated : WindowCreatedEvent;
	static var onFocusChanged : WindowFocusChangedEvent;
}
