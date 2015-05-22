typedef IEventEmitter = {
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(?event:String):EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
};
extern class EventEmitter {
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(?event:String):EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
typedef MenuConfig = {
	@:optional
	var type : String;
};
typedef HideMenusOptions = {
	var hideEdit : Bool;
	var hideWindow : Bool;
};
typedef MenuItemConfig = {
	@:optional
	var label : String;
	@:optional
	var click : haxe.Constraints.Function;
	@:optional
	var type : String;
	@:optional
	var submenu : Menu;
	@:optional
	var icon : String;
	@:optional
	var tooltip : String;
	@:optional
	var checked : Bool;
	@:optional
	var enabled : Bool;
	@:optional
	var key : String;
	@:optional
	var modifiers : String;
};
extern class MenuItem extends EventEmitter {
	function new(config:MenuItemConfig):Void;
	var label : String;
	var click : haxe.Constraints.Function;
	var type : String;
	var submenu : Menu;
	var icon : String;
	var tooltip : String;
	var checked : Bool;
	var enabled : Bool;
	var key : String;
	var modifiers : String;
}
extern class Menu {
	function new(?config:MenuConfig):Void;
	var items : Array<MenuItem>;
	function append(item:MenuItem):Void;
	function remove(item:MenuItem):Void;
	function insert(item:MenuItem, atPosition:Float):Void;
	function removeAt(index:Float):Void;
	function popup(x:Float, y:Float):Void;
	function createMacBuiltin(appname:String, ?options:HideMenusOptions):Void;
}
typedef ShortcutOption = {
	var key : String;
	var active : haxe.Constraints.Function;
	var failed : haxe.Constraints.Function;
};
extern class Shortcut extends EventEmitter {
	function new(option:ShortcutOption):Void;
	var key : String;
	var active : haxe.Constraints.Function;
	var failed : haxe.Constraints.Function;
}
typedef WindowManifestOptions = {
	@:optional
	var title : String;
	@:optional
	var icon : String;
	@:optional
	var toolbar : Bool;
	@:optional
	var frame : Bool;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var position : String;
	@:optional
	var min_width : Float;
	@:optional
	var min_height : Float;
	@:optional
	var max_width : Float;
	@:optional
	var max_height : Float;
};
extern class Window extends EventEmitter {
	static function get(?windowObject:Dynamic):Window;
	static function open(url:String, ?options:WindowManifestOptions):Window;
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	var title : String;
	var menu : Menu;
	var isFullScreen : Bool;
	var isKioskMode : Bool;
	var zoomLevel : Float;
	function moveTo(x:Float, y:Float):Void;
	function moveBy(x:Float, y:Float):Void;
	function resizeTo(width:Float, height:Float):Void;
	function resizeBy(width:Float, height:Float):Void;
	function focus():Void;
	function blur():Void;
	function show():Void;
	function hide():Void;
	function close(?force:Bool):Void;
	function reload():Void;
	function reloadIgnoringCache():Void;
	function maximize():Void;
	function unmaximize():Void;
	function minimize():Void;
	function restore():Void;
	function enterFullscreen():Void;
	function leaveFullscreen():Void;
	function toggleFullscreen():Void;
	function enterKioskMode():Void;
	function leaveKioskMode():Void;
	function toggleKioskMode():Void;
	@:overload(function(id:HTMLIFrameElement, ?headless:Bool):Void { })
	function showDevTools(?id:String, ?headless:Bool):Void;
	function closeDevTools():Void;
	function isDevToolsOpen():Bool;
	function setMaximumSize(width:Float, height:Float):Void;
	function setMinimumSize(width:Float, height:Float):Void;
	function setResizable(resizable:Bool):Void;
	function setAlwaysOnTop(top:Bool):Void;
	function setPosition(position:String):Void;
	function setShowInTaskbar(show:Bool):Void;
	@:overload(function(attention:Float):Void { })
	function requestAttention(attention:Bool):Void;
	@:overload(function(callback:haxe.Constraints.Function, config_object:{ var format : String; var datatype : String; }):Void { })
	function capturePage(callback:haxe.Constraints.Function, ?imageformat:String):Void;
	function setProgressBar(progress:Float):Void;
	function setBadgeLabel(label:String):Void;
	function eval(frame:HTMLIFrameElement, script:String):Void;
}
typedef App = {
	var argv : Dynamic;
	var fullArgv : Dynamic;
	var dataPath : String;
	var manifest : Dynamic;
	function clearCache():Void;
	function closeAllWindows():Void;
	function crashBrowser():Void;
	function crashRenderer():Void;
	function getProxyForURL(url:String):Void;
	function quit():Void;
	function setCrashDumpDir(dir:String):Void;
	function addOriginAccessWhitelistEntry(sourceOrigin:String, destinationProtocol:String, destinationHost:String, allowDestinationSubdomains:Bool):Void;
	function removeOriginAccessWhitelistEntry(sourceOrigin:String, destinationProtocol:String, destinationHost:String, allowDestinationSubdomains:Bool):Void;
	function registerGlobalHotKey(shortcut:Shortcut):Void;
	function unregisterGlobalHotKey(shortcut:Shortcut):Void;
};
extern class Clipboard {
	@:overload(function(?type:String):String { })
	static function get():Clipboard;
	function set(data:String, ?type:String):Void;
	function clear():Void;
}
typedef TrayOption = {
	@:optional
	var title : String;
	@:optional
	var tooltip : String;
	@:optional
	var icon : String;
	@:optional
	var alticon : String;
	@:optional
	var menu : Menu;
};
extern class Tray {
	function new(option:TrayOption):Void;
	var title : String;
	var tooltip : String;
	var icon : String;
	var alticon : String;
	var menu : Menu;
	function remove():Void;
}
typedef Shell = {
	function openExternal(uri:String):Void;
	function openItem(file_path:String):Void;
	function showItemInFolder(file_path:String):Void;
};
extern class Nw.guiTopLevel {
	static var App : App;
	static var Shell : Shell;
}
