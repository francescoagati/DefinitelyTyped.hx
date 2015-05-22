typedef IFileUploadField = {
	>Ext.form.field.ITrigger,
	@:optional
	var buttonConfig : Dynamic;
	@:optional
	var buttonMargin : Float;
	@:optional
	var buttonOnly : Bool;
	@:optional
	var buttonText : String;
	@:optional
	var clearOnSubmit : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var readOnly : Bool;
	@:optional
	var button : Ext.button.IButton;
	@:optional
	var fileInputEl : Ext.IElement;
	@:optional
	function extractFileInput():HTMLElement;
	@:optional
	function getTriggerMarkup():Void;
	@:optional
	function isFileUpload():Bool;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onRender():Void;
	@:optional
	function onShow():Void;
	@:optional
	function reset():Void;
	@:optional
	function setValue():Void;
};
