typedef HeatmapConfiguration = {
	@:optional
	var backgroundColor : String;
	@:optional
	var blur : Float;
	@:optional
	var gradient : Dynamic;
	@:optional
	var latField : String;
	@:optional
	var lngField : String;
	@:optional
	var maxOpacity : Float;
	@:optional
	var minOpacity : Float;
	@:optional
	var opacity : Float;
	@:optional
	var radius : Float;
	@:optional
	var useLocalExtrema : Bool;
	var valueField : String;
};
typedef HeatmapDataPoint = { };
typedef HeatmapData = {
	var data : Array<HeatmapDataPoint>;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
};
extern class HeatmapOverlay {
	function new(configuration:HeatmapConfiguration):Void;
	function onAdd(map:L.Map):Void;
	function onRemove(map:L.Map):Void;
	function setData(data:HeatmapData):Void;
}
