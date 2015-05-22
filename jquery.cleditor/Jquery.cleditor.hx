typedef CLEditor = {
	var $area : JQuery;
	var $frame : JQuery;
	var $main : JQuery;
	var $toolbar : JQuery;
	var disabled : Bool;
	var doc : Document;
	var options : JQueryCLEditorOptions;
	function change(handler:haxe.Constraints.Function):CLEditor;
	function clear():CLEditor;
	function disable(disabled:Bool):CLEditor;
	function execCommand(commands:String, value:Dynamic, ?useCSS:Bool, ?button:Dynamic):CLEditor;
	function focus():CLEditor;
	function hidePopups():CLEditor;
	function refresh():CLEditor;
	function select():CLEditor;
	function selectedHTML():String;
	function selectedText():String;
	function showMessage(message:String, ?button:Dynamic):CLEditor;
	function sourceMode():Bool;
	function updateFrame():CLEditor;
	function updateTextArea():CLEditor;
};
typedef JQueryCLEditorOptions = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var controls : String;
	@:optional
	var colors : String;
	@:optional
	var fonts : String;
	@:optional
	var sizes : String;
	@:optional
	var styles : Array<Array<String>>;
	@:optional
	var useCSS : Bool;
	@:optional
	var docType : String;
	@:optional
	var docCSSFile : String;
	@:optional
	var bodyStyle : String;
};
typedef JQueryCLEditorButtonDefinition = {
	var name : String;
	var title : String;
	@:optional
	var css : Dynamic;
	@:optional
	var image : String;
	@:optional
	var stripIndex : Float;
	@:optional
	var command : String;
	@:optional
	var popupName : String;
	@:optional
	var popupContent : String;
	@:optional
	var getEnabled : JQueryCLEditorButtonDefinitionEventData -> Bool;
	@:optional
	var getPressed : JQueryCLEditorButtonDefinitionEventData -> Bool;
	@:optional
	var buttonClick : Event -> JQueryCLEditorButtonDefinitionEventData -> Bool;
	@:optional
	var popupClick : Event -> JQueryCLEditorButtonDefinitionEventData -> Bool;
};
typedef JQueryCLEditorButtonDefinitionEventData = {
	var editor : CLEditor;
	var button : HTMLElement;
	var buttonName : String;
	var popup : HTMLElement;
	var popupName : String;
	var command : String;
	var value : Dynamic;
	var useCSS : Bool;
};
typedef JQueryCLEditorStatic = {
	var defaultOptions : JQueryCLEditorOptions;
	var buttons : Array<JQueryCLEditorButtonDefinition>;
	var imagesPath : Void -> String;
};
typedef JQueryStatic = {
	var cleditor : JQueryCLEditorStatic;
};
typedef JQuery = {
	function cleditor(?options:JQueryCLEditorOptions):CLEditor;
};
