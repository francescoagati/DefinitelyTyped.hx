typedef DataOptions = {
	@:optional
	var map : Map;
	@:optional
	var style : haxe.extern.EitherType<Data.StylingFunction, Data.StyleOptions>;
};
typedef GeoJsonOptions = {
	@:optional
	var idPropertyName : String;
};
typedef StyleOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var cursor : String;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var icon : Dynamic;
	@:optional
	var shape : MarkerShape;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeWeight : Float;
	@:optional
	var title : String;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
extern class Feature {
	function new(?options:Data.FeatureOptions):Void;
	function forEachProperty(callback:Dynamic -> String -> Void):Void;
	function getGeometry():Data.Geometry;
	function getId():haxe.extern.EitherType<Float, String>;
	function getProperty(name:String):Dynamic;
	function removeProperty(name:String):Void;
	function setGeometry(newGeometry:haxe.extern.EitherType<Data.Geometry, LatLng>):Void;
	function setProperty(name:String, newValue:Dynamic):Void;
	function toGeoJson(callback:Dynamic -> Void):Void;
}
typedef FeatureOptions = {
	@:optional
	var geometry : haxe.extern.EitherType<Data.Geometry, LatLng>;
	@:optional
	var id : haxe.extern.EitherType<Float, String>;
	@:optional
	var properties : Dynamic;
};
extern class Geometry {
	function getType():String;
}
extern class Point extends Data.Geometry {
	function new(latLng:LatLng):Void;
	function get():LatLng;
}
extern class MultiPoint extends Data.Geometry {
	function new(elements:Array<LatLng>):Void;
	function getAt(n:Float):LatLng;
	function getLength():Float;
}
extern class LineString extends Data.Geometry {
	function new(elements:Array<LatLng>):Void;
	function getArray():Array<LatLng>;
	function getAt(n:Float):LatLng;
	function getLength():Float;
}
extern class MultiLineString extends Data.Geometry {
	function new(elements:haxe.extern.EitherType<Array<Data.LineString>, Array<LatLng>>):Void;
	function getArray():Array<Data.LineString>;
	function getAt(n:Float):Data.LineString;
	function getLength():Float;
}
extern class LinearRing extends Data.Geometry {
	function new(elements:Array<LatLng>):Void;
	function getArray():Array<LatLng>;
	function getAt(n:Float):LatLng;
	function getLength():Float;
}
extern class Polygon extends Data.Geometry {
	function new(elements:haxe.extern.EitherType<Array<LinearRing>, Array<Array<LatLng>>>):Void;
	function getArray():Array<LinearRing>;
	function getAt(n:Float):LinearRing;
	function getLength():Float;
}
extern class MultiPolygon extends Data.Geometry {
	function new(elements:haxe.extern.EitherType<Array<Data.Polygon>, haxe.extern.EitherType<Array<Array<LinearRing>>, Array<Array<Array<LatLng>>>>>):Void;
	function getArray():Array<Data.Polygon>;
	function getAt(n:Float):Data.Polygon;
	function getLength():Float;
}
extern class GeometryCollection extends Data.Geometry {
	function new(elements:haxe.extern.EitherType<Array<Data.Geometry>, Array<LatLng>>):Void;
	function getArray():Array<Data.Geometry>;
	function getAt(n:Float):Data.Geometry;
	function getLength():Float;
}
typedef MouseEvent = {
	>google.maps.MouseEvent,
	var feature : Data.Feature;
};
typedef AddFeatureEvent = {
	var feature : Data.Feature;
};
typedef RemoveFeatureEvent = {
	var feature : Data.Feature;
};
typedef SetGeometryEvent = {
	var feature : Data.Feature;
	var newGeometry : Data.Geometry;
	var oldGeometry : Data.Geometry;
};
typedef SetPropertyEvent = {
	var feature : Data.Feature;
	var name : String;
	var newValue : Dynamic;
	var oldValue : Dynamic;
};
typedef RemovePropertyEvent = {
	var feature : Data.Feature;
	var name : String;
	var oldValue : Dynamic;
};
extern class Marker extends MVCObject {
	static var MAX_ZINDEX : Float;
	function new(?opts:MarkerOptions):Void;
	function getAnimation():Animation;
	function getClickable():Bool;
	function getCursor():String;
	function getDraggable():Bool;
	function getFlat():Bool;
	function getIcon():MarkerImage;
	function getMap():Dynamic;
	function getPosition():LatLng;
	function getShadow():MarkerImage;
	function getShape():MarkerShape;
	function getTitle():String;
	function getVisible():Bool;
	function getZIndex():Float;
	function setAnimation(animation:Animation):Void;
	function setClickable(flag:Bool):Void;
	function setCursor(cursor:String):Void;
	function setDraggable(flag:Bool):Void;
	function setFlat(flag:Bool):Void;
	@:overload(function(icon:String):Void { })
	function setIcon(icon:MarkerImage):Void;
	@:overload(function(map:StreetViewPanorama):Void { })
	function setMap(map:Map):Void;
	function setOptions(options:MarkerOptions):Void;
	function setPosition(latlng:LatLng):Void;
	@:overload(function(shadow:String):Void { })
	function setShadow(shadow:MarkerImage):Void;
	function setShape(shape:MarkerShape):Void;
	function setTitle(title:String):Void;
	function setVisible(visible:Bool):Void;
	function setZIndex(zIndex:Float):Void;
}
typedef MarkerOptions = {
	@:optional
	var animation : Animation;
	@:optional
	var clickable : Bool;
	@:optional
	var cursor : String;
	@:optional
	var draggable : Bool;
	@:optional
	var flat : Bool;
	@:optional
	var icon : Dynamic;
	@:optional
	var map : Dynamic;
	@:optional
	var optimized : Bool;
	@:optional
	var position : LatLng;
	@:optional
	var raiseOnDrag : Bool;
	@:optional
	var shadow : Dynamic;
	@:optional
	var shape : MarkerShape;
	@:optional
	var title : String;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
extern class MarkerImage {
	function new(url:String, ?size:Size, ?origin:Point, ?anchor:Point, ?scaledSize:Size):Void;
	var anchor : Point;
	var origin : Point;
	var scaledSize : Size;
	var size : Size;
	var url : String;
}
typedef MarkerShape = {
	@:optional
	var coords : Array<Float>;
	@:optional
	var type : String;
};
typedef Symbol = {
	@:optional
	var anchor : Point;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var path : Dynamic;
	@:optional
	var rotation : Float;
	@:optional
	var scale : Float;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeWeight : Float;
};
@:enum abstract SymbolPath(Int) {
	var BACKWARD_CLOSED_ARROW = 0;
	var BACKWARD_OPEN_ARROW = 1;
	var CIRCLE = 2;
	var FORWARD_CLOSED_ARROW = 3;
	var FORWARD_OPEN_ARROW = 4;
}
@:enum abstract Animation(Int) {
	var BOUNCE = 0;
	var DROP = 1;
}
extern class InfoWindow extends MVCObject {
	function new(?opts:InfoWindowOptions):Void;
	function close():Void;
	function getContent():Dynamic;
	function getPosition():LatLng;
	function getZIndex():Float;
	@:overload(function(?map:StreetViewPanorama, ?anchor:MVCObject):Void { })
	function open(?map:Map, ?anchor:MVCObject):Void;
	@:overload(function(content:String):Void { })
	function setContent(content:Node):Void;
	function setOptions(options:InfoWindowOptions):Void;
	function setPosition(position:LatLng):Void;
	function setZIndex(zIndex:Float):Void;
}
typedef InfoWindowOptions = {
	@:optional
	var content : Dynamic;
	@:optional
	var disableAutoPan : Bool;
	@:optional
	var maxWidth : Float;
	@:optional
	var pixelOffset : Size;
	@:optional
	var position : LatLng;
	@:optional
	var zIndex : Float;
};
extern class Polyline extends MVCObject {
	function new(?opts:PolylineOptions):Void;
	function getDraggable():Bool;
	function getEditable():Bool;
	function getMap():Map;
	function getPath():MVCArray;
	function getVisible():Bool;
	function setDraggable(draggable:Bool):Void;
	function setEditable(editable:Bool):Void;
	function setMap(map:Map):Void;
	function setOptions(options:PolylineOptions):Void;
	@:overload(function(path:Array<LatLng>):Void { })
	function setPath(path:MVCArray):Void;
	function setVisible(visible:Bool):Void;
}
typedef PolylineOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var geodesic : Bool;
	@:optional
	var icons : Array<IconSequence>;
	@:optional
	var map : Map;
	@:optional
	var path : Array<Dynamic>;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeWeight : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
typedef IconSequence = {
	@:optional
	var fixedRotation : Bool;
	@:optional
	var icon : Symbol;
	@:optional
	var offset : String;
	@:optional
	var repeat : String;
};
extern class Polygon extends MVCObject {
	function new(?opts:PolygonOptions):Void;
	function getDraggable():Bool;
	function getEditable():Bool;
	function getMap():Map;
	function getPath():MVCArray;
	function getPaths():MVCArray;
	function getVisible():Bool;
	function setDraggable(draggable:Bool):Void;
	function setEditable(editable:Bool):Void;
	function setMap(map:Map):Void;
	function setOptions(options:PolygonOptions):Void;
	@:overload(function(path:Array<LatLng>):Void { })
	function setPath(path:MVCArray):Void;
	@:overload(function(paths:Array<MVCArray>):Void { })
	@:overload(function(path:Array<LatLng>):Void { })
	@:overload(function(path:Array<Array<LatLng>>):Void { })
	function setPaths(paths:MVCArray):Void;
	function setVisible(visible:Bool):Void;
}
typedef PolygonOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var geodesic : Bool;
	@:optional
	var map : Map;
	@:optional
	var paths : Array<Dynamic>;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokePosition : StrokePosition;
	@:optional
	var strokeWeight : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
typedef PolyMouseEvent = {
	@:optional
	var edge : Float;
	@:optional
	var path : Float;
	@:optional
	var vertex : Float;
};
extern class Rectangle extends MVCObject {
	function new(?opts:RectangleOptions):Void;
	function getBounds():LatLngBounds;
	function getDraggable():Bool;
	function getEditable():Bool;
	function getMap():Map;
	function getVisible():Bool;
	function setBounds(bounds:LatLngBounds):Void;
	function setDraggable(draggable:Bool):Void;
	function setEditable(editable:Bool):Void;
	function setMap(map:Map):Void;
	function setOptions(options:RectangleOptions):Void;
	function setVisible(visible:Bool):Void;
}
typedef RectangleOptions = {
	@:optional
	var bounds : LatLngBounds;
	@:optional
	var clickable : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var map : Map;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokePosition : StrokePosition;
	@:optional
	var strokeWeight : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
extern class Circle extends MVCObject {
	function new(?opts:CircleOptions):Void;
	function getBounds():LatLngBounds;
	function getCenter():LatLng;
	function getDraggable():Bool;
	function getEditable():Bool;
	function getMap():Map;
	function getRadius():Float;
	function getVisible():Bool;
	function setCenter(center:LatLng):Void;
	function setDraggable(draggable:Bool):Void;
	function setEditable(editable:Bool):Void;
	function setMap(map:Map):Void;
	function setOptions(options:CircleOptions):Void;
	function setRadius(radius:Float):Void;
	function setVisible(visible:Bool):Void;
}
typedef CircleOptions = {
	@:optional
	var center : LatLng;
	@:optional
	var clickable : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var map : Map;
	@:optional
	var radius : Float;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokePosition : StrokePosition;
	@:optional
	var strokeWeight : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
@:enum abstract StrokePosition(Int) {
	var CENTER = 0;
	var INSIDE = 1;
	var OUTSIDE = 2;
}
extern class GroundOverlay extends MVCObject {
	function new(url:String, bounds:LatLngBounds, ?opts:GroundOverlayOptions):Void;
	function getBounds():LatLngBounds;
	function getMap():Map;
	function getOpacity():Float;
	function getUrl():String;
	function setMap(map:Map):Void;
	function setOpacity(opacity:Float):Void;
}
typedef GroundOverlayOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var map : Map;
	@:optional
	var opacity : Float;
};
extern class OverlayView extends MVCObject {
	function draw():Void;
	function getMap():Map;
	function getPanes():MapPanes;
	function getProjection():MapCanvasProjection;
	function onAdd():Void;
	function onRemove():Void;
	@:overload(function(map:StreetViewPanorama):Void { })
	function setMap(map:Map):Void;
}
typedef MapPanes = {
	var floatPane : Element;
	var floatShadow : Element;
	var mapPane : Element;
	var overlayImage : Element;
	var overlayLayer : Element;
	var overlayMouseTarget : Element;
	var overlayShadow : Element;
};
extern class MapCanvasProjection extends MVCObject {
	function fromContainerPixelToLatLng(pixel:Point, ?nowrap:Bool):LatLng;
	function fromDivPixelToLatLng(pixel:Point, ?nowrap:Bool):LatLng;
	function fromLatLngToContainerPixel(latLng:LatLng):Point;
	function fromLatLngToDivPixel(latLng:LatLng):Point;
	function getWorldWidth():Float;
}
extern class Geocoder {
	function new():Void;
	function geocode(request:GeocoderRequest, callback:Array<GeocoderResult> -> GeocoderStatus -> Void):Void;
}
typedef GeocoderRequest = {
	@:optional
	var address : String;
	@:optional
	var bounds : LatLngBounds;
	@:optional
	var location : LatLng;
	@:optional
	var region : String;
};
@:enum abstract GeocoderStatus(Int) {
	var ERROR = 0;
	var INVALID_REQUEST = 1;
	var OK = 2;
	var OVER_QUERY_LIMIT = 3;
	var REQUEST_DENIED = 4;
	var UNKNOWN_ERROR = 5;
	var ZERO_RESULTS = 6;
}
typedef GeocoderResult = {
	var address_components : Array<GeocoderAddressComponent>;
	var formatted_address : String;
	var geometry : GeocoderGeometry;
	var types : Array<String>;
};
typedef GeocoderAddressComponent = {
	var long_name : String;
	var short_name : String;
	var types : Array<String>;
};
typedef GeocoderGeometry = {
	var bounds : LatLngBounds;
	var location : LatLng;
	var location_type : GeocoderLocationType;
	var viewport : LatLngBounds;
};
@:enum abstract GeocoderLocationType(Int) {
	var APPROXIMATE = 0;
	var GEOMETRIC_CENTER = 1;
	var RANGE_INTERPOLATED = 2;
	var ROOFTOP = 3;
}
extern class DirectionsRenderer extends MVCObject {
	function new(?opts:DirectionsRendererOptions):Void;
	function getDirections():DirectionsResult;
	function getMap():Map;
	function getPanel():Element;
	function getRouteIndex():Float;
	function setDirections(directions:DirectionsResult):Void;
	function setMap(map:Map):Void;
	function setOptions(options:DirectionsRendererOptions):Void;
	function setPanel(panel:Element):Void;
	function setRouteIndex(routeIndex:Float):Void;
}
typedef DirectionsRendererOptions = {
	@:optional
	var directions : DirectionsResult;
	@:optional
	var draggable : Bool;
	@:optional
	var hideRouteList : Bool;
	@:optional
	var infoWindow : InfoWindow;
	@:optional
	var map : Map;
	@:optional
	var markerOptions : MarkerOptions;
	@:optional
	var panel : Element;
	@:optional
	var polylineOptions : PolylineOptions;
	@:optional
	var preserveViewport : Bool;
	@:optional
	var routeIndex : Float;
	@:optional
	var suppressBicyclingLayer : Bool;
	@:optional
	var suppressInfoWindows : Bool;
	@:optional
	var suppressMarkers : Bool;
	@:optional
	var suppressPolylines : Bool;
};
extern class DirectionsService {
	function new():Void;
	function route(request:DirectionsRequest, callback:DirectionsResult -> DirectionsStatus -> Void):Void;
}
typedef DirectionsRequest = {
	@:optional
	var avoidHighways : Bool;
	@:optional
	var avoidTolls : Bool;
	@:optional
	var destination : Dynamic;
	@:optional
	var optimizeWaypoints : Bool;
	@:optional
	var origin : Dynamic;
	@:optional
	var provideRouteAlternatives : Bool;
	@:optional
	var region : String;
	@:optional
	var transitOptions : TransitOptions;
	@:optional
	var travelMode : TravelMode;
	@:optional
	var unitSystem : UnitSystem;
	@:optional
	var waypoints : Array<DirectionsWaypoint>;
};
@:enum abstract TravelMode(Int) {
	var BICYCLING = 0;
	var DRIVING = 1;
	var TRANSIT = 2;
	var WALKING = 3;
}
@:enum abstract UnitSystem(Int) {
	var IMPERIAL = 0;
	var METRIC = 1;
}
typedef TransitOptions = {
	@:optional
	var arrivalTime : Date;
	@:optional
	var departureTime : Date;
};
typedef DirectionsWaypoint = {
	var location : Dynamic;
	var stopover : Bool;
};
@:enum abstract DirectionsStatus(Int) {
	var INVALID_REQUEST = 0;
	var MAX_WAYPOINTS_EXCEEDED = 1;
	var NOT_FOUND = 2;
	var OK = 3;
	var OVER_QUERY_LIMIT = 4;
	var REQUEST_DENIED = 5;
	var UNKNOWN_ERROR = 6;
	var ZERO_RESULTS = 7;
}
typedef DirectionsResult = {
	var routes : Array<DirectionsRoute>;
};
typedef DirectionsRoute = {
	var bounds : LatLngBounds;
	var copyrights : String;
	var legs : Array<DirectionsLeg>;
	var overview_path : Array<LatLng>;
	var warnings : Array<String>;
	var waypoint_order : Array<Float>;
};
typedef DirectionsLeg = {
	var arrival_time : Distance;
	var departure_time : Duration;
	var distance : Distance;
	var duration : Duration;
	var end_address : String;
	var end_location : LatLng;
	var start_address : String;
	var start_location : LatLng;
	var steps : Array<DirectionsStep>;
	var via_waypoints : Array<LatLng>;
};
typedef DirectionsStep = {
	var distance : Distance;
	var duration : Duration;
	var end_location : LatLng;
	var instructions : String;
	var path : Array<LatLng>;
	var start_location : LatLng;
	var steps : DirectionsStep;
	var transit : TransitDetails;
	var travel_mode : TravelMode;
};
typedef Distance = {
	var text : String;
	var value : Float;
};
typedef Duration = {
	var text : String;
	var value : Float;
};
typedef Time = {
	var text : String;
	var time_zone : String;
	var value : Date;
};
typedef TransitDetails = {
	var arrival_stop : TransitStop;
	var arrival_time : Time;
	var departure_stop : TransitStop;
	var departure_time : Time;
	var headsign : String;
	var headway : Float;
	var line : TransitLine;
	var num_stops : Float;
};
typedef TransitStop = {
	var location : LatLng;
	var name : String;
};
typedef TransitLine = {
	var agencies : Array<TransitAgency>;
	var color : String;
	var icon : String;
	var name : String;
	var short_name : String;
	var text_color : String;
	var url : String;
	var vehicle : TransitVehicle;
};
typedef TransitAgency = {
	var name : String;
	var phone : String;
	var url : String;
};
typedef TransitVehicle = {
	var icon : String;
	var local_icon : String;
	var name : String;
	var type : String;
};
extern class ElevationService {
	function new():Void;
	function getElevationAlongPath(request:PathElevationRequest, callback:Array<ElevationResult> -> ElevationStatus -> Void):Void;
	function getElevationForLocations(request:LocationElevationRequest, callback:Array<ElevationResult> -> ElevationStatus -> Void):Void;
}
typedef LocationElevationRequest = {
	var locations : Array<LatLng>;
};
typedef PathElevationRequest = {
	@:optional
	var path : Array<LatLng>;
	@:optional
	var samples : Float;
};
typedef ElevationResult = {
	var elevation : Float;
	var location : LatLng;
	var resolution : Float;
};
@:enum abstract ElevationStatus(Int) {
	var INVALID_REQUEST = 0;
	var OK = 1;
	var OVER_QUERY_LIMIT = 2;
	var REQUEST_DENIED = 3;
	var UNKNOWN_ERROR = 4;
}
extern class MaxZoomService {
	function new():Void;
	function getMaxZoomAtLatLng(latlng:LatLng, callback:MaxZoomResult -> Void):Void;
}
typedef MaxZoomResult = {
	var status : MaxZoomStatus;
	var zoom : Float;
};
@:enum abstract MaxZoomStatus(Int) {
	var ERROR = 0;
	var OK = 1;
}
extern class DistanceMatrixService {
	function new():Void;
	function getDistanceMatrix(request:DistanceMatrixRequest, callback:DistanceMatrixResponse -> DistanceMatrixStatus -> Void):Void;
}
typedef DistanceMatrixRequest = {
	@:optional
	var avoidHighways : Bool;
	@:optional
	var avoidTolls : Bool;
	@:optional
	var destinations : Array<Dynamic>;
	@:optional
	var origins : Array<Dynamic>;
	@:optional
	var region : String;
	@:optional
	var travelMode : TravelMode;
	@:optional
	var unitSystem : UnitSystem;
};
typedef DistanceMatrixResponse = {
	var destinationAddresses : Array<String>;
	var originAddresses : Array<String>;
	var rows : Array<DistanceMatrixResponseRow>;
};
typedef DistanceMatrixResponseRow = {
	var elements : Array<DistanceMatrixResponseElement>;
};
typedef DistanceMatrixResponseElement = {
	var distance : Distance;
	var duration : Duration;
	var status : DistanceMatrixElementStatus;
};
@:enum abstract DistanceMatrixStatus(Int) {
	var INVALID_REQUEST = 0;
	var MAX_DIMENSIONS_EXCEEDED = 1;
	var MAX_ELEMENTS_EXCEEDED = 2;
	var OK = 3;
	var OVER_QUERY_LIMIT = 4;
	var REQUEST_DENIED = 5;
	var UNKNOWN_ERROR = 6;
}
@:enum abstract DistanceMatrixElementStatus(Int) {
	var NOT_FOUND = 0;
	var OK = 1;
	var ZERO_RESULTS = 2;
}
typedef MapType = {
	function getTile(tileCoord:Point, zoom:Float, ownerDocument:Document):Element;
	function releaseTile(tile:Element):Void;
	@:optional
	var alt : String;
	@:optional
	var maxZoom : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var name : String;
	@:optional
	var projection : Projection;
	@:optional
	var radius : Float;
	@:optional
	var tileSize : Size;
};
extern class MapTypeRegistry extends MVCObject {
	function new():Void;
	function set(id:String, mapType:MapType):Void;
}
typedef Projection = {
	function fromLatLngToPoint(latLng:LatLng, ?point:Point):Point;
	function fromPointToLatLng(pixel:Point, ?noWrap:Bool):LatLng;
};
extern class ImageMapType extends MVCObject {
	function new(opts:ImageMapTypeOptions):Void;
	function getOpacity():Float;
	function setOpacity(opacity:Float):Void;
	function getTile(tileCoord:Point, zoom:Float, ownerDocument:Document):Element;
	function releaseTile(tile:Element):Void;
}
typedef ImageMapTypeOptions = {
	@:optional
	var alt : String;
	var getTileUrl : Point -> Float -> String;
	@:optional
	var maxZoom : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var name : String;
	@:optional
	var opacity : Float;
	@:optional
	var tileSize : Size;
};
extern class StyledMapType {
	function new(styles:Array<MapTypeStyle>, ?options:StyledMapTypeOptions):Void;
}
typedef StyledMapTypeOptions = {
	@:optional
	var alt : String;
	@:optional
	var maxZoom : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var name : String;
};
typedef MapTypeStyle = {
	@:optional
	var elementType : MapTypeStyleElementType;
	@:optional
	var featureType : MapTypeStyleFeatureType;
	@:optional
	var stylers : Array<MapTypeStyler>;
};
typedef MapTypeStyleFeatureType = {
	@:optional
	var administrative : { @:optional
	var country : String; @:optional
	var land_parcel : String; @:optional
	var locality : String; @:optional
	var neighborhood : String; @:optional
	var province : String; };
	@:optional
	var all : String;
	@:optional
	var landscape : { @:optional
	var man_made : String; @:optional
	var natural : String; };
	@:optional
	var poi : { @:optional
	var attraction : String; @:optional
	var business : String; @:optional
	var government : String; @:optional
	var medical : String; @:optional
	var park : String; @:optional
	var place_of_worship : String; @:optional
	var school : String; @:optional
	var sports_complex : String; };
	@:optional
	var road : { @:optional
	var arterial : String; @:optional
	var highway : { @:optional
	var controlled_access : String; }; @:optional
	var local : String; };
	@:optional
	var transit : { @:optional
	var line : String; @:optional
	var station : { @:optional
	var airport : String; @:optional
	var bus : String; @:optional
	var rail : String; }; };
	@:optional
	var water : String;
};
@:enum abstract MapTypeStyleElementType(Int) {
	var all = 0;
	var geometry = 1;
	var labels = 2;
}
typedef MapTypeStyler = {
	@:optional
	var gamma : Float;
	@:optional
	var hue : String;
	@:optional
	var invert_lightness : Bool;
	@:optional
	var lightness : Float;
	@:optional
	var saturation : Float;
	@:optional
	var visibility : String;
};
extern class BicyclingLayer extends MVCObject {
	function new():Void;
	function getMap():Map;
	function setMap(map:Map):Void;
}
extern class FusionTablesLayer extends MVCObject {
	function new(options:FusionTablesLayerOptions):Void;
	function getMap():Map;
	function setMap(map:Map):Void;
	function setOptions(options:FusionTablesLayerOptions):Void;
}
typedef FusionTablesLayerOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var heatmap : FusionTablesHeatmap;
	@:optional
	var map : Map;
	@:optional
	var query : FusionTablesQuery;
	@:optional
	var styles : Array<FusionTablesStyle>;
	@:optional
	var suppressInfoWindows : Bool;
};
typedef FusionTablesQuery = {
	@:optional
	var from : String;
	@:optional
	var limit : Float;
	@:optional
	var offset : Float;
	@:optional
	var orderBy : String;
	@:optional
	var select : String;
	@:optional
	var where : String;
};
typedef FusionTablesStyle = {
	@:optional
	var markerOptions : FusionTablesMarkerOptions;
	@:optional
	var polygonOptions : FusionTablesPolygonOptions;
	@:optional
	var polylineOptions : FusionTablesPolylineOptions;
	@:optional
	var where : String;
};
typedef FusionTablesHeatmap = {
	var enabled : Bool;
};
typedef FusionTablesMarkerOptions = {
	var iconName : String;
};
typedef FusionTablesPolygonOptions = {
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeWeight : Float;
};
typedef FusionTablesPolylineOptions = {
	@:optional
	var strokeColor : String;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeWeight : Float;
};
typedef FusionTablesMouseEvent = {
	var infoWindowHtml : String;
	var latLng : LatLng;
	var pixelOffset : Size;
	var row : Dynamic;
};
typedef FusionTablesCell = {
	var columnName : String;
	var value : String;
};
extern class KmlLayer extends MVCObject {
	function new(url:String, ?opts:KmlLayerOptions):Void;
	function getDefaultViewport():LatLngBounds;
	function getMap():Map;
	function getMetadata():KmlLayerMetadata;
	function getStatus():KmlLayerStatus;
	function getUrl():String;
	function setMap(map:Map):Void;
}
typedef KmlLayerOptions = {
	@:optional
	var clickable : Bool;
	@:optional
	var map : Map;
	@:optional
	var preserveViewport : Bool;
	@:optional
	var suppressInfoWindows : Bool;
};
typedef KmlLayerMetadata = {
	var author : KmlAuthor;
	var description : String;
	var name : String;
	var snippet : String;
};
@:enum abstract KmlLayerStatus(Int) {
	var DOCUMENT_NOT_FOUND = 0;
	var DOCUMENT_TOO_LARGE = 1;
	var FETCH_ERROR = 2;
	var INVALID_DOCUMENT = 3;
	var INVALID_REQUEST = 4;
	var LIMITS_EXCEEDED = 5;
	var OK = 6;
	var TIMED_OUT = 7;
	var UNKNOWN = 8;
}
typedef KmlMouseEvent = {
	var featureData : KmlFeatureData;
	var latLng : LatLng;
	var pixelOffset : Size;
};
typedef KmlFeatureData = {
	var author : KmlAuthor;
	var description : String;
	var id : String;
	var infoWindowHtml : String;
	var name : String;
	var snippet : String;
};
typedef KmlAuthor = {
	var email : String;
	var name : String;
	var uri : String;
};
extern class TrafficLayer extends MVCObject {
	function new():Void;
	function getMap():Void;
	function setMap(map:Map):Void;
}
extern class TransitLayer extends MVCObject {
	function new():Void;
	function getMap():Void;
	function setMap(map:Map):Void;
}
extern class StreetViewPanorama {
	function new(container:Element, ?opts:StreetViewPanoramaOptions):Void;
	var controls : Array<MVCArray>;
	function getLinks():Array<StreetViewLink>;
	function getPano():String;
	function getPosition():LatLng;
	function getPov():StreetViewPov;
	function getVisible():Bool;
	function registerPanoProvider(provider:String -> StreetViewPanoramaData):Void;
	function setPano(pano:String):Void;
	function setPosition(latLng:LatLng):Void;
	function setPov(pov:StreetViewPov):Void;
	function setVisible(flag:Bool):Void;
}
typedef StreetViewPanoramaOptions = {
	@:optional
	var addressControl : Bool;
	@:optional
	var addressControlOptions : StreetViewAddressControlOptions;
	@:optional
	var clickToGo : Bool;
	@:optional
	var disableDoubleClickZoom : Bool;
	@:optional
	var enableCloseButton : Bool;
	@:optional
	var imageDateControl : Bool;
	@:optional
	var linksControl : Bool;
	@:optional
	var panControl : Bool;
	@:optional
	var panControlOptions : PanControlOptions;
	@:optional
	var pano : String;
	@:optional
	var panoProvider : String -> StreetViewPanoramaData;
	@:optional
	var position : LatLng;
	@:optional
	var pov : StreetViewPov;
	@:optional
	var scrollwheel : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var zoomControl : Bool;
	@:optional
	var zoomControlOptions : ZoomControlOptions;
};
typedef StreetViewAddressControlOptions = {
	var position : ControlPosition;
};
typedef StreetViewLink = {
	@:optional
	var description : String;
	@:optional
	var heading : Float;
	@:optional
	var pano : String;
};
typedef StreetViewPov = {
	@:optional
	var heading : Float;
	@:optional
	var pitch : Float;
	@:optional
	var zoom : Float;
};
typedef StreetViewPanoramaData = {
	@:optional
	var opyright : String;
	@:optional
	var imageDate : String;
	@:optional
	var links : Array<StreetViewLink>;
	@:optional
	var location : StreetViewLocation;
	@:optional
	var tiles : StreetViewTileData;
};
typedef StreetViewLocation = {
	@:optional
	var description : String;
	@:optional
	var latLng : LatLng;
	@:optional
	var pano : String;
};
typedef StreetViewTileData = {
	@:optional
	var centerHeading : Float;
	@:optional
	var tileSize : Size;
	@:optional
	var worldSize : Size;
};
extern class StreetViewService {
	function getPanoramaById(pano:String, callback:StreetViewPanoramaData -> StreetViewStatus -> Void):Void;
	function getPanoramaByLocation(latlng:LatLng, radius:Float, callback:StreetViewPanoramaData -> StreetViewStatus -> Void):Void;
}
@:enum abstract StreetViewStatus(Int) {
	var OK = 0;
	var UNKNOWN_ERROR = 1;
	var ZERO_RESULTS = 2;
}
typedef MapsEventListener = { };
extern class Event {
	@:overload(function(instance:Dynamic, eventName:String, handler:haxe.Constraints.Function, ?capture:Bool):MapsEventListener { })
	static function addDomListener(instance:Dynamic, eventName:String, handler:?Dynamic -> haxe.extern.Rest<Dynamic> -> Void, ?capture:Bool):MapsEventListener;
	@:overload(function(instance:Dynamic, eventName:String, handler:haxe.Constraints.Function, ?capture:Bool):MapsEventListener { })
	static function addDomListenerOnce(instance:Dynamic, eventName:String, handler:?Dynamic -> haxe.extern.Rest<Dynamic> -> Void, ?capture:Bool):MapsEventListener;
	@:overload(function(instance:Dynamic, eventName:String, handler:haxe.Constraints.Function):MapsEventListener { })
	static function addListener(instance:Dynamic, eventName:String, handler:?Dynamic -> haxe.extern.Rest<Dynamic> -> Void):MapsEventListener;
	@:overload(function(instance:Dynamic, eventName:String, handler:haxe.Constraints.Function):MapsEventListener { })
	static function addListenerOnce(instance:Dynamic, eventName:String, handler:?Dynamic -> haxe.extern.Rest<Dynamic> -> Void):MapsEventListener;
	static function clearInstanceListeners(instance:Dynamic):Void;
	static function clearListeners(instance:Dynamic, eventName:String):Void;
	static function removeListener(listener:MapsEventListener):Void;
	static function trigger(instance:Dynamic, eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
}
typedef MouseEvent = {
	function stop():Void;
	var latLng : LatLng;
};
extern class LatLng {
	function new(lat:Float, lng:Float, ?noWrap:Bool):Void;
	function equals(other:LatLng):Bool;
	function lat():Float;
	function lng():Float;
	function toString():String;
	function toUrlValue(?precision:Float):String;
}
extern class LatLngBounds {
	function new(?sw:LatLng, ?ne:LatLng):Void;
	function contains(latLng:LatLng):Bool;
	function equals(other:LatLngBounds):Bool;
	function extend(point:LatLng):LatLngBounds;
	function getCenter():LatLng;
	function getNorthEast():LatLng;
	function getSouthWest():LatLng;
	function intersects(other:LatLngBounds):Bool;
	function isEmpty():Bool;
	function toSpan():LatLng;
	function toString():String;
	function toUrlValue(?precision:Float):String;
	function union(other:LatLngBounds):LatLngBounds;
}
extern class Point {
	function new(x:Float, y:Float):Void;
	var x : Float;
	var y : Float;
	function equals(other:Point):Bool;
	function toString():String;
}
extern class Size {
	function new(width:Float, height:Float, ?widthUnit:String, ?heightUnit:String):Void;
	var height : Float;
	var width : Float;
	function equals(other:Size):Bool;
	function toString():String;
}
