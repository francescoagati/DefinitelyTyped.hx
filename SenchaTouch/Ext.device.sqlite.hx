typedef IDatabase = {
	>Ext.IBase,
	@:optional
	function changeVersion(?config:Dynamic):Void;
	@:optional
	function getVersion():String;
	@:optional
	function readTransaction(?config:Dynamic):Void;
	@:optional
	function transaction(?config:Dynamic):Void;
};
typedef ISencha = {
	>Ext.IBase,
	@:optional
	function openDatabase(?config:Dynamic):Ext.device.sqlite.IDatabase;
};
typedef ISQLResultSet = {
	>Ext.IBase,
	@:optional
	function getInsertId():Float;
	@:optional
	function getRows():Ext.device.sqlite.ISQLResultSetRowList;
	@:optional
	function getRowsAffected():Float;
};
typedef ISQLResultSetRowList = {
	>Ext.IBase,
	@:optional
	function getLength():Float;
	@:optional
	function item(?index:Float):Dynamic;
};
typedef ISQLTransaction = {
	>Ext.IBase,
	@:optional
	function executeSql(?config:Dynamic):Void;
};
