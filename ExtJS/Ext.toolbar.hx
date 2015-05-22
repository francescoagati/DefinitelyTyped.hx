typedef IFill = {
	>Ext.IComponent,
	@:optional
	var isFill : Bool;
};
typedef IItem = {
	>Ext.IComponent,
	@:optional
	var overflowText : String;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function focus():Ext.IComponent;
};
typedef IPaging = {
	>Ext.toolbar.IToolbar,
	>Ext.util.IBindable,
	@:optional
	var afterPageText : String;
	@:optional
	var beforePageText : String;
	@:optional
	var displayInfo : Bool;
	@:optional
	var displayMsg : String;
	@:optional
	var emptyMsg : String;
	@:optional
	var firstText : String;
	@:optional
	var inputItemWidth : Float;
	@:optional
	var lastText : String;
	@:optional
	var nextText : String;
	@:optional
	var prependButtons : Bool;
	@:optional
	var prevText : String;
	@:optional
	var refreshText : String;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	function bind(?store:Ext.data.IStore):Void;
	@:optional
	function bindStore(?store:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function doRefresh():Void;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function moveFirst():Void;
	@:optional
	function moveLast():Void;
	@:optional
	function moveNext():Void;
	@:optional
	function movePrevious():Void;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function unbind(?store:Ext.data.IStore):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef ISeparator = {
	>Ext.toolbar.IItem,
	@:optional
	var baseCls : String;
};
typedef ISpacer = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
};
typedef ITextItem = {
	>Ext.toolbar.IItem,
	@:optional
	var baseCls : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var text : String;
	@:optional
	function setText(?text:String):Void;
};
typedef IToolbar = {
	>Ext.container.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var defaultButtonUI : String;
	@:optional
	var defaultType : String;
	@:optional
	var enableOverflow : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var menuTriggerCls : String;
	@:optional
	var vertical : Bool;
	@:optional
	var isToolbar : Bool;
	@:optional
	function add(?args:Dynamic):Dynamic;
	@:optional
	function getRefItems(?deep:Dynamic):Void;
	@:optional
	function insert(?index:Float, ?component:Dynamic):Ext.IComponent;
};
