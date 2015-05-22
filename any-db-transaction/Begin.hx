typedef Transaction = {
	>anyDB.Queryable,
	function commit(?callback:Error -> Void):Void;
	function rollback(?callback:Error -> Void):Void;
};
typedef TransactionOptions = {
	@:optional
	var adapter : anyDB.Adapter;
	@:optional
	var begin : String;
	@:optional
	var commit : String;
	@:optional
	var rollback : String;
	@:optional
	var callback : Error -> Transaction -> Void;
	@:optional
	var autoRollback : Bool;
};
