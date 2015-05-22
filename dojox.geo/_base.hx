extern class Collection extends dojox.geo.openlayers.Geometry {
	function new(coords:Dynamic):Void;
	var coordinates : Array<Dynamic>;
	function getGeometries():Dynamic;
	function setGeometries(g:Array<Dynamic>):Void;
}
extern class Feature {
	function new():Void;
	function getCoordinateSystem():Dynamic;
	function getLayer():Dynamic;
	function remove():Void;
	function render():Void;
	function setCoordinateSystem(cs:Dynamic):Void;
}
extern class Geometry {
	function new(coords:Dynamic):Void;
	var coordinates : Dynamic;
}
extern class GfxLayer extends dojox.geo.openlayers.Layer {
	function new(name:Dynamic, options:Dynamic):Void;
	function added():Void;
	@:overload(function(f:Array<dojox.geo.openlayers.Feature>):Void { })
	function addFeature(f:dojox.geo.openlayers.Feature):Void;
	function clear():Void;
	function getDojoMap():Dynamic;
	function getFeatureAt(i:Float):Dynamic;
	function getFeatureCount():Dynamic;
	function getFeatures():Dynamic;
	function getSurface():Dynamic;
	function getViewport():Dynamic;
	function moveTo(event:Dynamic):Void;
	function redraw():Void;
	@:overload(function(f:Array<dojox.geo.openlayers.Feature>):Void { })
	function removeFeature(f:dojox.geo.openlayers.Feature):Void;
	function removeFeatureAt(index:Float):Void;
	function renderFeature(f:dojox.geo.openlayers.Feature):Void;
	function setMap(map:Dynamic):Void;
	function setViewport(g:Dynamic):Void;
	function onMapResize():Void;
}
extern class GeometryFeature extends dojox.geo.openlayers.Feature {
	function new(geometry:dojox.geo.openlayers.Geometry):Void;
	function createShape(s:dojox.gfx.Surface, g:dojox.geo.openlayers.Geometry):Dynamic;
	function getCoordinateSystem():Dynamic;
	function getFill():Dynamic;
	function getLayer():Dynamic;
	function getShape():Dynamic;
	function getShapeProperties():Dynamic;
	function getStroke():Dynamic;
	function remove():Void;
	function render(?g:dojox.geo.openlayers.Geometry):Void;
	function renderCollection(g:dojox.geo.openlayers.Geometry):Void;
	function renderLineString(g:dojox.geo.openlayers.Geometry):Void;
	function renderPoint(g:dojox.geo.openlayers.Point):Void;
	function setCoordinateSystem(cs:Dynamic):Void;
	function setFill(f:Dynamic):haxe.Constraints.Function;
	function setShapeProperties(s:Dynamic):haxe.Constraints.Function;
	function setStroke(s:Dynamic):haxe.Constraints.Function;
}
extern class JsonImport {
	function new(params:Dynamic):Void;
	function loadData():Void;
}
extern class Layer {
	function new(name:String, options:Dynamic):Void;
	function added():Void;
	@:overload(function(f:Array<dojox.geo.openlayers.Feature>):Void { })
	function addFeature(f:dojox.geo.openlayers.Feature):Void;
	function clear():Void;
	function getDojoMap():Dynamic;
	function getFeatureAt(i:Float):Dynamic;
	function getFeatureCount():Dynamic;
	function getFeatures():Dynamic;
	function moveTo(event:MouseEvent):Void;
	function redraw():Void;
	@:overload(function(f:Array<dojox.geo.openlayers.Feature>):Void { })
	function removeFeature(f:dojox.geo.openlayers.Feature):Void;
	function removeFeatureAt(index:Float):Void;
	function renderFeature(f:dojox.geo.openlayers.Feature):Void;
}
extern class LineString extends dojox.geo.openlayers.Geometry {
	function new(coords:Dynamic):Void;
	var coordinates : Dynamic;
	function getPoints():Dynamic;
	function setPoints(p:Array<Dynamic>):Void;
}
extern class Map {
	function new(div:Dynamic, options:Dynamic):Void;
	var olMap : Dynamic;
	function addLayer(layer:dojox.geo.openlayers.Layer):Void;
	function fitTo(o:Dynamic):Void;
	function getBaseLayerType():Dynamic;
	function getLayer(property:String, value:Dynamic):Dynamic;
	function getLayerCount():Dynamic;
	function getOLMap():Dynamic;
	function getScale(geodesic:Bool):Dynamic;
	function initialFit(params:Dynamic):Void;
	function layerIndex(layer:dojox.geo.openlayers.Layer, index:Float):Dynamic;
	function removeLayer(layer:dojox.geo.openlayers.Layer):Void;
	function setBaseLayerType(type:dojox.geo.openlayers.Layer):Dynamic;
	function transform(p:Dynamic, from:Dynamic, to:Dynamic):Dynamic;
	function transformXY(x:Float, y:Float, from:Dynamic, to:Dynamic):Dynamic;
}
extern class Point extends dojox.geo.openlayers.Geometry {
	function new(coords:Dynamic):Void;
	var coordinates : Dynamic;
	function getPoint():Dynamic;
	function setPoint(p:Dynamic):Void;
}
extern class TouchInteractionSupport {
	function new(map:dojox.geo.openlayers.Map):Void;
}
extern class WidgetFeature extends dojox.geo.openlayers.Feature {
	function new(params:Dynamic):Void;
	function getCoordinateSystem():Dynamic;
	function getLayer():Dynamic;
	function getParameters():Dynamic;
	function remove():Void;
	function render():Void;
	function setCoordinateSystem(cs:Dynamic):Void;
	function setParameters(params:Dynamic):Void;
}
typedef __JsonImportArgs = {
	var error : haxe.Constraints.Function;
	var nextFeature : haxe.Constraints.Function;
	var url : String;
};
typedef __MapArgs = {
	var baseLayerName : String;
	var baseLayerOptions : String;
	var baseLayerType : String;
	var baseLayerUrl : String;
};
typedef __WidgetFeatureArgs = {
	var createWidget : haxe.Constraints.Function;
	var dijitId : String;
	var dojoType : String;
	var height : Float;
	var latitude : Float;
	var longitude : Float;
	var widget : Dynamic;
	var width : Float;
};
typedef BaseLayerType = {
	var ARCGIS : String;
	var BING : String;
	var GOOGLE : String;
	var OSM : String;
	var VIRTUAL_EARTH : String;
	var WMS : String;
	var YAHOO : String;
};
typedef GreatCircle = {
	var DEG2RAD : Float;
	var RAD2DEG : Float;
	var TOLERANCE : Float;
	function toGeometryFeature(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Dynamic;
	function toLineString(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Dynamic;
	function toPointArray(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Array<Dynamic>;
};
typedef Widget = {
	function Map():Void;
};
typedef GreatCircle = {
	var DEG2RAD : Float;
	var RAD2DEG : Float;
	var TOLERANCE : Float;
	function toGeometryFeature(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Dynamic;
	function toLineString(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Dynamic;
	function toPointArray(p1:dojox.geo.openlayers.Point, p2:dojox.geo.openlayers.Point, increment:Float):Array<Dynamic>;
};
typedef Patch = {
	function patchGFX():Void;
};
