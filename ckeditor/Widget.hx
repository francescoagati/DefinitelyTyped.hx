typedef IWidget = {
	var allowedContent : Dynamic;
	var button : String;
	var contentForms : Dynamic;
	var contentTransformations : Dynamic;
	var data : haxe.Constraints.Function;
	var defaults : Dynamic;
	var dialog : String;
	var downcast : Dynamic;
	var downcasts : Dynamic;
	var draggable : Bool;
	var editables : Dynamic;
	var init : haxe.Constraints.Function;
	var inline : Boolean;
	var insert : haxe.Constraints.Function;
	var mask : Boolean;
	var name : String;
	var parts : Dynamic;
	var pathName : String;
	var requiredContent : Dynamic;
	var styleToAllowedContentRules : haxe.Constraints.Function;
	var styleableElements : String;
	var template : String;
	var upcast : Dynamic;
	var upcasts : Dynamic;
	function addClass(className:String):Void;
	function applyStyle(style:Dynamic):Void;
	function capture():Void;
	function checkStyleActive(style:Dynamic):Bool;
	function define(name:String, meta:{ @:optional
	var errorProof : Bool; }):Void;
	function destroy(?offline:Bool):Void;
	function destroyEditable(editableName:String, ?offline:Bool):Void;
	function edit():Bool;
	function fire(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic;
	function fireOnce(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic;
	function focus():Void;
	function getClasses():Dynamic;
	function hasClass(className:String, Whether:Bool):Void;
	function hasListeners(eventName:String):Bool;
	function initEditable(editableName:String, definition:Dynamic):Bool;
	function isInited():Bool;
	function isReady():Bool;
	function on(eventName:String, listenerFunction:haxe.Constraints.Function, scopeObj:Dynamic, listenerData:Dynamic, priority:Float):Dynamic;
	function once():Void;
	function removeAllListeners():Void;
	function removeClass(className:String):Void;
	function removeListener(evnetName:String, listenerFunction:haxe.Constraints.Function):Void;
	function removeStyle(style:Dynamic):Void;
	function setData(keyOrData:Dynamic, ?value:Dynamic):IWidget;
	function setFocused(selected:Bool):IWidget;
	function setSelected(selected:Bool):IWidget;
	function toFeature():Dynamic;
	function updateDragHandlerPosition():Void;
};
typedef IWidgetDefinition = {
	@:optional
	var allowedContent : Dynamic;
	@:optional
	var button : String;
	@:optional
	var contentForms : Dynamic;
	@:optional
	var contentTransformations : Dynamic;
	@:optional
	var data : haxe.Constraints.Function;
	@:optional
	var defaults : Dynamic;
	@:optional
	var dialog : String;
	@:optional
	var downcast : Dynamic;
	@:optional
	var downcasts : Dynamic;
	@:optional
	var draggable : Bool;
	@:optional
	var edit : haxe.Constraints.Function;
	@:optional
	var editables : Dynamic;
	@:optional
	var init : haxe.Constraints.Function;
	@:optional
	var inline : Boolean;
	@:optional
	var insert : haxe.Constraints.Function;
	@:optional
	var mask : Boolean;
	@:optional
	var name : String;
	@:optional
	var parts : Dynamic;
	@:optional
	var pathName : String;
	@:optional
	var requiredContent : Dynamic;
	@:optional
	var styleToAllowedContentRules : haxe.Constraints.Function;
	@:optional
	var styleableElements : String;
	@:optional
	var template : String;
	@:optional
	var upcast : Dynamic;
	@:optional
	var upcasts : Dynamic;
	@:optional
	function toFeature():Dynamic;
};
extern class Repository {
	function add(name:String, widgetDef:IWidgetDefinition):Void;
	function addUpcastCallback(callback:haxe.Constraints.Function):Void;
	function capture():Void;
	function checkSelection():Void;
	function checkWidgets(?options:{ @:optional
	var initOnlyNew : Bool; @:optional
	var focusInited : Bool; }):Void;
	function define(name:String, ?meta:{ @:optional
	var errorProof : Bool; }):Void;
	function del(widget:IWidget):Void;
	function destroy(widget:IWidget, ?offline:Bool):Void;
	function destroyAll(?offline:Bool):Void;
	function finalizeCreation(container:Dynamic):Void;
	function fire(eventName:String, data:Dynamic, editor:Editor):Dynamic;
	function getByElement(element:Dynamic, checkWrapperOnly:Bool):IWidget;
	function hasListeners(eventName:String):Bool;
	function initOn(element:Dynamic, ?widgetDef:IWidgetDefinition, ?startupData:Dynamic):IWidget;
	function initOnAll(?container:Dynamic):Array<IWidget>;
	function on(eventName:String, listenerFunction:haxe.Constraints.Function, ?scopeObj:Dynamic, ?listenerData:Dynamic, ?priority:Float):Dynamic;
	function once():Void;
	function parseElementClasses(classes:String):Dynamic;
	function removeAllListeners(eventName:String, listenerFunction:haxe.Constraints.Function):Void;
	function wrapElement(element:Dynamic, ?widgetName:String):Dynamic;
}
typedef IPluginDefinition = {
	@:optional
	var hidpi : Bool;
	@:optional
	var lang : Dynamic;
	@:optional
	var requires : Dynamic;
	@:optional
	function afterInit(editor:Editor):Dynamic;
	@:optional
	function beforeInit(editor:Editor):Dynamic;
	@:optional
	function init(editor:Editor):Dynamic;
	@:optional
	function onLoad():Dynamic;
};
extern class Editor extends Event {
	var activeEnterMode : Float;
	var activeFilter : Filter;
	var activeShiftEnterMode : Float;
	var blockless : Bool;
	var config : Config;
	var container : dom.Element;
	var contextMenu : plugins.ContextMenu;
	var dataProcessor : DataProcessor;
	var document : dom.Document;
	var element : dom.Element;
	var elementMode : Float;
	var enterMode : Float;
	var filter : Filter;
	var focusManager : FocusManager;
	var id : String;
	var keystrokeHandler : KeystrokeHandler;
	var lang : Dynamic;
	var langCode : String;
	var mode : String;
	var name : String;
	var plugins : Dynamic;
	var readOnly : Bool;
	var shiftEnterMode : Float;
	var status : String;
	var tabIndex : Float;
	var templates : Dynamic;
	var title : Dynamic;
	var toolbar : Dynamic;
	var ui : Ui;
	var widgets : plugins.widget.Repository;
	var window : dom.Window;
	function new(?instanceConfig:Dynamic, ?element:dom.Element, ?mode:Float):Void;
	function addCommand(commandName:String, commandDefinition:CommandDefinition):Void;
	function addFeature(feature:Feature):Bool;
	function addMenuGroup(name:String, ?order:Float):Void;
	function addMenuItem(name:String, ?definition:Dynamic):Void;
	function addMenuItems(definitions:Array<Dynamic>):Void;
	function addMode(mode:String, exec:Void -> Void):Void;
	function addRemoveFormatFilter(func:haxe.Constraints.Function):Void;
	function applyStyle(style:Style):Void;
	function attachStyleStateChange(style:Style, callback:haxe.Constraints.Function):Void;
	function checkDirty():Bool;
	function createFakeElement(realElement:Dynamic, className:Dynamic, realElementType:Dynamic, isResizable:Dynamic):Void;
	function createFakeParserElement(realElement:Dynamic, className:Dynamic, realElementType:Dynamic, isResizable:Dynamic):Void;
	function createRange():dom.Range;
	function destroy(?noUpdate:Bool):Void;
	@:overload(function(elementOrEditable:Editable):Void { })
	function editable(elementOrEditable:dom.Element):Void;
	function elementPath(?startNode:dom.Node):dom.ElementPath;
	function execCommand(commandName:String, ?data:Dynamic):Bool;
	function focus():Void;
	function forceNextSelectionCheck():Void;
	function getClipboardData(options:Dynamic, callback:haxe.Constraints.Function):Void;
	function getColorFromDialog(callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function getCommand(commandName:String):Command;
	function getData(?noEvents:Dynamic):String;
	function getMenuItem(name:String):Dynamic;
	function getResizable(forContents:Bool):dom.Element;
	function getSelection(?forceRealSelection:Bool):dom.Selection;
	function getSnapshot():String;
	function getStylesSet(callback:haxe.Constraints.Function):Void;
	function getUiColor():String;
	function insertElement(element:dom.Element):Void;
	function insertHtml(html:String, ?mode:String):Void;
	function insertText(text:String):Void;
	function loadSnapshot(snapshot:Dynamic):Void;
	function lockSelection(?sel:dom.Selection):Bool;
	function openDialog(dialogName:String, callback:haxe.Constraints.Function):Dialog;
	@:overload(function(url:String, ?width:String, ?height:Float, ?options:String):Void { })
	@:overload(function(url:String, ?width:Float, ?height:String, ?options:String):Void { })
	@:overload(function(url:String, ?width:String, ?height:String, ?options:String):Void { })
	function popup(url:String, ?width:Float, ?height:Float, ?options:String):Void;
	function removeMenuItem(name:String):Void;
	function removeStyle(style:Style):Void;
	function resetDirty():Void;
	function resetUndo():Void;
	@:overload(function(width:String, height:Float, ?isContentHeight:Bool, ?resizeInner:Bool):Void { })
	@:overload(function(width:Float, height:String, ?isContentHeight:Bool, ?resizeInner:Bool):Void { })
	@:overload(function(width:String, height:String, ?isContentHeight:Bool, ?resizeInner:Bool):Void { })
	function resize(width:Float, height:Float, ?isContentHeight:Bool, ?resizeInner:Bool):Void;
	function restoreRealElement(fakeElement:Dynamic):dom.Element;
	function selectionChange(?checkNow:Bool):Void;
	function setActiveEnterMode(enterMode:Float, shiftEnterMode:Float):Void;
	function setActiveFilter(filter:Filter):Void;
	function setData(data:String, ?options:{ @:optional
	var internal : Bool; @:optional
	var callback : haxe.Constraints.Function; @:optional
	var noSnapshot : Bool; }):Void;
	@:overload(function(keystroke:Array<Dynamic>, ?behavior:String):Void { })
	@:overload(function(keystroke:Float, ?behavior:Bool):Void { })
	@:overload(function(keystroke:Array<Dynamic>, ?behavior:Bool):Void { })
	function setKeystroke(keystroke:Float, ?behavior:String):Void;
	function setMode(newMode:String, callback:haxe.Constraints.Function):Void;
	function setReadOnly(?isReadOnly:Bool):Void;
	function setUiColor(color:String):Void;
	function unlockSelection(?restore:Bool):Void;
	function updateElement():Void;
}
typedef EventInfo = {
	var data : Dynamic;
	var editor : Editor;
	var listenerData : Dynamic;
	var name : String;
	var sender : Dynamic;
	function cancel():Void;
	function removeListener():Void;
	function stop():Void;
};
extern class Filter {

}
typedef Template = { };
typedef DataProcessor = {
	function toDataFormat(html:String, fixForBody:String):Void;
	function toHtml(data:String, ?fixForBody:String):Void;
};
extern class Event {
	function new():Void;
	var useCapture : Bool;
	function capture():Void;
	function define(name:String, meta:Dynamic):Void;
	function fire(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic;
	function fireOnce(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic;
	function hasListeners(eventName:String):Bool;
	function on(eventName:String, listenerFunction:EventInfo -> Void, ?scopeObj:Dynamic, ?listenerData:Dynamic, ?priority:Float):Void;
	function once(eventName:String, listenerFunction:EventInfo -> Void, ?scopeObj:Dynamic, ?listenerData:Dynamic, ?priority:Float):Void;
	function removeAllListeners():Void;
	function removeListener(eventName:String, listenerFunction:EventInfo -> Void):Void;
	static function implementOn(targetObject:Dynamic):Void;
}
typedef CommandDefinition = {
	@:optional
	var async : Bool;
	@:optional
	var canUndo : Bool;
	@:optional
	var context : Bool;
	@:optional
	var contextSensitive : Bool;
	@:optional
	var editorFocus : Bool;
	@:optional
	var modes : Dynamic;
	@:optional
	var startDisabled : Bool;
	function exec(editor:Editor, ?data:Dynamic):Bool;
	@:optional
	function refresh(editor:Editor, path:dom.ElementPath):Void;
};
extern class Dtd {

}
extern class Ui extends Event {
	function new(editor:Editor):Void;
	function add(name:String, type:Dynamic, definition:Dynamic):Void;
	function addButton(name:String, definition:dialog.definition.Button):Void;
	function addHandler(type:Dynamic, handler:Dynamic):Void;
}
