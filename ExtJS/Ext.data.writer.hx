typedef IJson = {
	>Ext.data.writer.IWriter,
	@:optional
	var allowSingle : Bool;
	@:optional
	var encode : Bool;
	@:optional
	var expandData : Bool;
	@:optional
	var root : String;
	@:optional
	function getExpandedData(?data:Dynamic):Void;
};
typedef IWriter = {
	>Ext.IBase,
	@:optional
	var dateFormat : String;
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	var writeRecordId : Bool;
	@:optional
	function getRecordData(?record:Ext.data.IModel, ?operation:Ext.data.IOperation):Dynamic;
	@:optional
	function write(?request:Ext.data.IRequest):Ext.data.IRequest;
};
typedef IXml = {
	>Ext.data.writer.IWriter,
	@:optional
	var defaultDocumentRoot : String;
	@:optional
	var documentRoot : String;
	@:optional
	var header : String;
	@:optional
	var record : String;
};
