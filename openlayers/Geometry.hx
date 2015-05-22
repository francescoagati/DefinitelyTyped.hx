extern class Collection extends Geometry {
	var components : Array<Geometry>;
	var componentTypes : Array<String>;
	function new(components:Array<Geometry>):Void;
	function destroy():Void;
	function clone():Collection;
	function getComponentsString():String;
	function calculateBounds():Void;
	function addComponents(components:Array<Geometry>):Void;
	function addComponent(component:Geometry, index:Float):Bool;
	function removeComponents(components:Array<Geometry>):Bool;
	function removeComponent(component:Geometry):Bool;
	function getLength():Float;
	function getArea():Float;
	function getGeodesicArea(projection:Projection):Float;
	function getCentroid(?weighted:Bool):Point;
	function getGeodesicLength(projection:Projection):Float;
	function move(x:Float, y:Float):Void;
	function rotate(angle:Float, origin:Point):Void;
	function resize(scale:Float, origin:Point, ratio:Float):Geometry;
	function distanceTo(geometry:Geometry, options:DistanceOptions):Dynamic;
	function equals(geometry:Geometry):Bool;
	function transform(source:Projection, dest:Projection):Geometry;
	function intersects(geometry:Geometry):Bool;
	function getVertices(nodes:Bool):Array<Dynamic>;
	static var CLASS_NAME : String;
}
extern class Point extends Geometry {
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float):Void;
	@:overload(function(obj:Point):Point { })
	function clone():Geometry;
	function distanceTo(geometry:Geometry, options:DistanceOptions):Dynamic;
	function equals(geom:Point):Bool;
	function move(x:Float, y:Float):Void;
	function rotate(angle:Float, origin:Point):Void;
	function resize(scale:Float, origin:Point, ratio:Float):Geometry;
	function intersects(geometry:Geometry):Bool;
	function transform(source:Projection, dest:Projection):Geometry;
	function getVertices(nodes:Bool):Array<Dynamic>;
}
extern class Curve extends Geometry.MultiPoint {

}
extern class LineString extends Geometry.Curve {

}
extern class LinearRing extends Geometry.LineString {

}
extern class MultiLineString extends Geometry.Collection {

}
extern class MultiPoint extends Geometry.Collection {

}
extern class MultiPolygon extends Geometry.Collection {

}
extern class Polygon extends Geometry.Collection {

}
