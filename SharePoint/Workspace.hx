extern class WorkspaceTopLevel {
	static function add_resized(handler:Void -> Void):Void;
	static function remove_resized(handler:Void -> Void):Void;
	static function $create_DialogOptions():DialogOptions;
}
extern class Menu {
	static function create(id:String):SP.UI.Menu;
	function addMenuItem(text:String, actionScriptText:String, imageSourceUrl:String, imageAlternateText:String, sequenceNumber:Float, description:String, id:String):HTMLElement;
	function addSeparator():Void;
	function addSubMenu(text:String, imageSourceUrl:String, imageAlternateText:String, sequenceNumber:Float, description:String, id:String):SP.UI.Menu;
	function show(relativeElement:HTMLElement, forceRefresh:Bool, flipTopLevelMenu:Bool, yOffset:Float):Void;
	function showFilterMenu(relativeElement:HTMLElement, forceRefresh:Bool, flipTopLevelMenu:Bool, yOffset:Float, fShowClose:Bool, fShowCheckBoxes:Bool):Void;
	function hideIcons():Void;
	function showIcons():Void;
}
extern class MenuTest {
	static function setup(relativeElement:HTMLElement):Void;
	function new():Void;
}
@:enum abstract DialogResult(Int) {
	var invalid = 0;
	var cancel = 1;
	var OK = 2;
}
typedef DialogReturnValueCallback = { };
typedef IDialogOptions = {
	@:optional
	var title : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var showMaximized : Float;
	@:optional
	var url : String;
	@:optional
	var showClose : Bool;
	@:optional
	var allowMaximize : Bool;
	@:optional
	var dialogReturnValueCallback : DialogReturnValueCallback;
	@:optional
	var autoSize : Bool;
	@:optional
	var autoSizeStartWidth : Float;
	@:optional
	var includeScrollBarPadding : Bool;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var html : HTMLElement;
	@:optional
	var args : Dynamic;
};
extern class DialogOptions {
	var title : String;
	var x : Float;
	var y : Float;
	var showMaximized : Float;
	var url : String;
	var showClose : Bool;
	var allowMaximize : Bool;
	var dialogReturnValueCallback : DialogReturnValueCallback;
	var autoSize : Bool;
	var autoSizeStartWidth : Float;
	var includeScrollBarPadding : Bool;
	var width : Float;
	var height : Float;
	var html : HTMLElement;
	var args : Dynamic;
}
extern class Dialog {
	function get_firstTabStop():HTMLElement;
	function get_lastTabStop():HTMLElement;
	function get_url():String;
	function get_html():String;
	function get_title():String;
	function get_args():Dynamic;
	function get_allowMaximize():Bool;
	function get_showClose():Bool;
	function get_returnValue():Dynamic;
	function set_returnValue(value:Dynamic):Void;
	function get_frameElement():HTMLFrameElement;
	function get_dialogElement():HTMLElement;
	function get_isMaximized():Bool;
	function get_closed():Bool;
	function autoSizeSuppressScrollbar(resizePageCallBack:Dynamic):Void;
	function autoSize():Void;
}
extern class ModalDialog extends SP.UI.Dialog {
	static function showModalDialog(options:SP.UI.IDialogOptions):SP.UI.ModalDialog;
	static function commonModalDialogClose(dialogResult:SP.UI.DialogResult, returnValue:Dynamic):Void;
	static function commonModalDialogOpen(url:String, options:SP.UI.IDialogOptions, callback:SP.UI.DialogReturnValueCallback, args:Dynamic):Void;
	static function RefreshPage(dialogResult:SP.UI.DialogResult):Void;
	static function ShowPopupDialog(url:String):Void;
	static function OpenPopUpPage(url:String, callback:SP.UI.DialogReturnValueCallback, width:Float, height:Float):Void;
	static function showWaitScreenWithNoClose(title:String, message:String, height:Float, width:Float):SP.UI.ModalDialog;
	static function showWaitScreenSize(title:String, message:String, callbackFunc:SP.UI.DialogReturnValueCallback, height:Float, width:Float):SP.UI.ModalDialog;
	static function showPlatformFirstRunDialog(url:String, callbackFunc:SP.UI.DialogReturnValueCallback):SP.UI.ModalDialog;
	static var get_childDialog : Dynamic;
	function close(dialogResult:SP.UI.DialogResult):Void;
}
extern class Command {
	function new(name:String, displayName:String):Void;
	function get_displayName():String;
	function set_displayName(value:String):String;
	function get_tooltip():String;
	function set_tooltip(value:String):String;
	function get_isEnabled():Bool;
	function set_isEnabled(value:Bool):Bool;
	function get_href():String;
	function get_name():String;
	function get_elementIDPrefix():String;
	function set_elementIDPrefix(value:String):String;
	function get_linkElement():HTMLAnchorElement;
	function get_isDropDownCommand():Bool;
	function set_isDropDownCommand(value:Bool):Bool;
	function attachEvents():Void;
	function render(builder:HtmlBuilder):Void;
	function onClick():Void;
}
extern class CommandBar {
	function new():Void;
	function get_commands():Array<Command>;
	function get_dropDownThreshold():Float;
	function set_dropDownThreshold(value:Float):Float;
	function get_elementID():String;
	function get_overrideClass():String;
	function set_overrideClass(value:String):String;
	function addCommand(action:Command):Void;
	function insertCommand(action:Command, position:Float):Void;
	function render(builder:HtmlBuilder):Void;
	function attachEvents():Void;
	function findCommandByName(name:String):Command;
}
extern class PagingControl {
	function new(id:String):Void;
	function render(innerContent:String):String;
	function postRender():Void;
	function get_innerContent():HTMLSpanElement;
	function get_innerContentClass():String;
	function setButtonState(buttonId:Float, state:Float):Void;
	function getButtonState(buttonId:Float):Float;
	function onWindowResized():Void;
	function onPrev():Void;
	function onNext():Void;
	static var ButtonIDs : { var prev : Float; var next : Float; };
	static var ButtonState : { var hidden : Float; var disabled : Float; var enabled : Float; };
}
