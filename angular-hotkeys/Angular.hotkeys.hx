typedef HotkeysProvider = {
	var template : String;
	var templateTitle : String;
	var includeCheatSheet : Bool;
	var cheatSheetHotkey : String;
	var cheatSheetDescription : String;
	@:overload(function(combo:haxe.extern.EitherType<String, Array<String>>, description:String, callback:Event -> ?Hotkey -> Void, ?action:String, ?allowIn:Array<String>, ?persistent:Bool):ng.hotkeys.Hotkey { })
	@:overload(function(hotkeyObj:ng.hotkeys.Hotkey):ng.hotkeys.Hotkey { })
	function add(combo:haxe.extern.EitherType<String, Array<String>>, callback:Event -> ?Hotkey -> Void, ?action:String, ?allowIn:Array<String>, ?persistent:Bool):ng.hotkeys.Hotkey;
	function bindTo(scope:ng.IScope):ng.hotkeys.HotkeysProviderChained;
	@:overload(function(hotkeyObj:ng.hotkeys.Hotkey):Void { })
	function del(combo:haxe.extern.EitherType<String, Array<String>>):Void;
	function get(combo:haxe.extern.EitherType<String, Array<String>>):ng.hotkeys.Hotkey;
	function toggleCheatSheet():Void;
	function purgeHotkeys():Void;
};
typedef HotkeysProviderChained = {
	@:overload(function(hotkeyObj:ng.hotkeys.Hotkey):HotkeysProviderChained { })
	function add(combo:haxe.extern.EitherType<String, Array<String>>, description:String, callback:Event -> ng.hotkeys.Hotkey -> Void):HotkeysProviderChained;
};
typedef Hotkey = {
	var combo : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var description : String;
	var callback : Event -> ng.hotkeys.Hotkey -> Void;
	@:optional
	var action : String;
	@:optional
	var allowIn : Array<String>;
	@:optional
	var persistent : Bool;
};
