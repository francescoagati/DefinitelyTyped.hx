typedef IBar = {
	>Ext.panel.IHeader,
	@:optional
	var baseCls : String;
	@:optional
	var maxTabWidth : Float;
	@:optional
	var minTabWidth : Float;
	@:optional
	var plain : Bool;
	@:optional
	var isTabBar : Bool;
	@:optional
	function afterComponentLayout(?width:Dynamic):Void;
	@:optional
	function afterLayout():Void;
	@:optional
	function afterRender():Void;
	@:optional
	function getLayout():Ext.layout.container.IContainer;
	@:optional
	function onRemove(?tab:Dynamic):Void;
	@:optional
	function onRender():Void;
};
typedef IPanel = {
	>Ext.panel.IPanel,
	@:optional
	var activeItem : Dynamic;
	@:optional
	var activeTab : Dynamic;
	@:optional
	var deferredRender : Bool;
	@:optional
	var itemCls : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var maxTabWidth : Float;
	@:optional
	var minTabWidth : Float;
	@:optional
	var plain : Bool;
	@:optional
	var removePanelHeader : Bool;
	@:optional
	var tabBar : Dynamic;
	@:optional
	var tabPosition : Dynamic;
	@:optional
	function getActiveTab():Ext.IComponent;
	@:optional
	function getTabBar():Ext.tab.IBar;
	@:optional
	function onAdd(?item:Dynamic, ?index:Dynamic):Void;
	@:optional
	function setActiveTab(?card:Dynamic):Ext.IComponent;
};
typedef ITab = {
	>Ext.button.IButton,
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var closable : Bool;
	@:optional
	var closableCls : String;
	@:optional
	var closeText : String;
	@:optional
	var disabledCls : String;
	@:optional
	var scale : Dynamic;
	@:optional
	var active : Bool;
	@:optional
	var isTab : Bool;
	@:optional
	function disable(?silent:Dynamic):Void;
	@:optional
	function enable(?silent:Dynamic):Void;
	@:optional
	function getTemplateArgs():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function setCard(?card:Ext.IComponent):Void;
	@:optional
	function setClosable(?closable:Bool):Void;
};
