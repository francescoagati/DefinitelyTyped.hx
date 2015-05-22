extern class Legend {
	@:overload(function(params:esri.LegendOptions, srcNodeRef:String):Void { })
	function new(params:esri.LegendOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function refresh():Void;
	function startup():Void;
}
