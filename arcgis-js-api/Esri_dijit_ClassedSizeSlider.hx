extern class ClassedSizeSlider extends RendererSlider {
	var breakInfos : Dynamic;
	var classificationMethod : String;
	var handles : Array<Float>;
	var histogram : Dynamic;
	var histogramWidth : Bool;
	var maxValue : Float;
	var minValue : Float;
	var normalizationType : String;
	var primaryHandle : Float;
	var rampWidth : Float;
	var showHandles : Bool;
	var showHistogram : Bool;
	var showLabels : Bool;
	var showTicks : Bool;
	var statistics : Dynamic;
	@:overload(function(params:esri.ClassedSizeSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.ClassedSizeSliderOptions, srcNodeRef:Node):Void;
	@:overload(function(type:Data-value-change, listener:{ var breakInfos : Dynamic; var maxValue : Float; var minValue : Float; var target : ClassedSizeSlider; } -> Void):esri.Handle { })
	@:overload(function(type:Handle-value-change, listener:{ var breakInfos : Dynamic; var target : ClassedSizeSlider; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Change, listener:{ var breakInfos : Dynamic; var target : ClassedSizeSlider; } -> Void):esri.Handle;
}
