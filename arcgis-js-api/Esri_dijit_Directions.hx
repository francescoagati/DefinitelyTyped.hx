extern class Directions {
	var directions : DirectionsFeatureSet;
	var geocoderResults : Array<Dynamic>;
	var mapClickActive : Bool;
	var maxStopsReached : Bool;
	var mergedRouteGraphic : Graphic;
	var routeParams : RouteParameters;
	var routeTask : RouteTask;
	var serviceDescription : Dynamic;
	var showActivateButton : Bool;
	var showClearButton : Bool;
	var showMilesKilometersOption : Bool;
	var showTravelModesOption : Bool;
	var stops : Array<Graphic>;
	var theme : String;
	var travelModeName : String;
	@:overload(function(options:esri.DirectionsOptions, srcNodeRef:String):Void { })
	function new(options:esri.DirectionsOptions, srcNodeRef:Node):Void;
	function activate():Void;
	@:overload(function(stop:Array<Float>, ?index:Float):Dynamic { })
	@:overload(function(stop:String, ?index:Float):Dynamic { })
	@:overload(function(stop:Dynamic, ?index:Float):Dynamic { })
	function addStop(stop:Point, ?index:Float):Dynamic;
	@:overload(function(stops:Array<Array<Float>>, ?index:Float):Dynamic { })
	@:overload(function(stops:Array<String>, ?index:Float):Dynamic { })
	@:overload(function(stops:Array<Dynamic>, ?index:Float):Dynamic { })
	function addStops(stops:Array<Point>, ?index:Float):Dynamic;
	function centerAtSegmentStart(index:Float):Void;
	function clearDirections():Void;
	function deactivate():Void;
	function destroy():Void;
	function getDirections():Dynamic;
	function getSupportedTravelModeNames():Array<String>;
	function highlightSegment(index:Float):Void;
	function removeStop(index:Float):Dynamic;
	function removeStops():Dynamic;
	function reset():Dynamic;
	function setTravelMode(travelModeName:String):Dynamic;
	function startup():Void;
	function unhighlightSegment():Void;
	@:overload(function(stop:Array<Float>, index:Float):Dynamic { })
	@:overload(function(stop:String, index:Float):Dynamic { })
	@:overload(function(stop:Dynamic, index:Float):Dynamic { })
	function updateStop(stop:Point, index:Float):Dynamic;
	@:overload(function(stops:Array<Array<Float>>):Dynamic { })
	@:overload(function(stops:Array<String>):Dynamic { })
	@:overload(function(stops:Array<Dynamic>):Dynamic { })
	function updateStops(stops:Array<Point>):Dynamic;
	function useMyCurrentLocation(stopIndex:Float):Dynamic;
	function zoomToFullRoute():Void;
	function zoomToSegment(index:Float):Void;
	@:overload(function(type:Deactivate, listener:{ var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Directions-clear, listener:{ var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Directions-finish, listener:{ var result : RouteResult; var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Directions-start, listener:{ var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Load, listener:{ var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Map-click-active, listener:{ var mapClickActive : Bool; var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Segment-highlight, listener:{ var graphic : Graphic; var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:Segment-select, listener:{ var graphic : Graphic; var target : Directions; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Activate, listener:{ var target : Directions; } -> Void):esri.Handle;
}
