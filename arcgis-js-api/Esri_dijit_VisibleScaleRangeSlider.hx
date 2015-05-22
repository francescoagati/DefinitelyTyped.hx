extern class VisibleScaleRangeSlider {
	var layer : FeatureLayer;
	var map : Map;
	var maximum : Float;
	var maxScale : Float;
	var minimum : Float;
	var minScale : Float;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Scale-range-change, listener:{ var target : VisibleScaleRangeSlider; } -> Void):esri.Handle;
}
