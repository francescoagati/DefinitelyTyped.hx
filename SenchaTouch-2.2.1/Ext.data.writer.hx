typedef IJson = {
	>Ext.data.writer.IWriter,
	@:optional
	var allowSingle : Bool;
	@:optional
	var encode : Bool;
	@:optional
	var root : String;
	@:optional
	var rootProperty : String;
	@:optional
	function getAllowSingle():Bool;
	@:optional
	function getEncode():Bool;
	@:optional
	function getEncodeRequest():Bool;
	@:optional
	function getRootProperty():String;
	@:optional
	function setAllowSingle(?allowSingle:Bool):Void;
	@:optional
	function setEncode(?encode:Bool):Void;
	@:optional
	function setEncodeRequest(?encodeRequest:Bool):Void;
	@:optional
	function setRootProperty(?rootProperty:String):Void;
};
typedef IWriter = {
	>Ext.IBase,
	@:optional
	var nameProperty : String;
	@:optional
	var writeAllFields : Bool;
	@:optional
	function getNameProperty():String;
	@:optional
	function getRecordData(?record:Dynamic):Dynamic;
	@:optional
	function getWriteAllFields():Bool;
	@:optional
	function setNameProperty(?nameProperty:String):Void;
	@:optional
	function setWriteAllFields(?writeAllFields:Bool):Void;
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
	@:optional
	function getDefaultDocumentRoot():String;
	@:optional
	function getDocumentRoot():String;
	@:optional
	function getHeader():String;
	@:optional
	function getRecord():String;
	@:optional
	function setDefaultDocumentRoot(?defaultDocumentRoot:String):Void;
	@:optional
	function setDocumentRoot(?documentRoot:String):Void;
	@:optional
	function setHeader(?header:String):Void;
	@:optional
	function setRecord(?record:String):Void;
	@:optional
	function writeRecords(?request:Dynamic, ?data:Dynamic):Dynamic;
};
