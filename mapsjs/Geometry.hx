extern class Polyline extends Geometry {
	function new(geom:Geometry):Void;
	function getGeometry():Geometry;
	function clone():Polyline;
	function getLineCount():Float;
	function getLine(idx:Float):Array<Float>;
	function pushLine(s:Array<Float>):Void;
	function popLine():Array<Float>;
	function getProjectedDistance(idx:Float):Float;
	function getActualDistance(?idx:Float):Float;
	function intersects(geom:Geometry):Bool;
}
extern class Polygon extends Geometry {
	function new(geom:Geometry):Void;
	function getGeometry():Geometry;
	function clone():Polygon;
	function getRingCount():Float;
	function getRing(idx:Float):Array<Float>;
	function pushRing(s:Array<Float>):Void;
	function popRing():Array<Float>;
	function getProjectedArea(idx:Float):Float;
	function getProjectedPerimeter(idx:Float):Float;
	function getActualArea(?idx:Float):Float;
	function getActualPerimeter(?idx:Float):Float;
	function intersects(geom:Geometry):Bool;
	function overlaps(poly:Polygon):Bool;
	function toMultiPolygon():Array<Polygon>;
}
extern class GeometryStyle {
	function new(?options:StyleObj):Void;
	function getOutlineThicknessPix():Float;
	function setOutlineThicknessPix(t:Float):Void;
	function getOutlineColor():String;
	function setOutlineColor(c:String):Void;
	function getOutlineOpacity():Float;
	function setOutlineOpacity(o:Float):Void;
	function getFillColor():String;
	function setFillColor(c:String):Void;
	function getFillOpacity():Float;
	function setFillOpacity(o:Float):Void;
	function getDashArray():String;
	function setDashArray(da:String):Void;
}
extern class Point {
	function new(x:Float, y:Float):Void;
	function getX():Float;
	function getY():Float;
	function toProps():PointObject;
	function equals(pt:Point):Bool;
	function createOffsetBy(dx:Float, dy:Float):Point;
	function convertToPoly(side:Float, radius:Float):geometry.Polygon;
	function toString():String;
	function clone():Point;
	function getBounds():Envelope;
	function distanceTo(pt:Point):Float;
}
