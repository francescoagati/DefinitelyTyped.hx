typedef IContainer = {
	>Ext.IContainer,
	@:optional
	function destroy():Void;
};
typedef IDataItem = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var dataMap : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var itemCls : String;
	@:optional
	var items : Dynamic;
	@:optional
	var record : Ext.data.IModel;
	@:optional
	var width : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDataMap():Dynamic;
	@:optional
	function getDefaultType():String;
	@:optional
	function getItemCls():String;
	@:optional
	function getItems():Array<Dynamic>;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDataMap(?dataMap:Dynamic):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setItemCls(?itemCls:String):Void;
	@:optional
	function setItems(?items:Array<Dynamic>):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel):Void;
	@:optional
	function setWidth(?width:String):Void;
};
typedef IListItem = {
	>Ext.dataview.component.IDataItem,
	@:optional
	var baseCls : String;
	@:optional
	var dataMap : Dynamic;
	@:optional
	var items : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBody():Dynamic;
	@:optional
	function getDataMap():Dynamic;
	@:optional
	function getDisclosure():Dynamic;
	@:optional
	function getHeader():Dynamic;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBody(?body:Dynamic):Void;
	@:optional
	function setDataMap(?dataMap:Dynamic):Void;
	@:optional
	function setDisclosure(?disclosure:Dynamic):Void;
	@:optional
	function setHeader(?header:Dynamic):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setTpl(?tpl:Dynamic):Void;
};
typedef ISimpleListItem = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var record : Ext.data.IModel;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDisclosure():Dynamic;
	@:optional
	function getHeader():Dynamic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDisclosure(?disclosure:Dynamic):Void;
	@:optional
	function setHeader(?header:Dynamic):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel):Void;
};
