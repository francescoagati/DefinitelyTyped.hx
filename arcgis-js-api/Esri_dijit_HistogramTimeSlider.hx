extern class HistogramTimeSlider {
	@:overload(function(params:esri.HistogramTimeSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.HistogramTimeSliderOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function startup():Void;
	@:overload(function(type:Update, listener:{ var target : HistogramTimeSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Time-extent-change, listener:{ var target : HistogramTimeSlider; } -> Void):esri.Handle;
}
