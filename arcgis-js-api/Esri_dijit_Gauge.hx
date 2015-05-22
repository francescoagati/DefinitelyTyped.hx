extern class Gauge {
	@:overload(function(params:esri.GaugeOptions, srcNodeRef:String):Void { })
	function new(params:esri.GaugeOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function get(name:String):Dynamic;
	@:overload(function(name:String, value:Graphic):Gauge { })
	@:overload(function(name:String, value:Float):Gauge { })
	function set(name:String, value:String):Gauge;
	function startup():Void;
}
