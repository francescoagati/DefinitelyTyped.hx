extern class HorizontalSlider {
	var showButtons : Bool;
	@:overload(function(params:esri.HorizontalSliderOptions, srcNodeRef:String):Void { })
	function new(params:esri.HorizontalSliderOptions, srcNodeRef:Node):Void;
	function startup():Void;
}
