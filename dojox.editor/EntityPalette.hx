extern class LatinEntity {
	function new(alias:String):Void;
	function fillCell(cell:HTMLElement):Void;
	function getValue():String;
}
extern class PageBreak extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class Preview extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var styles : String;
	var stylesheets : Array<Dynamic>;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class ResizeTableColumn extends dojox.editor.plugins.TablePlugins {
	function new():Void;
	var alwaysAvailable : Bool;
	var button : Dynamic;
	var command : String;
	var commandName : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var label : String;
	var undoEnabled : Bool;
	var useDefaultCommand : Bool;
	function begEdit():Void;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function endEdit():Void;
	function get(name:Dynamic):Dynamic;
	function getSelectedCells():Dynamic;
	function getTableInfo(forceNewData:Dynamic):Dynamic;
	function makeColumnsEven():Void;
	function modTable(cmd:Dynamic, args:Dynamic):Void;
	function own():Dynamic;
	function selectTable():Void;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:Dynamic):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
	function onDisplayChanged(withinTable:Dynamic):Void;
	function onEditorLoaded():Void;
}
extern class ShowBlockNodes extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function toggle():Void;
	function updateState():Void;
}
extern class Save extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var logResults : Bool;
	var url : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function save(content:Dynamic):Void;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
	function onError(error:Dynamic, ioargs:Dynamic):Void;
	function onSuccess(resp:Dynamic, ioargs:Dynamic):Void;
}
extern class SafePaste extends dojox.editor.plugins.PasteFromWord {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var height : String;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	var width : String;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class Smiley extends dijit._editor._Plugin {
	function new(?args:Dynamic):Void;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var emoticonImageClass : String;
	var emoticonMarker : String;
	var iconClassPrefix : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
extern class SpellCheck extends dijit._editor._Plugin {
	function new():Void;
	var bufferLength : Float;
	var button : Dynamic;
	var command : String;
	var disabled : Bool;
	var editor : Dynamic;
	var iconClassPrefix : String;
	var interactive : Bool;
	var timeout : Float;
	var url : String;
	var useDefaultCommand : Bool;
	function buttonClass():Void;
	function connect(o:Dynamic, f:Dynamic, tf:Dynamic):Void;
	function destroy():Void;
	function get(name:Dynamic):Dynamic;
	function own():Dynamic;
	function set(name:Attr, value:Dynamic):Dynamic;
	function setEditor(editor:dijit.Editor):Void;
	function setToolbar(toolbar:dijit.Toolbar):Void;
	function updateState():Void;
}
