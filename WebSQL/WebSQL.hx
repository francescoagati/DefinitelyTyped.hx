typedef Window = {
	function openDatabase(name:String, version:String, displayname:String, size:Float, ?creationCallback:Database -> Void):Database;
};
typedef Database = {
	function transaction(callback:SqlTransaction -> Void, ?errorCallback:SqlError -> Void, ?successCallback:Void -> Void):Void;
	function readTransaction(callback:SqlTransaction -> Void, ?errorCallback:SqlError -> Void, ?successCallback:Void -> Void):Void;
	var name : String;
	var version : String;
	var displayName : String;
	var size : Float;
};
typedef SqlTransaction = {
	function executeSql(sql:String, ?arguments:Array<Dynamic>, ?successCallback:SqlTransaction -> SqlResultSet -> Void, ?errorCallback:SqlTransaction -> SqlError -> Dynamic):Void;
};
typedef SqlResultSet = {
	var insertId : Float;
	var rowsAffected : Float;
	var rows : SqlResultSetRowList;
};
typedef SqlResultSetRowList = {
	var length : Float;
	function item(index:Float):Dynamic;
};
typedef SqlError = {
	var code : Float;
	var message : String;
};
extern class WebSQLTopLevel {
	static var Database : { function new(name:String, version:String, displayname:String, size:Float, creationCallback:Database -> Void):Database; };
	static var SqlTransaction : { function new():SqlTransaction; };
	static var SqlError : { var UNKNOWN_ERR : Float; var DATABASE_ERR : Float; var VERSION_ERR : Float; var TOO_LARGE_ERR : Float; var QUOTA_ERR : Float; var SYNTAX_ERR : Float; var CONSTRAINT_ERR : Float; var TIMEOUT_ERR : Float; };
}
