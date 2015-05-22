typedef Window = {
	var onbatterystatus : BatteryStatusEvent -> Void;
	var onbatterycritical : BatteryStatusEvent -> Void;
	var onbatterylow : BatteryStatusEvent -> Void;
	@:overload(function(type:Batterycritical, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Batterylow, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	function addEventListener(type:Batterystatus, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void;
	@:overload(function(type:Batterycritical, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Batterylow, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	function removeEventListener(type:Batterystatus, listener:BatteryStatusEvent -> Dynamic, ?useCapture:Bool):Void;
};
typedef BatteryStatusEvent = {
	>Event,
	var level : Float;
	var isPlugged : Bool;
};
