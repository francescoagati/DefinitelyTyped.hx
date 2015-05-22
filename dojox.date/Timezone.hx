typedef Buddhist = {
	var locale : Dynamic;
	function add(date:dojox.date.buddhist.Date, interval:String, amount:Float):Void;
	function compare(date1:dojox.date.buddhist.Date, date2:dojox.date.buddhist.Date, portion:String):Void;
	function difference(date1:dojox.date.hebrew.Date, date2:dojox.date.hebrew.Date, interval:String):Void;
	function getDaysInMonth(dateObject:dojox.date.buddhist.Date):Void;
	function isLeapYear(dateObject:dojox.date.buddhist.Date):Void;
};
