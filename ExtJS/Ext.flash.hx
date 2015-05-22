typedef IComponent = {
	>Ext.IComponent,
	@:optional
	var backgroundColor : String;
	@:optional
	var expressInstall : Bool;
	@:optional
	var flashAttributes : Dynamic;
	@:optional
	var flashParams : Dynamic;
	@:optional
	var flashVars : Dynamic;
	@:optional
	var flashVersion : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var swfHeight : Dynamic;
	@:optional
	var swfWidth : Dynamic;
	@:optional
	var url : String;
	@:optional
	var wmode : String;
	@:optional
	var swf : Ext.IElement;
	@:optional
	var EXPRESS_INSTALL_URL : String;
	@:optional
	function afterRender():Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getSwfId():Void;
	@:optional
	function initComponent():Void;
};
