typedef OpenDialogOptions = {
	@:optional
	var title : String;
	@:optional
	var defaultPath : String;
	@:optional
	var filters : Array<{ var name : String; var extensions : Array<String>; }>;
	@:optional
	var properties : haxe.extern.EitherType<String, Array<String>>;
};
typedef ShowMessageBoxOptions = {
	@:optional
	var type : String;
	@:optional
	var buttons : Array<String>;
	@:optional
	var title : String;
	@:optional
	var message : String;
	@:optional
	var detail : String;
	@:optional
	var icon : NativeImage;
};
extern class DialogTopLevel {
	static function showOpenDialog(?browserWindow:BrowserWindow, ?options:OpenDialogOptions, ?callback:Array<String> -> Void):Void;
	static function showOpenDialog(?options:OpenDialogOptions, ?callback:Array<String> -> Void):Void;
	static function showSaveDialog(?browserWindow:BrowserWindow, ?options:{ @:optional
	var title : String; @:optional
	var defaultPath : String; @:optional
	var filters : Array<String>; }, ?callback:String -> Void):Void;
	static function showMessageBox(?browserWindow:BrowserWindow, ?options:ShowMessageBoxOptions, ?callback:Dynamic -> Void):Float;
	static function showMessageBox(options:ShowMessageBoxOptions, ?callback:Dynamic -> Void):Float;
}
extern class Tray {
	function addListener(event:String, listener:haxe.Constraints.Function):Tray;
	function on(event:String, listener:haxe.Constraints.Function):Tray;
	function once(event:String, listener:haxe.Constraints.Function):Tray;
	function removeListener(event:String, listener:haxe.Constraints.Function):Tray;
	function removeAllListeners(?event:String):Tray;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
	function new(image:haxe.extern.EitherType<NativeImage, String>):Void;
	function destroy():Void;
	function setImage(image:NativeImage):Void;
	function setPressedImage(image:NativeImage):Void;
	function setToolTip(toolTip:String):Void;
	function setTitle(title:String):Void;
	function setHighlightMode(highlight:Bool):Void;
	function displayBalloon(?options:{ @:optional
	var icon : NativeImage; @:optional
	var title : String; @:optional
	var content : String; }):Void;
	function setContextMenu(menu:Menu):Void;
}
