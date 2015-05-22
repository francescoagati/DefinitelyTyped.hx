extern class HeatmapSlider extends RendererSlider {
	var colorStops : Dynamic;
	var handles : Array<Float>;
	var maxValue : Float;
	var minValue : Float;
	var rampWidth : Float;
	var showHandles : Bool;
	var showLabels : Bool;
	var showTicks : Bool;
	@:overload(function(params:esri.HeatmapSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.HeatmapSliderOptions, srcNodeRef:Node):Void;
	@:overload(function(type:Handle-value-change, listener:{ var colorStops : Dynamic; var target : HeatmapSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Change, listener:{ var colorStops : Dynamic; var target : HeatmapSlider; } -> Void):esri.Handle;
}
