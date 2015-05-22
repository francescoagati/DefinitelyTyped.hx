typedef IGrid = {
	>Ext.grid.IPanel,
	@:optional
	var columnLines : Bool;
	@:optional
	var customEditors : Dynamic;
	@:optional
	var customRenderers : Dynamic;
	@:optional
	var enableColumnMove : Bool;
	@:optional
	var inferTypes : Bool;
	@:optional
	var nameColumnWidth : Dynamic;
	@:optional
	var nameField : String;
	@:optional
	var propertyNames : Dynamic;
	@:optional
	var source : Dynamic;
	@:optional
	var sourceConfig : Dynamic;
	@:optional
	var valueField : String;
	@:optional
	function getSource():Dynamic;
	@:optional
	function removeProperty(?prop:String):Void;
	@:optional
	function setProperty(?prop:String, ?value:Dynamic, ?create:Bool):Void;
	@:optional
	function setSource(?source:Dynamic, ?sourceConfig:Dynamic):Void;
};
typedef IHeaderContainer = {
	>Ext.grid.header.IContainer,
};
typedef IProperty = {
	>Ext.data.IModel,
	@:optional
	var idProperty : Dynamic;
	@:optional
	var fields : Ext.util.IMixedCollection;
};
typedef IStore = {
	>Ext.data.IStore,
	@:optional
	var sortOnLoad : Bool;
	@:optional
	function getProxy():Ext.data.proxy.IProxy;
};
