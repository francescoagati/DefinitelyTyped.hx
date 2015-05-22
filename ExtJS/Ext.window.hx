typedef IMessageBox = {
	>Ext.window.IWindow,
	@:optional
	var closeAction : String;
	@:optional
	var cls : String;
	@:optional
	var constrain : Bool;
	@:optional
	var hideMode : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var resizable : Dynamic;
	@:optional
	var shrinkWrapDock : Dynamic;
	@:optional
	var title : String;
	@:optional
	var CANCEL : Float;
	@:optional
	var ERROR : String;
	@:optional
	var INFO : String;
	@:optional
	var NO : Float;
	@:optional
	var OK : Float;
	@:optional
	var OKCANCEL : Float;
	@:optional
	var QUESTION : String;
	@:optional
	var WARNING : String;
	@:optional
	var YES : Float;
	@:optional
	var YESNO : Float;
	@:optional
	var YESNOCANCEL : Float;
	@:optional
	var buttonText : Dynamic;
	@:optional
	var defaultTextHeight : Float;
	@:optional
	var minProgressWidth : Float;
	@:optional
	var minPromptWidth : Float;
	@:optional
	function alert(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	@:optional
	function confirm(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	@:optional
	function hide():Ext.IComponent;
	@:optional
	function onShow():Void;
	@:optional
	function progress(?title:String, ?msg:String, ?progressText:String):Ext.window.IMessageBox;
	@:optional
	function prompt(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic, ?multiline:Dynamic, ?value:String):Ext.window.IMessageBox;
	@:optional
	function setIcon(?icon:String, ?width:Float, ?height:Float):Ext.window.IMessageBox;
	@:optional
	function show(?config:Dynamic):Ext.window.IMessageBox;
	@:optional
	function updateProgress(?value:Float, ?progressText:String, ?msg:String):Ext.window.IMessageBox;
	@:optional
	function wait(?msg:String, ?title:String, ?config:Dynamic):Ext.window.IMessageBox;
};
typedef IWindow = {
	>Ext.panel.IPanel,
	@:optional
	var animateTarget : Dynamic;
	@:optional
	var autoRender : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var closable : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var collapsible : Bool;
	@:optional
	var constrain : Bool;
	@:optional
	var constrainHeader : Bool;
	@:optional
	var defaultFocus : Dynamic;
	@:optional
	var draggable : Bool;
	@:optional
	var expandOnShow : Bool;
	@:optional
	var ghost : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var hideMode : String;
	@:optional
	var hideShadowOnDeactivate : Bool;
	@:optional
	var maximizable : Bool;
	@:optional
	var maximized : Bool;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minimizable : Bool;
	@:optional
	var modal : Bool;
	@:optional
	var onEsc : Dynamic;
	@:optional
	var overlapHeader : Bool;
	@:optional
	var plain : Bool;
	@:optional
	var resizable : Dynamic;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var dd : Ext.util.IComponentDragger;
	@:optional
	var isWindow : Bool;
	@:optional
	function afterCollapse():Void;
	@:optional
	function afterExpand():Void;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function getDefaultFocus():Void;
	@:optional
	function maximize(?animate:Bool):Ext.window.IWindow;
	@:optional
	function minimize():Ext.window.IWindow;
	@:optional
	function onShow():Void;
	@:optional
	function restore(?animate:Dynamic):Ext.window.IWindow;
	@:optional
	function toggleMaximize():Ext.window.IWindow;
};
