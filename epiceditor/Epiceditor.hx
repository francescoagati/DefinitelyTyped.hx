typedef EpicEditorOptions = {
	@:optional
	var container : Dynamic;
	@:optional
	var textarea : Dynamic;
	@:optional
	var basePath : String;
	@:optional
	var clientSideStorage : Bool;
	@:optional
	var localStorageName : String;
	@:optional
	var useNativeFullsreen : Bool;
	@:optional
	var parser : Dynamic;
	@:optional
	var file : { var name : String; var defaultContent : String; var autoSave : Dynamic; };
	@:optional
	var theme : { var base : String; var preview : String; var editor : String; };
	@:optional
	var focusOnLoad : Bool;
	@:optional
	var shortcut : { var modifier : Float; var fullscreen : Float; var preview : Float; };
	@:optional
	var string : { var togglePreview : String; var toggleEdit : String; var toggleFullscreen : String; };
};
extern class EpicEditor {
	@:overload(function(options:EpicEditorOptions):Void { })
	function new():Void;
	function load(?callback:haxe.Constraints.Function):EpicEditor;
	function unload(?callback:haxe.Constraints.Function):EpicEditor;
	function getElement(element:String):Dynamic;
	function is(state:String):Bool;
	function open(filename:String):Dynamic;
	function importFile(?filename:String, ?content:String):Void;
	function exportFile(?filename:String, ?type:String):Dynamic;
	function rename(oldName:String, newName:String):Void;
	function save():Void;
	function remove(filename:String):Void;
	function getFiles(?filename:String):Dynamic;
	function on(event:String, handler:haxe.Constraints.Function):Void;
	function emit(event:String):Void;
	function removeListener(event:String, ?handler:haxe.Constraints.Function):Void;
	function preview():Void;
	function edit():Void;
	function enterFullscreen():Void;
	function exitFullscreen():Void;
	function reflow(?type:String):Void;
}
