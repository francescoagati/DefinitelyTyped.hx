typedef IBar = {
	>Ext.ITitleBar,
	@:optional
	var androidAnimation : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var cls : String;
	@:optional
	var ui : String;
	@:optional
	function getAndroidAnimation():Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getCls():String;
	@:optional
	function getUi():String;
	@:optional
	function setAndroidAnimation(?androidAnimation:Bool):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef IView = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var defaultBackButtonText : String;
	@:optional
	var items : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var navigationBar : Dynamic;
	@:optional
	var useTitleForBackButtonText : Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDefaultBackButtonText():String;
	@:optional
	function getItems():Dynamic;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getNavigationBar():Dynamic;
	@:optional
	function getPreviousItem():Dynamic;
	@:optional
	function getUseTitleForBackButtonText():Bool;
	@:optional
	function pop(?count:Dynamic):Ext.IComponent;
	@:optional
	function push(?view:Dynamic):Ext.IComponent;
	@:optional
	function reset():Ext.IComponent;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDefaultBackButtonText(?defaultBackButtonText:String):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setNavigationBar(?navigationBar:Dynamic):Void;
	@:optional
	function setUseTitleForBackButtonText(?useTitleForBackButtonText:Bool):Void;
};
