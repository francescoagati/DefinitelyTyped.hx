extern class ChartAxis extends Observable {
	var options : ChartAxisOptions;
	function range():Dynamic;
	@:overload(function(from:String, ?to:Float):kendo.geometry.Rect { })
	@:overload(function(from:String, ?to:Date):kendo.geometry.Rect { })
	@:overload(function(from:Float, ?to:String):kendo.geometry.Rect { })
	@:overload(function(from:Float, ?to:Float):kendo.geometry.Rect { })
	@:overload(function(from:Float, ?to:Date):kendo.geometry.Rect { })
	@:overload(function(from:Date, ?to:String):kendo.geometry.Rect { })
	@:overload(function(from:Date, ?to:Float):kendo.geometry.Rect { })
	@:overload(function(from:Date, ?to:Date):kendo.geometry.Rect { })
	function slot(from:String, ?to:String):kendo.geometry.Rect;
}
typedef ChartAxisOptions = {
	@:optional
	var name : String;
};
typedef ChartAxisEvent = {
	var sender : ChartAxis;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
