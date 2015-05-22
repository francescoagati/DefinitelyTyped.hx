@:enum abstract AltitudeReference(Int) {
	var ground = 0;
	var ellipsoid = 1;
}
extern class Location {
	function new(latitude:Float, longitude:Float, ?altitude:Float, ?altitudeReference:AltitudeReference):Void;
	var altitude : Float;
	var altitudeReference : AltitudeReference;
	var latitude : Float;
	var longitude : Float;
	static function areEqual(location1:Location, location2:Location):Bool;
	static function normalizeLongitude(longitude:Float):Float;
	function clone():Location;
	function toString():String;
}
extern class LocationRect {
	function new(center:Location, width:Float, height:Float):Void;
	var center : Location;
	var height : Float;
	var width : Float;
	static function fromCorners(northwest:Location, southeast:Location):LocationRect;
	static function fromEdges(north:Float, west:Float, south:Float, east:Float, altitude:Float, altitudeReference:AltitudeReference):LocationRect;
	static function fromLocations(locations:Array<Location>):LocationRect;
	static function fromString(value:String):LocationRect;
	function clone():LocationRect;
	function contains(location:Location):Bool;
	function getEast():Float;
	function getNorth():Float;
	function getNorthwest():Location;
	function getSouth():Float;
	function getSouthEast():Location;
	function getWest():Float;
	function intersects(rect:LocationRect):Bool;
	function toString():String;
}
extern class Point {
	function new(x:Float, y:Float):Void;
	var x : Float;
	var y : Float;
	static function areEqual(p1:Point, p2:Point):Bool;
	@:overload(function():Point { })
	static function clone(p:Point):Point;
	function toString():String;
}
extern class Events {
	static function addHandler(target:Dynamic, eventName:String, handler:Void -> Void):Dynamic;
	static function addThrottledHandler(target:Dynamic, eventName:String, handler:Void -> Void, throttleInterval:Float):Dynamic;
	static function hasHandler(target:Dynamic, eventName:String):Bool;
	static function invoke(target:Dynamic, eventName:String, args:Dynamic):Void;
	static function removeHandler(handlerId:Dynamic):Void;
}
typedef KeyEventArgs = {
	var altKey : Bool;
	var ctrlKey : Bool;
	var eventName : Bool;
	var handled : Bool;
	var keyCode : String;
	var originalEvent : Dynamic;
	var shiftKey : Bool;
};
@:enum abstract LabelOverlay(Int) {
	var hidden = 0;
	var visible = 1;
}
typedef ZoomRange = {
	var min : Float;
	var max : Float;
};
extern class Map {
	function new(containerElement:HTMLElement, options:MapOptions):Void;
	var entities : EntityCollection;
	static function getVersion():String;
	function blur():Void;
	function dispose():Void;
	function focus():Void;
	function getBounds():LocationRect;
	function getCenter():Location;
	function getCopyrights(callback:Array<String> -> Void):Void;
	function getCredentials(callback:Array<String> -> Void):Void;
	function getHeading():String;
	function getHeight():Float;
	var getImageryId : String;
	function getMapTypeId():String;
	function getMetersPerPixel():Float;
	function getMode():MapMode;
	function getModeLayer():HTMLElement;
	function getOptions():MapOptions;
	function getPageX():Float;
	function getPageY():Float;
	function getRootElement():HTMLElement;
	function getTargetBounds():LocationRect;
	function getTargetCenter():Location;
	function getTargetHeading():Float;
	function getTargetMetersPerPixel():Float;
	function getTargetZoom():Float;
	function getUserLayer():HTMLElement;
	function getViewportX():Float;
	function getViewportY():Float;
	function getWidth():Float;
	function getZoom():Float;
	function getZoomRange():ZoomRange;
	function isDownloadingTiles():Bool;
	function isMercator():Bool;
	function isRotationEnabled():Bool;
	function setMapType(mapTypeId:MapTypeId):Void;
	function setOptions(options:MapOptions):Void;
	function setView(options:ViewOptions):Void;
	function tryLocationToPixel(locations:Array<Location>, ?reference:PixelReference):Dynamic;
	function tryPixelToLocation(points:Array<Point>, ?reference:PixelReference):Dynamic;
	var click : MouseEventArgs -> Void;
	var copyrightchanged : Void -> Void;
	var dblclick : MouseEventArgs -> Void;
	var imagerychanged : Void -> Void;
	var keydown : KeyEventArgs -> Void;
	var keypress : KeyEventArgs -> Void;
	var keyup : KeyEventArgs -> Void;
	var maptypechanged : Void -> Void;
	var mousedown : MouseEventArgs -> Void;
	var mousemove : MouseEventArgs -> Void;
	var mouseout : MouseEventArgs -> Void;
	var mouseover : MouseEventArgs -> Void;
	var mouseup : MouseEventArgs -> Void;
	var mousewheel : MouseEventArgs -> Void;
	var rightlick : MouseEventArgs -> Void;
	var targetviewchanged : Void -> Void;
	var tiledownloadcomplete : Void -> Void;
	var viewchange : Void -> Void;
	var viewchangeend : Void -> Void;
	var viewchangestart : Void -> Void;
}
extern class MapMode {
	function getDrawShapesInSingleLayer():Bool;
	function getShouldClipPolygons():Bool;
	function setOptions(options:MapOptions):Void;
	function setViewChangeEndDelay(delay:Float):Void;
}
typedef MapOptions = {
	@:optional
	var backgroundColor : Color;
	@:optional
	var credentials : String;
	@:optional
	var customizeOverlays : Bool;
	@:optional
	var disableBirdseye : Bool;
	@:optional
	var disableKeyboardInput : Bool;
	@:optional
	var disableMouseInput : Bool;
	@:optional
	var disablePanning : Bool;
	@:optional
	var disableTouchInput : Bool;
	@:optional
	var disableUserInput : Bool;
	@:optional
	var disableZooming : Bool;
	@:optional
	var enableClickableLogo : Bool;
	@:optional
	var enableSearchLogo : Bool;
	@:optional
	var fixedMapPosition : Bool;
	@:optional
	var height : Float;
	@:optional
	var inertiaIntensity : Float;
	@:optional
	var showBreadcrumb : Bool;
	@:optional
	var showCopyright : Bool;
	@:optional
	var showDashboard : Bool;
	@:optional
	var showMapTypeSelector : Bool;
	@:optional
	var showScalebar : Bool;
	@:optional
	var theme : Dynamic;
	@:optional
	var tileBuffer : Float;
	@:optional
	var useInertia : Bool;
	@:optional
	var width : Float;
	@:optional
	var center : Location;
	@:optional
	var zoom : Float;
	@:optional
	var mapTypeId : MapTypeId;
};
@:enum abstract MapTypeId(Int) {
	var aerial = 0;
	var auto = 1;
	var birdseye = 2;
	var collinsBart = 3;
	var mercator = 4;
	var ordnanceSurvey = 5;
	var road = 6;
}
extern class MouseEventArgs {
	var eventName : String;
	var handled : Bool;
	var isPrimary : Bool;
	var isSecondary : Bool;
	var isTouchEvent : Bool;
	var originalEvent : Dynamic;
	var pageX : Float;
	var pageY : Float;
	var target : Dynamic;
	var targetType : String;
	var wheelDelta : Float;
	function getX():Float;
	function getY():Float;
}
@:enum abstract PixelReference(Int) {
	var control = 0;
	var page = 1;
	var viewport = 2;
}
typedef ViewOptions = {
	@:optional
	var animate : Bool;
	@:optional
	var bounds : LocationRect;
	@:optional
	var center : Location;
	@:optional
	var centerOffset : Point;
	@:optional
	var heading : Float;
	@:optional
	var labelOverlay : LabelOverlay;
	@:optional
	var mapTypeId : String;
	@:optional
	var padding : Float;
	@:optional
	var zoom : Float;
};
extern class Color {
	function new(alpha:Float, red:Float, green:Float, blue:Float):Void;
	var a : Float;
	var r : Float;
	var g : Float;
	var b : Float;
	@:overload(function():Color { })
	static function clone(color:Color):Color;
	static function fromHex(hex:String):Color;
	function getOpacity():Float;
	function toHex():String;
	function toString():String;
}
typedef EntityChangeArgs = {
	var collection : EntityCollection;
	var entity : Entity;
};
typedef EntityCollectionOptions = {
	var bubble : Bool;
	var visible : Bool;
	var zIndex : Float;
};
extern class EntityCollection {
	function new(options:EntityCollectionOptions):Void;
	function clear():Void;
	function get(index:Float):Entity;
	function getLength():Float;
	function getVisible():Bool;
	function getZIndex():Float;
	function indexOf(entity:Entity):Float;
	function insert(entity:Entity, index:Float):Void;
	function pop():Entity;
	function push(entity:Entity):Void;
	function remove(entity:Entity):Entity;
	function removeAt(index:Float):Entity;
	function setOptions(options:EntityCollectionOptions):Void;
	function toString():String;
	var entityAdded : EntityChangeArgs -> Dynamic;
	var entityChanged : EntityChangeArgs -> Dynamic;
	var entityRemoved : EntityChangeArgs -> Dynamic;
}
extern class Infobox {
	function new(location:Location, ?options:InfoboxOptions):Void;
	function getActions():Dynamic;
	function getAnchor():Point;
	function getDescription():String;
	function getHeight():Float;
	function getHtmlContent():String;
	function getId():String;
	function getLocation():Location;
	function getOffset():Point;
	function getOptions():InfoboxOptions;
	function getShowCloseButton():Bool;
	function getShowPointer():Bool;
	function getTitle():String;
	function getTitleAction():Dynamic;
	function getTitleClickHandler():Void -> Void;
	function getVisible():Bool;
	function getWidth():Float;
	function getZIndex():Float;
	function setHtmlContent(content:String):Void;
	function setLocation(location:Location):Void;
	function setOptions(options:InfoboxOptions):Void;
	function toString():String;
	var click : MouseEventArgs -> Void;
	var entitychanged : Entity -> Void;
	var mouseenter : MouseEventArgs -> Void;
	var mouseleave : MouseEventArgs -> Void;
}
typedef Action = {
	@:optional
	var label : String;
	@:optional
	var icon : String;
	var eventHandler : ?Dynamic -> Void;
};
typedef InfoboxOptions = {
	@:optional
	var actions : Array<Action>;
	@:optional
	var description : String;
	@:optional
	var htmlContent : String;
	@:optional
	var id : String;
	@:optional
	var location : Location;
	@:optional
	var offset : Point;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var showPointer : Bool;
	@:optional
	var pushpin : Pushpin;
	@:optional
	var title : String;
	@:optional
	var titleAction : { @:optional
	var label : String; var eventHandler : Void -> Void; };
	@:optional
	var titleClickHandler : Void -> Void;
	@:optional
	var typeName : InfoboxType;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
@:enum abstract InfoboxType(Int) {
	var mini = 0;
	var standard = 1;
}
typedef Entity = { };
extern class Polyline {
	function new(locations:Array<Location>, ?options:PolylineOptions):Void;
	function getLocations():Array<Location>;
	function getStrokeColor():Color;
	function getStrokeDashArray():String;
	function getStrokeThickness():Float;
	function getVisible():Bool;
	function setLocations(locations:Array<Location>):Void;
	function setOptions(options:PolylineOptions):Void;
	function toString():String;
	var click : MouseEventArgs -> Void;
	var dblclick : MouseEventArgs -> Void;
	var entitychanged : Entity -> Void;
	var mousedown : MouseEventArgs -> Void;
	var mouseout : MouseEventArgs -> Void;
	var mouseover : MouseEventArgs -> Void;
	var mouseup : MouseEventArgs -> Void;
	var rightclick : MouseEventArgs -> Void;
}
typedef PolylineOptions = {
	@:optional
	var strokeColor : Color;
	@:optional
	var strokeDashArray : String;
	@:optional
	var strokeThickness : Float;
	@:optional
	var visible : Bool;
};
extern class Polygon {
	function new(locations:Array<Location>, ?options:PolygonOptions):Void;
	function getFillColor():Color;
	function getLocations():Array<Location>;
	function getStrokeColor():Color;
	function getStrokeDashArray():String;
	function getStrokeThickness():Float;
	function getVisible():Bool;
	function setLocations(locations:Array<Location>):Void;
	function setOptions(options:PolylineOptions):Void;
	function toString():String;
	var click : MouseEventArgs -> Void;
	var dbclick : MouseEventArgs -> Void;
	var entitychanged : Entity -> Void;
	var mousedown : MouseEventArgs -> Void;
	var mouseout : MouseEventArgs -> Void;
	var mouseover : MouseEventArgs -> Void;
	var mouseup : MouseEventArgs -> Void;
	var rightclick : MouseEventArgs -> Void;
}
typedef PolygonOptions = {
	@:optional
	var fillColor : Color;
	@:optional
	var infoBox : Infobox;
	@:optional
	var strokeColor : Color;
	@:optional
	var strokeDashArray : String;
	@:optional
	var strokeThickness : Float;
	@:optional
	var visible : Bool;
};
extern class Pushpin {
	function new(location:Location, ?options:PushpinOptions):Void;
	function getAnchor():Point;
	function getIcon():String;
	function getHeight():Float;
	function getLocation():Location;
	function getText():String;
	function getTextOffset():Point;
	function getTypeName():String;
	function getVisible():Bool;
	function getWidth():Float;
	function getZIndex():Float;
	function setLocation(location:Location):Void;
	function setOptions(options:PushpinOptions):Void;
	function toString():String;
	var click : MouseEventArgs -> Void;
	var dblclick : MouseEventArgs -> Void;
	var drag : Pushpin -> Dynamic;
	var dragend : MouseEventArgs -> Void;
	var dragstart : MouseEventArgs -> Void;
	var entitychanged : { var entity : Entity; } -> Dynamic;
	var mousedown : MouseEventArgs -> Void;
	var mouseout : MouseEventArgs -> Void;
	var mouseover : MouseEventArgs -> Void;
	var mouseup : MouseEventArgs -> Void;
	var rightclick : MouseEventArgs -> Void;
}
@:enum abstract EntityState(Int) {
	var highlighted = 0;
	var none = 1;
	var selected = 2;
}
typedef PushpinOptions = {
	@:optional
	var anchor : Point;
	@:optional
	var draggable : Bool;
	@:optional
	var height : Float;
	@:optional
	var htmlContent : String;
	@:optional
	var icon : String;
	@:optional
	var infobox : Infobox;
	@:optional
	var state : EntityState;
	@:optional
	var text : String;
	@:optional
	var textOffset : Point;
	@:optional
	var typeName : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
	@:optional
	var zIndex : Float;
};
extern class TileLayer {
	function new(options:TileLayerOptions):Void;
	function getOpacty():Float;
	function getTileSource(projection:String):TileSource;
	function getZIndex():Float;
	function setOptions(options:TileLayerOptions):Void;
	function toString():String;
	var tiledownloadcomplete : Void -> Void;
}
extern class TileSource {
	function new(options:TileSourceOptions):Void;
	function getHeight():Float;
	function getUriConstructor():String;
	function getWidth():String;
	function toString():String;
}
typedef TileSourceOptions = {
	@:optional
	var height : Float;
	var uriConstructor : String;
	@:optional
	var width : Float;
};
typedef TileLayerOptions = {
	@:optional
	var animationDisplay : AnimationVisibility;
	@:optional
	var downloadTimeout : Float;
	@:optional
	var mercator : TileSource;
	@:optional
	var opacity : Float;
	@:optional
	var visible : Bool;
	@:optional
	var zIndex : Float;
};
@:enum abstract AnimationVisibility(Int) {
	var auto = 0;
	var hide = 1;
	var show = 2;
}
extern class Coordinates {
	var accuracy : Float;
	var altitude : Float;
	var altitudeAccuracy : Float;
	var heading : Float;
	var latitude : Float;
	var longitude : Float;
}
extern class GeoLocationProvider {
	function new(map:Map):Void;
	function addAccuracyCircle(center:Location, radiusInMeters:Float, segments:Float, options:PositionCircleOptions):Void;
	function cancelCurrentRequest():Void;
	function getCurrentPosition(?options:PositionOptions):Void;
	function removeAccuracyCircle():Void;
}
typedef PositionCircleOptions = {
	var polygonOptions : PolygonOptions;
	var showOnMap : Bool;
};
extern class PositionError {
	var errorCode : Float;
	var internalError : String;
}
typedef ModuleOptions = {
	@:optional
	var callback : Void -> Void;
	@:optional
	var styleURLS : Array<String>;
	@:optional
	var culture : String;
	@:optional
	var homeRegion : String;
};
extern class Microsoft.MapsTopLevel {
	static function loadModule(moduleKey:String, options:ModuleOptions):Void;
	static function moduleLoaded(moduleKey:String):Void;
	static function registerModule(moduleKey:String, scriptUrl:String, ?options:ModuleOptions):Void;
}
extern class Microsoft.MapsTopLevel {
	static function loadModule(moduleKey:String, options:ModuleOptions):Void;
	static function moduleLoaded(moduleKey:String):Void;
	static function registerModule(moduleKey:String, scriptUrl:String, ?options:ModuleOptions):Void;
}
