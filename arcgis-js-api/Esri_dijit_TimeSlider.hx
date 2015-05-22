extern class TimeSlider {
	var loop : Bool;
	var playing : Bool;
	var thumbCount : Float;
	var thumbMovingRate : Float;
	var timeStops : Array<Date>;
	@:overload(function(params:esri.TimeSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.TimeSliderOptions, srcNodeRef:Node):Void;
	function createTimeStopsByCount(timeExtent:TimeExtent, ?count:Float):Void;
	function createTimeStopsByTimeInterval(timeExtent:TimeExtent, ?timeInterval:Float, ?timeIntervalUnits:String):Void;
	function getCurrentTimeExtent():TimeExtent;
	function next():Void;
	function pause():Void;
	function play():Void;
	function previous():Void;
	function setLabels(labels:Array<String>):Void;
	function setLoop(loop:Bool):Void;
	function setThumbCount(thumbCount:Float):Void;
	function setThumbIndexes(indexes:Array<Float>):Void;
	function setThumbMovingRate(thumbMovingRate:Float):Void;
	function setTickCount(count:Float):Void;
	function setTimeStops(timeStops:Array<Date>):Void;
	function singleThumbAsTimeInstant(createTimeInstants:Bool):Void;
	function startup():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Time-extent-change, listener:{ var timeExtent : TimeExtent; var target : TimeSlider; } -> Void):esri.Handle;
}
