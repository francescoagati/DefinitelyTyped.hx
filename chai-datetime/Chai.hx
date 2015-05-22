typedef Assertion = {
	function afterDate(date:Date):Assertion;
	function beforeDate(date:Date):Assertion;
	function equalDate(date:Date):Assertion;
	function afterTime(date:Date):Assertion;
	function beforeTime(date:Date):Assertion;
	function equalTime(date:Date):Assertion;
};
typedef Assert = {
	function equalTime(val:Date, exp:Date, ?msg:String):Void;
	function notEqualTime(val:Date, exp:Date, ?msg:String):Void;
	function beforeTime(val:Date, exp:Date, ?msg:String):Void;
	function notBeforeTime(val:Date, exp:Date, ?msg:String):Void;
	function afterTime(val:Date, exp:Date, ?msg:String):Void;
	function notAfterTime(val:Date, exp:Date, ?msg:String):Void;
	function equalDate(val:Date, exp:Date, ?msg:String):Void;
	function notEqualDate(val:Date, exp:Date, ?msg:String):Void;
	function beforeDate(val:Date, exp:Date, ?msg:String):Void;
	function notBeforeDate(val:Date, exp:Date, ?msg:String):Void;
	function afterDate(val:Date, exp:Date, ?msg:String):Void;
	function notAfterDate(val:Date, exp:Date, ?msg:String):Void;
};
typedef Date = {
	var should : Chai.Assertion;
};
