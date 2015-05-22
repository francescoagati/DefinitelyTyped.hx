typedef Window = {
	>WindowDatabase,
};
typedef WorkerUtils = {
	>WorkerUtilsDatabase,
};
typedef DOMString = {
	>String,
};
typedef ObjectArray = {
	>Array<Dynamic>,
};
typedef WindowDatabase = {
	function openDatabase(name:DOMString, version:DOMString, displayName:DOMString, estimatedSize:Float, ?creationCallback:DatabaseCallback):Database;
};
typedef WorkerUtilsDatabase = {
	function openDatabase(name:DOMString, version:DOMString, displayName:DOMString, estimatedSize:Float, ?creationCallback:DatabaseCallback):Database;
	function openDatabaseSync(name:DOMString, version:DOMString, displayName:DOMString, estimatedSize:Float, ?creationCallback:DatabaseCallback):DatabaseSync;
};
typedef DatabaseCallback = { };
typedef Database = {
	var version : DOMString;
	function transaction(callback:SQLTransactionCallback, ?errorCallback:SQLTransactionErrorCallback, ?successCallback:SQLVoidCallback):Void;
	function readTransaction(callback:SQLTransactionCallback, ?errorCallback:SQLTransactionErrorCallback, ?successCallback:SQLVoidCallback):Void;
	function changeVersion(oldVersion:DOMString, newVersion:DOMString, ?callback:SQLTransactionCallback, ?errorCallback:SQLTransactionErrorCallback, ?successCallback:SQLVoidCallback):Void;
};
typedef SQLVoidCallback = { };
typedef SQLTransactionCallback = { };
typedef SQLTransactionErrorCallback = { };
typedef SQLTransaction = {
	function executeSql(sqlStatement:DOMString, ?arguments:ObjectArray, ?callback:SQLStatementCallback, ?errorCallback:SQLStatementErrorCallback):Void;
};
typedef SQLStatementCallback = { };
typedef SQLStatementErrorCallback = { };
typedef DatabaseSync = {
	var version : DOMString;
	function transaction(callback:SQLTransactionSyncCallback):Void;
	function readTransaction(callback:SQLTransactionSyncCallback):Void;
	function changeVersion(oldVersion:DOMString, newVersion:DOMString, callback:SQLTransactionSyncCallback):Void;
};
typedef SQLTransactionSyncCallback = { };
typedef SQLTransactionSync = {
	function executeSql(sqlStatement:DOMString, ?arguments:ObjectArray):SQLResultSet;
};
typedef SQLResultSet = {
	var insertId : Float;
	var rowsAffected : Float;
	var rows : SQLResultSetRowList;
};
typedef SQLResultSetRowList = {
	var length : Float;
	function item(index:Float):Dynamic;
};
extern class SQLError {
	static var UNKNOWN_ERR : Float;
	static var DATABASE_ERR : Float;
	static var VERSION_ERR : Float;
	static var TOO_LARGE_ERR : Float;
	static var QUOTA_ERR : Float;
	static var SYNTAX_ERR : Float;
	static var CONSTRAINT_ERR : Float;
	static var TIMEOUT_ERR : Float;
	var code : Float;
	var message : DOMString;
}
extern class SQLException {
	static var UNKNOWN_ERR : Float;
	static var DATABASE_ERR : Float;
	static var VERSION_ERR : Float;
	static var TOO_LARGE_ERR : Float;
	static var QUOTA_ERR : Float;
	static var SYNTAX_ERR : Float;
	static var CONSTRAINT_ERR : Float;
	static var TIMEOUT_ERR : Float;
	var code : Float;
	var message : DOMString;
}
