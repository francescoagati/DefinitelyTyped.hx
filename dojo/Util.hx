typedef Filter = {
	function patternToRegExp(pattern:String, ignoreCase:Bool):Dynamic;
};
typedef SimpleFetch = {
	function errorHandler(errorData:Dynamic, requestObject:Dynamic):Void;
	function fetch(request:Dynamic):Void;
	function fetchHandler(items:Array<Dynamic>, requestObject:Dynamic):Void;
};
typedef Sorter = {
	function basicComparator(a:Dynamic, b:Dynamic):Float;
	function createSortFunction(sortSpec:Dynamic, store:dojo.data.api.Read):Array<String>;
};
typedef QueryResults = { };
typedef QueryResults = { };
typedef SimpleQueryEngine = { };
typedef Date = {
	function add(date:Date, interval:String, amount:Float):Dynamic;
	function compare(date1:Date, date2:Date, portion:String):Float;
	function difference(date1:Date, date2:Date, interval:String):Dynamic;
	function getDaysInMonth(dateObject:Date):Float;
	function getTimezoneName(dateObject:Date):Dynamic;
	function isLeapYear(dateObject:Date):Bool;
};
