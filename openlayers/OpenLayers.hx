typedef MapOptions = {
	@:optional
	var projection : String;
	@:optional
	var maxExtend : Bounds;
	@:optional
	var center : LonLat;
};
typedef DistanceOptions = {
	@:optional
	var details : Bool;
	@:optional
	var edge : Bool;
};
typedef BoundsOptions = {
	@:optional
	var inclusive : Bool;
	@:optional
	var worldBounds : Bounds;
};
typedef WrapDateLineOptions = {
	@:optional
	var leftTolerance : Float;
	@:optional
	var rightTolerance : Float;
};
typedef LayerOptions = { };
extern class Animation {

}
extern class String {

}
extern class Number {

}
extern class Function {

}
extern class Array {

}
extern class Console {

}
extern class Control {

}
extern class Event {

}
extern class Events {
	function attachToElement(element:HTMLElement):Void;
	function on(object:Dynamic):Void;
	function register(type:String, obj:Dynamic, func:Void -> Void, priority:Bool):Void;
	function registerPriority(type:String, obj:Dynamic, func:Void -> Void):Void;
	function un(object:Dynamic):Void;
	function unregister(type:String, obj:Dynamic, func:Void -> Void):Void;
	function remove(type:String):Void;
	function triggerEvent(type:String, evt:Event):Bool;
	function handleBrowserEvent(evt:Event):Void;
	function getMousePosition(evt:Event):Pixel;
}
extern class Feature {

}
extern class Filter {

}
extern class Format {

}
extern class Handler {

}
extern class Icon {

}
extern class Kinetic {

}
extern class Lang {

}
extern class Layer {
	var id : String;
	var name : String;
	var div : HTMLElement;
	var opacity : Float;
	var alwaysInRange : Bool;
	var RESOLUTION_PROPERTIES : Array<String>;
	var events : Events;
	var map : Map;
	var isBaseLayer : Bool;
	var alpha : Bool;
	var displayInLayerSwitcher : Bool;
	var visibility : Bool;
	var attribution : String;
	var inRange : Bool;
	var imageSize : Size;
	var options : Dynamic;
	var eventListeners : Dynamic;
	var gutter : Float;
	var projection : Projection;
	var units : String;
	var scales : Array<Dynamic>;
	var resolutions : Array<Dynamic>;
	var maxExtent : Bounds;
	var minExtent : Bounds;
	var maxResolution : Float;
	var minResolution : Float;
	var numZoomLevels : Float;
	var minScale : Float;
	var maxScale : Float;
	var displayOutsideMaxExtent : Bool;
	var wrapDateLine : Bool;
	var metadata : Dynamic;
	function new(name:String, options:LayerOptions):Void;
	function destroy(?setNewBaseLayer:Bool):Void;
	function clone():Layer;
	function getOptions():LayerOptions;
	function setName(newName:String):Void;
	function addOptions(newOptions:LayerOptions, reinitialize:Bool):Void;
	function onMapResize():Void;
	function redraw():Void;
	function moveTo(bounds:Bounds, zoomChanged:Bool, dragging:Bool):Void;
	function moveByPx(dx:Float, dy:Float):Void;
	function setMap(map:Map):Void;
	function afterAdd():Void;
	function removeMap(map:Map):Void;
	function getImageSize(bounds:Bounds):Size;
	function setTileSize(size:Size):Void;
	function getVisibility():Bool;
	function setVisibility(visibility:Bool):Void;
	function display(display:Bool):Void;
	function calculateInRange():Bool;
	function setIsBaseLayer(isBaseLayer:Bool):Void;
	function initResolutions():Void;
	function resolutionsFromScales(scales:Array<Float>):Array<Float>;
	function calculateResolutions(props:Dynamic):Array<Float>;
	function getResolution():Float;
	function getExtent():Bounds;
	function getZoomForExtent(extent:Bounds, ?closest:Bool):Float;
	function getDataExtent():Bounds;
	function getResolutionForZoom(zoom:Float):Float;
	function getZoomForResolution(resolution:Float, ?closest:Bool):Float;
	function getLonLatFromViewPortPx(viewPortPx:Pixel):LonLat;
	function getViewPortPxFromLonLat(lonlat:LonLat, resolution:Float):Pixel;
	function setOpacity(opacity:Float):Void;
	function getZIndex():Float;
	function setZIndex(zIndex:Float):Void;
	function adjustBounds(bounds:Bounds):Bounds;
	static var CLASS_NAME : String;
}
extern class Marker {

}
extern class Popup {

}
extern class Protocol {

}
extern class Renderer {

}
extern class Request {

}
extern class Rule {

}
extern class SingleFile {

}
extern class Spherical {

}
extern class Strategy {

}
extern class Style {

}
extern class Style2 {

}
extern class StyleMap {

}
extern class Symbolizer {

}
extern class Tile {

}
extern class TileManager {

}
extern class Tween {

}
extern class Util {

}
extern class WPSClient {

}
extern class WPSProcess {

}
extern class Geometry {
	var id : String;
	var parent : Geometry;
	var bounds : Bounds;
	function new():Void;
	function destroy():Void;
	function clone():Geometry;
	function setBounds(bounds:Bounds):Void;
	function clearBounds():Void;
	function extendBounds(newBounds:Bounds):Void;
	function getBounds():Bounds;
	function distanceTo(geometry:Geometry, options:Dynamic):Dynamic;
	function getVertices(nodes:Bool):Array<Dynamic>;
	function atPoint(lonlat:LonLat, ?toleranceLon:Float, ?toleranceLat:Float):Bool;
	function getLength():Float;
	function getArea():Float;
	function toString():String;
	function getCentroid():Geometry.Point;
	static var CLASS_NAME : String;
}
extern class Projection {
	function new(projCode:String, ?options:Dynamic):Void;
	function getCode():String;
	function getUnits():String;
	function addTransform(from:String, to:String, method:Void -> Void):Void;
	@:overload(function(point:Dynamic, source:Projection, dest:OpenLayers.Projection):Dynamic { })
	function transform(point:Geometry.Point, source:Projection, dest:OpenLayers.Projection):Dynamic;
	function nullTransform(point:Dynamic):haxe.Constraints.Function;
}
extern class Bounds {
	var left : Float;
	var bottom : Float;
	var right : Float;
	var top : Float;
	@:overload(function(bounds:Array<Float>):Void { })
	function new(left:Float, bottom:Float, right:Float, top:Float):Void;
	function clone():Bounds;
	function equals(bounds:Bounds):Bool;
	function toString():String;
	function toArray(?reverseAxisOrder:Bool):Array<Float>;
	function toBBOX(?decimal:Float, ?reverseAxisOrder:Bool):String;
	function toGeometry():OpenLayers.Geometry.Polygon;
	function getWidth():Float;
	function getHeight():Float;
	function getSize():Size;
	function getCenterPixel():Pixel;
	function getCenterLonLat():LonLat;
	@:overload(function(ratio:Float, ?origin:LonLat):Void { })
	function scale(ratio:Float, ?origin:Pixel):Void;
	function add(x:Float, y:Float):Bounds;
	@:overload(function(object:Geometry.Point):Void { })
	@:overload(function(object:Bounds):Void { })
	function extend(object:LonLat):Void;
	function extendXY(x:Float, y:Float):Void;
	@:overload(function(ll:Dynamic, options:BoundsOptions):Bool { })
	function containsLonLat(ll:LonLat, options:BoundsOptions):Bool;
	function containsPixel(px:Pixel, inclusive:Bool):Bool;
	function contains(x:Float, y:Float, ?inclusive:Bool):Bool;
	function intersectsBounds(bounds:Bounds, options:BoundsOptions):Bool;
	function containsBounds(bounds:Bounds, partial:Bool, inclusive:Bool):Bool;
	function determineQuadrant(lonlat:LonLat):String;
	function transform(source:Projection, dest:Projection):Bounds;
	function wrapDateLine(maxExtent:Bounds, options:WrapDateLineOptions):Bounds;
	static var CLASS_NAME : String;
	static function fromString(str:String, reverseAxisOrder:Bool):Bounds;
	static function fromArray(bbox:Array<Float>, reverseAxisOrder:Bool):Bounds;
	static function fromSize(size:Size):Bounds;
	static function oppositeQuadrant(quadrant:String):String;
}
extern class LonLat {
	@:overload(function(lonlat:Array<Float>):Void { })
	function new(lon:Float, lat:Float):Void;
	function toShortString():String;
	function clone():LonLat;
	function add(lon:Float, lat:Float):LonLat;
	function equals(ll:LonLat):Bool;
	function transform(source:Projection, dest:Projection):LonLat;
	function wrapDateLine(maxExtend:Bounds):LonLat;
}
extern class Map {
	var id : String;
	var fractionalZoom : Bool;
	var events : Events;
	var allOverlays : Bool;
	var div : HTMLElement;
	var dragging : Bool;
	var size : Size;
	var viewPortDiv : HTMLDivElement;
	var layerContainerOrigin : LonLat;
	var layerContainerDiv : HTMLDivElement;
	var layers : Array<Layer>;
	var controls : Array<Control>;
	var popups : Array<Popup>;
	var baseLayer : Layer;
	var center : LonLat;
	var resolution : Float;
	var zoom : Float;
	var panRatio : Float;
	var options : Dynamic;
	var tileSize : Size;
	var projection : String;
	var units : String;
	var resolutions : Array<Float>;
	var maxResolution : Float;
	var minResolution : Float;
	var maxScale : Float;
	var minScale : Float;
	var maxExtent : Bounds;
	var minExtent : Bounds;
	var restrictedExtent : Bounds;
	var numZoomLevels : Float;
	var theme : String;
	var displayProjection : Projection;
	var fallThrough : Bool;
	var autoUpdateSize : Bool;
	var eventListeners : Dynamic;
	var panTween : Tween;
	var panMethod : Void -> Void;
	var panDuration : Float;
	var zoomTween : Tween;
	var zoomMethod : Void -> Void;
	var zoomDuration : Float;
	var paddingForPopups : Bounds;
	var layerContainerOriginPx : Dynamic;
	var minPx : { var x : Float; var y : Float; };
	var maxPx : { var x : Float; var y : Float; };
	@:overload(function(id:String, ?options:MapOptions):Void { })
	function new(id:HTMLElement, ?options:MapOptions):Void;
	function getViewport():HTMLElement;
	@:overload(function(div:HTMLElement):Void { })
	function render(div:String):Void;
	function unloadDestroy():Void -> Void;
	var updateSizeDestroy : Void -> Void;
	function destroy():Void;
	function setOptions(options:{ }):Void;
	function getTileSize():Size;
	@:overload(function(array:String, property:String, match:Dynamic):Array<Dynamic> { })
	function getBy(array:String, property:String, match:String):Array<Dynamic>;
	@:overload(function(property:String, match:Dynamic):Array<Layer> { })
	function getLayersBy(property:String, match:String):Array<Layer>;
	@:overload(function(match:Dynamic):Array<Layer> { })
	function getLayersByName(match:String):Array<Layer>;
	@:overload(function(match:Dynamic):Array<Layer> { })
	function getLayersByClass(match:String):Array<Layer>;
	@:overload(function(property:String, match:Dynamic):Array<Control> { })
	function getControlsBy(property:String, match:String):Array<Control>;
	@:overload(function(match:Dynamic):Array<Control> { })
	function getControlsByClass(match:String):Array<Control>;
	function getLayer(id:String):Layer;
	function setLayerZIndex(layer:Layer, zIdx:Float):Void;
	function resetLayersZIndex():Void;
	function addLayer(layer:Layer):Bool;
	function addLayers(layers:Array<Layer>):Void;
	function removeLayer(layer:Layer, ?setNewBaseLayer:Bool):Void;
	function getNumLayers():Float;
	function getLayerIndex(layer:Layer):Float;
	function setLayerIndex(layer:Layer, idx:Float):Void;
	function raiseLayer(layer:Layer, delta:Float):Void;
	function setBaseLayer(newBaseLayer:Layer):Void;
	function addControl(control:Control, px:Pixel):Void;
	function addControls(controls:Array<Control>, pixels:Array<Pixel>):Void;
	function addControlToMap(control:Control, px:Pixel):Void;
	function getControl(id:String):Control;
	function removeControl(control:Control):Void;
	function addPopup(popup:Popup, exclusive:Bool):Void;
	function removePopup(popup:Popup):Void;
	function getSize():Size;
	function updateSize():Void;
	function getCurrentSize():Size;
	function calculateBounds(?center:LonLat, ?resolution:Float):Bounds;
	function getCenter():LonLat;
	function getZoom():Float;
	function pan(dx:Float, dy:Float, ?options:{ @:optional
	var animate : Bool; @:optional
	var dragging : Bool; }):Void;
	function panTo(lonlat:LonLat):Void;
	@:overload(function(lonlat:Array<Float>, ?zoom:Float, ?dragging:Bool, ?forceZoomChange:Bool):Void { })
	function setCenter(lonlat:LonLat, ?zoom:Float, ?dragging:Bool, ?forceZoomChange:Bool):Void;
	function getMinZoom():Float;
	function getProjection():String;
	function getProjectionObject():Projection;
	function getMaxResolution():String;
	function getMaxExtent(options:{ var restricted : Bool; }):Bounds;
	function getNumZoomLevels():Float;
	function getExtent():Bounds;
	function getResolution():Float;
	function getUnits():Float;
	function getScale():Float;
	function getZoomForExtent(bounds:Bounds, ?closest:Bool):Float;
	function getResolutionForZoom(zoom:Float):Float;
	function getZoomForResolution(resolution:Float, ?closest:Bool):Float;
	function zoomTo(zoom:Float, px:Pixel):Void;
	function zoomIn():Void;
	function zoomOut():Void;
	@:overload(function(bounds:Array<Float>, ?closest:Bool):Void { })
	function zoomToExtent(bounds:Bounds, ?closest:Bool):Void;
	function zoomToMaxExtent(?options:{ var restricted : Bool; }):Void;
	function zoomToScale(scale:Float, closest:Bool):Void;
	function getViewPortPxFromLonLat(lonlat:LonLat):Pixel;
	@:overload(function(px:{ var x : Float; var y : Float; }):LonLat { })
	function getLonLatFromPixel(px:Pixel):LonLat;
	function getPixelFromLonLat(lonlat:LonLat):Pixel;
	function getViewPortPxFromLayerPx(layerPx:Pixel):Pixel;
	function getLayerPxFromViewPortPx(viewPortPx:Pixel):Pixel;
	function getLayerPxFromLonLat(lonlat:LonLat):Pixel;
	static var TILE_WIDTH : String;
	static var TILE_HEIGHT : String;
}
extern class Class {

}
extern class Date {
	var dateRegEx : String;
	function toISOString(date:Date):String;
	function parse(str:String):Date;
}
extern class Element {
	function visible(element:HTMLElement):Bool;
	function toggle(element:HTMLElement):Void;
	function remove(element:HTMLElement):Void;
	function getHeight(element:HTMLElement):Float;
	function hasClass(element:HTMLElement, name:String):Bool;
	function addClass(element:HTMLElement, name:String):HTMLElement;
	function removeClass(element:HTMLElement, name:String):HTMLElement;
	function toggleClass(element:HTMLElement, name:String):HTMLElement;
	function getStyle(element:HTMLElement, style:Dynamic):Dynamic;
}
extern class Pixel {
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float):Void;
	function clone():Pixel;
	@:overload(function(px:{ var x : Float; var y : Float; }):Bool { })
	function equals(px:Pixel):Bool;
	function distanceTo(px:Pixel):Float;
	function add(x:Float, y:Float):Pixel;
	@:overload(function(px:{ var x : Float; var y : Float; }):Pixel { })
	function offset(px:Pixel):Pixel;
	var CLASS_NAME : String;
}
extern class Size {
	var w : Float;
	var h : Float;
	function new(w:Float, h:Float):Void;
	function toString():String;
	function clone():Size;
	function equals(sz:Size):Bool;
	var CLASS_NAME : String;
}
