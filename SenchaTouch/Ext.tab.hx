typedef IBar = {
	>Ext.IToolbar,
	@:optional
	var activeTab : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	function getActiveTab():Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function initialize():Void;
	@:optional
	function setActiveTab(?activeTab:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
};
typedef IPanel = {
	>Ext.IContainer,
	@:optional
	var cls : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var tabBar : Dynamic;
	@:optional
	var tabBarDock : Bool;
	@:optional
	var tabBarPosition : String;
	@:optional
	var ui : String;
	@:optional
	function doTabChange(?tabBar:Dynamic, ?newTab:Dynamic):Bool;
	@:optional
	function getCls():String;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getTabBar():Dynamic;
	@:optional
	function getTabBarPosition():String;
	@:optional
	function getUi():String;
	@:optional
	function initialize():Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setTabBar(?tabBar:Dynamic):Void;
	@:optional
	function setTabBarPosition(?tabBarPosition:String):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function updateUi(?newUi:Dynamic, ?oldUi:Dynamic):Void;
};
typedef ITab = {
	>Ext.IButton,
	@:optional
	var active : Bool;
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var pressedCls : String;
	@:optional
	var title : String;
	@:optional
	function getActive():Bool;
	@:optional
	function getActiveCls():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getPressedCls():String;
	@:optional
	function getTitle():String;
	@:optional
	function setActive(?active:Bool):Void;
	@:optional
	function setActiveCls(?activeCls:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setPressedCls(?pressedCls:String):Void;
	@:optional
	function setTitle(?title:String):Void;
};
