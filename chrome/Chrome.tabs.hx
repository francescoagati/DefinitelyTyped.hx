typedef Tab = {
	@:optional
	var status : String;
	var index : Float;
	@:optional
	var openerTabId : Float;
	@:optional
	var title : String;
	@:optional
	var url : String;
	var pinned : Bool;
	var highlighted : Bool;
	var windowId : Float;
	var active : Bool;
	@:optional
	var favIconUrl : String;
	var id : Float;
	var incognito : Bool;
};
typedef InjectDetails = {
	@:optional
	var allFrames : Bool;
	@:optional
	var code : String;
	@:optional
	var runAt : String;
	@:optional
	var file : String;
};
typedef CreateProperties = {
	@:optional
	var index : Float;
	@:optional
	var openerTabId : Float;
	@:optional
	var url : String;
	@:optional
	var pinned : Bool;
	@:optional
	var windowId : Float;
	@:optional
	var active : Bool;
};
typedef MoveProperties = {
	var index : Float;
	@:optional
	var windowId : Float;
};
typedef UpdateProperties = {
	@:optional
	var pinned : Bool;
	@:optional
	var openerTabId : Float;
	@:optional
	var url : String;
	@:optional
	var highlighted : Bool;
	@:optional
	var active : Bool;
};
typedef CaptureVisibleTabOptions = {
	@:optional
	var quality : Float;
	@:optional
	var format : String;
};
typedef ReloadProperties = {
	@:optional
	var bypassCache : Bool;
};
typedef ConnectInfo = {
	@:optional
	var name : String;
};
typedef HighlightInfo = {
	var tabs : Array<Float>;
	@:optional
	var windowId : Float;
};
typedef QueryInfo = {
	@:optional
	var status : String;
	@:optional
	var lastFocusedWindow : Bool;
	@:optional
	var windowId : Float;
	@:optional
	var windowType : String;
	@:optional
	var active : Bool;
	@:optional
	var index : Float;
	@:optional
	var title : String;
	@:optional
	var url : String;
	@:optional
	var currentWindow : Bool;
	@:optional
	var highlighted : Bool;
	@:optional
	var pinned : Bool;
};
typedef TabHighlightInfo = {
	var windowId : Float;
	var tabIds : Array<Float>;
};
typedef TabRemoveInfo = {
	var windowId : Float;
	var isWindowClosing : Bool;
};
typedef TabAttachInfo = {
	var newPosition : Float;
	var newWindowId : Float;
};
typedef TabChangeInfo = {
	@:optional
	var status : String;
	@:optional
	var pinned : Bool;
	@:optional
	var url : String;
};
typedef TabMoveInfo = {
	var toIndex : Float;
	var windowId : Float;
	var fromIndex : Float;
};
typedef TabDetachInfo = {
	var oldWindowId : Float;
	var oldPosition : Float;
};
typedef TabActiveInfo = {
	var tabId : Float;
	var windowId : Float;
};
typedef TabHighlightedEvent = {
	>chrome.events.Event,
	function addListener(callback:HighlightInfo -> Void):Void;
};
typedef TabRemovedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> TabRemoveInfo -> Void):Void;
};
typedef TabUpdatedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> TabChangeInfo -> Tab -> Void):Void;
};
typedef TabAttachedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> TabAttachInfo -> Void):Void;
};
typedef TabMovedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> TabMoveInfo -> Void):Void;
};
typedef TabDetachedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> TabDetachInfo -> Void):Void;
};
typedef TabCreatedEvent = {
	>chrome.events.Event,
	function addListener(callback:Tab -> Void):Void;
};
typedef TabActivatedEvent = {
	>chrome.events.Event,
	function addListener(callback:TabActiveInfo -> Void):Void;
};
typedef TabReplacedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> Float -> Void):Void;
};
extern class Chrome.tabsTopLevel {
	static function executeScript(details:InjectDetails, ?callback:Array<Dynamic> -> Void):Void;
	static function executeScript(tabId:Float, details:InjectDetails, ?callback:Array<Dynamic> -> Void):Void;
	static function get(tabId:Float, callback:Tab -> Void):Void;
	static function getCurrent(callback:?Tab -> Void):Void;
	static function create(createProperties:CreateProperties, ?callback:Tab -> Void):Void;
	static function move(tabId:Float, moveProperties:MoveProperties, ?callback:Tab -> Void):Void;
	static function move(tabIds:Array<Float>, moveProperties:MoveProperties, ?callback:Array<Tab> -> Void):Void;
	static function update(updateProperties:UpdateProperties, ?callback:?Tab -> Void):Void;
	static function update(tabId:Float, updateProperties:UpdateProperties, ?callback:?Tab -> Void):Void;
	static function remove(tabId:Float, ?callback:haxe.Constraints.Function):Void;
	static function remove(tabIds:Array<Float>, ?callback:haxe.Constraints.Function):Void;
	static function captureVisibleTab(callback:String -> Void):Void;
	static function captureVisibleTab(windowId:Float, callback:String -> Void):Void;
	static function captureVisibleTab(options:CaptureVisibleTabOptions, callback:String -> Void):Void;
	static function captureVisibleTab(windowId:Float, options:CaptureVisibleTabOptions, callback:String -> Void):Void;
	static function reload(?tabId:Float, ?reloadProperties:ReloadProperties, ?func:haxe.Constraints.Function):Void;
	static function duplicate(tabId:Float, ?callback:?Tab -> Void):Void;
	static function sendMessage(tabId:Float, message:Dynamic, ?responseCallback:Dynamic -> Void):Void;
	static function connect(tabId:Float, ?connectInfo:ConnectInfo):runtime.Port;
	static function insertCSS(tabId:Float, details:InjectDetails, ?callback:haxe.Constraints.Function):Void;
	static function highlight(highlightInfo:HighlightInfo, callback:chrome.windows.Window -> Void):Void;
	static function query(queryInfo:QueryInfo, callback:Array<Tab> -> Void):Void;
	static function detectLanguage(callback:String -> Void):Void;
	static function detectLanguage(tabId:Float, callback:String -> Void):Void;
	static var onHighlighted : TabHighlightedEvent;
	static var onRemoved : TabRemovedEvent;
	static var onUpdated : TabUpdatedEvent;
	static var onAttached : TabAttachedEvent;
	static var onMoved : TabMovedEvent;
	static var onDetached : TabDetachedEvent;
	static var onCreated : TabCreatedEvent;
	static var onActivated : TabActivatedEvent;
	static var onReplaced : TabReplacedEvent;
}
