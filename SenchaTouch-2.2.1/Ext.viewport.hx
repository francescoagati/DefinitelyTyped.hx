typedef IAndroid = {
	>Ext.viewport.IDefault,
	@:optional
	function getAutoBlurInput():Bool;
	@:optional
	function setAutoBlurInput(?autoBlurInput:Bool):Void;
};
typedef IDefault = {
	>Ext.IContainer,
	@:optional
	var autoMaximize : Bool;
	@:optional
	var id : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var preventPanning : Bool;
	@:optional
	var preventZooming : Bool;
	@:optional
	var isReady : Bool;
	@:optional
	function getAutoMaximize():Bool;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getOrientation():String;
	@:optional
	function getPreventPanning():Bool;
	@:optional
	function getPreventZooming():Bool;
	@:optional
	function getSize():Dynamic;
	@:optional
	function getUseBodyElement():Bool;
	@:optional
	function getWindowHeight():Float;
	@:optional
	function getWindowWidth():Float;
	@:optional
	function setAutoMaximize(?autoMaximize:Bool):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setPreventPanning(?preventPanning:Bool):Void;
	@:optional
	function setPreventZooming(?preventZooming:Bool):Void;
	@:optional
	function setUseBodyElement(?useBodyElement:Bool):Void;
};
typedef IIos = {
	>Ext.viewport.IDefault,
};
typedef IViewport = {
	>Ext.IBase,
};
typedef IWindowsPhone = {
	>Ext.viewport.IDefault,
	@:optional
	function initialize():Void;
};
typedef IWP = {
	>Ext.viewport.IDefault,
	@:optional
	function initialize():Void;
};
