extern class DrawingManager extends MVCObject {
	function new(?options:DrawingManagerOptions):Void;
	function getDrawingMode():OverlayType;
	function getMap():Map;
	function setDrawingMode(drawingMode:OverlayType):Void;
	function setMap(map:Map):Void;
	function setOptions(options:DrawingManagerOptions):Void;
}
typedef DrawingManagerOptions = {
	@:optional
	var circleOptions : CircleOptions;
	@:optional
	var drawingControl : Bool;
	@:optional
	var drawingControlOptions : DrawingControlOptions;
	@:optional
	var drawingMode : OverlayType;
	@:optional
	var map : Map;
	@:optional
	var markerOptions : MarkerOptions;
	@:optional
	var polygonOptions : PolygonOptions;
	@:optional
	var polylineOptions : PolylineOptions;
	@:optional
	var rectangleOptions : RectangleOptions;
};
typedef DrawingControlOptions = {
	@:optional
	var drawingModes : Array<OverlayType>;
	@:optional
	var position : ControlPosition;
};
typedef OverlayCompleteEvent = {
	var overlay : MVCObject;
	var type : OverlayType;
};
@:enum abstract OverlayType(Int) {
	var CIRCLE = 0;
	var MARKER = 1;
	var POLYGON = 2;
	var POLYLINE = 3;
	var RECTANGLE = 4;
}
