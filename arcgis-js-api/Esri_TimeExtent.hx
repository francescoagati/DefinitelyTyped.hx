extern class TimeExtent {
	var endTime : Date;
	var startTime : Date;
	function new(startTime:Date, endTime:Date):Void;
	function intersection(timeExtent:Float):TimeExtent;
	function offset(offsetValue:Float, offsetUnits:String):TimeExtent;
}
