extern class HeatmapLayer extends MVCObject {
	function new(?opts:HeatmapLayerOptions):Void;
	function getData():MVCArray;
	function getMap():Map;
	@:overload(function(data:Array<LatLng>):Void { })
	@:overload(function(data:Array<WeightedLocation>):Void { })
	function setData(data:MVCArray):Void;
	function setMap(map:Map):Void;
}
typedef HeatmapLayerOptions = {
	var data : Dynamic;
	@:optional
	var dissipating : Bool;
	@:optional
	var gradient : Array<String>;
	@:optional
	var map : Map;
	@:optional
	var maxIntensity : Float;
	@:optional
	var opacity : Float;
	@:optional
	var radius : Float;
};
typedef WeightedLocation = {
	var location : LatLng;
	var weight : Float;
};
extern class MouseEvent {
	function stop():Void;
}
extern class MapsEventListener {

}
