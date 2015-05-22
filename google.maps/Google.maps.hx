extern class MVCObject {
	function new():Void;
	function addListener(eventName:String, handler:haxe.extern.Rest<Dynamic> -> Void):MapsEventListener;
	function bindTo(key:String, target:MVCObject, ?targetKey:String, ?noNotify:Bool):Void;
	function changed(key:String):Void;
	function get(key:String):Dynamic;
	function notify(key:String):Void;
	function set(key:String, value:Dynamic):Void;
	function setValues(values:Dynamic):Void;
	function unbind(key:String):Void;
	function unbindAll():Void;
}
extern class MVCArray extends MVCObject {
	function new(?array:Array<Dynamic>):Void;
	function clear():Void;
	function forEach(callback:Dynamic -> Float -> Void):Void;
	function getArray():Array<Dynamic>;
	function getAt(i:Float):Dynamic;
	function getLength():Float;
	function insertAt(i:Float, elem:Dynamic):Void;
	function pop():Void;
	function push(elem:Dynamic):Float;
	function removeAt(i:Float):Dynamic;
	function setAt(i:Float, elem:Dynamic):Void;
}
extern class Map extends MVCObject {
	function new(mapDiv:Element, ?opts:MapOptions):Void;
	function fitBounds(bounds:LatLngBounds):Void;
	function getBounds():LatLngBounds;
	function getCenter():LatLng;
	function getDiv():Element;
	function getHeading():Float;
	function getMapTypeId():MapTypeId;
	function getProjection():Projection;
	function getStreetView():StreetViewPanorama;
	function getTilt():Float;
	function getZoom():Float;
	function panBy(x:Float, y:Float):Void;
	function panTo(latLng:LatLng):Void;
	function panToBounds(latLngBounds:LatLngBounds):Void;
	function setCenter(latlng:LatLng):Void;
	function setHeading(heading:Float):Void;
	function setMapTypeId(mapTypeId:MapTypeId):Void;
	function setOptions(options:MapOptions):Void;
	function setStreetView(panorama:StreetViewPanorama):Void;
	function setTilt(tilt:Float):Void;
	function setZoom(zoom:Float):Void;
	var controls : Array<MVCArray>;
	var data : Data;
	var mapTypes : MapTypeRegistry;
	var overlayMapTypes : MVCArray;
}
typedef MapOptions = {
	@:optional
	var backgroundColor : String;
	@:optional
	var center : LatLng;
	@:optional
	var disableDefaultUI : Bool;
	@:optional
	var disableDoubleClickZoom : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var draggableCursor : String;
	@:optional
	var draggingCursor : String;
	@:optional
	var heading : Float;
	@:optional
	var keyboardShortcuts : Bool;
	@:optional
	var mapMaker : Bool;
	@:optional
	var mapTypeControl : Bool;
	@:optional
	var mapTypeControlOptions : MapTypeControlOptions;
	@:optional
	var navigationControl : Bool;
	@:optional
	var navigationControlOptions : NavigationControlOptions;
	@:optional
	var mapTypeId : MapTypeId;
	@:optional
	var maxZoom : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var noClear : Bool;
	@:optional
	var overviewMapControl : Bool;
	@:optional
	var overviewMapControlOptions : OverviewMapControlOptions;
	@:optional
	var panControl : Bool;
	@:optional
	var panControlOptions : PanControlOptions;
	@:optional
	var rotateControl : Bool;
	@:optional
	var rotateControlOptions : RotateControlOptions;
	@:optional
	var scaleControl : Bool;
	@:optional
	var scaleControlOptions : ScaleControlOptions;
	@:optional
	var scrollwheel : Bool;
	@:optional
	var streetView : StreetViewPanorama;
	@:optional
	var streetViewControl : Bool;
	@:optional
	var streetViewControlOptions : StreetViewControlOptions;
	@:optional
	var styles : Array<MapTypeStyle>;
	@:optional
	var tilt : Float;
	@:optional
	var zoom : Float;
	@:optional
	var zoomControl : Bool;
	@:optional
	var zoomControlOptions : ZoomControlOptions;
};
@:enum abstract MapTypeId(Int) {
	var HYBRID = 0;
	var ROADMAP = 1;
	var SATELLITE = 2;
	var TERRAIN = 3;
}
typedef MapTypeControlOptions = {
	@:optional
	var mapTypeIds : Array<MapTypeId>;
	@:optional
	var position : ControlPosition;
	@:optional
	var style : MapTypeControlStyle;
};
@:enum abstract MapTypeControlStyle(Int) {
	var DEFAULT = 0;
	var DROPDOWN_MENU = 1;
	var HORIZONTAL_BAR = 2;
}
typedef OverviewMapControlOptions = {
	@:optional
	var opened : Bool;
};
typedef PanControlOptions = {
	var position : ControlPosition;
};
typedef RotateControlOptions = {
	var position : ControlPosition;
};
typedef ScaleControlOptions = {
	@:optional
	var position : ControlPosition;
	@:optional
	var style : ScaleControlStyle;
};
@:enum abstract ScaleControlStyle(Int) {
	var DEFAULT = 0;
}
typedef StreetViewControlOptions = {
	var position : ControlPosition;
};
typedef ZoomControlOptions = {
	@:optional
	var position : ControlPosition;
	@:optional
	var style : ZoomControlStyle;
};
@:enum abstract ZoomControlStyle(Int) {
	var DEFAULT = 0;
	var LARGE = 1;
	var SMALL = 2;
}
@:enum abstract ControlPosition(Int) {
	var BOTTOM_CENTER = 0;
	var BOTTOM_LEFT = 1;
	var BOTTOM_RIGHT = 2;
	var LEFT_BOTTOM = 3;
	var LEFT_CENTER = 4;
	var LEFT_TOP = 5;
	var RIGHT_BOTTOM = 6;
	var RIGHT_CENTER = 7;
	var RIGHT_TOP = 8;
	var TOP_CENTER = 9;
	var TOP_LEFT = 10;
	var TOP_RIGHT = 11;
}
typedef NavigationControlOptions = {
	@:optional
	var position : ControlPosition;
	@:optional
	var style : NavigationControlStyle;
};
@:enum abstract NavigationControlStyle(Int) {
	var DEFAULT = 0;
	var SMALL = 1;
	var ANDROID = 2;
	var ZOOM_PAN = 3;
}
extern class Data extends MVCObject {
	function new(?options:Data.DataOptions):Void;
	function add(feature:haxe.extern.EitherType<Data.Feature, Data.FeatureOptions>):Data.Feature;
	function addGeoJson(geoJson:Dynamic, ?options:Data.GeoJsonOptions):Array<Data.Feature>;
	function contains(feature:Data.Feature):Bool;
	function forEach(callback:Data.Feature -> Void):Void;
	function getFeatureById(id:haxe.extern.EitherType<Float, String>):Data.Feature;
	function getMap():Map;
	function getStyle():haxe.extern.EitherType<Data.StylingFunction, Data.StyleOptions>;
	function loadGeoJson(url:String, ?options:Data.GeoJsonOptions, ?callback:Array<Data.Feature> -> Void):Void;
	function overrideStyle(feature:Data.Feature, style:Data.StyleOptions):Void;
	function remove(feature:Data.Feature):Void;
	function revertStyle(?feature:Data.Feature):Void;
	function setMap(map:Map):Void;
	function setStyle(style:haxe.extern.EitherType<Data.StylingFunction, Data.StyleOptions>):Void;
	function toGeoJson(callback:Dynamic -> Void):Void;
}
