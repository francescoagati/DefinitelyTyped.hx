extern class GeometryService {
	static var UNIT_ACRES : Dynamic;
	static var UNIT_ARES : Dynamic;
	static var UNIT_FOOT : Dynamic;
	static var UNIT_HECTARES : Dynamic;
	static var UNIT_KILOMETER : Dynamic;
	static var UNIT_METER : Dynamic;
	static var UNIT_NAUTICAL_MILE : Dynamic;
	static var UNIT_SQUARE_CENTIMETERS : Dynamic;
	static var UNIT_SQUARE_DECIMETERS : Dynamic;
	static var UNIT_SQUARE_FEET : Dynamic;
	static var UNIT_SQUARE_INCHES : Dynamic;
	static var UNIT_SQUARE_KILOMETERS : Dynamic;
	static var UNIT_SQUARE_METERS : Dynamic;
	static var UNIT_SQUARE_MILES : Dynamic;
	static var UNIT_SQUARE_MILLIMETERS : Dynamic;
	static var UNIT_SQUARE_YARDS : Dynamic;
	static var UNIT_STATUTE_MILE : Dynamic;
	static var UNIT_US_NAUTICAL_MILE : Dynamic;
	var url : String;
	function new(url:String):Void;
	function areasAndLengths(areasAndLengthsParameters:AreasAndLengthsParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function autoComplete(polygons:Array<Polygon>, polylines:Array<Polyline>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function buffer(bufferParameters:BufferParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function convexHull(geometries:Array<Geometry>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function cut(geometries:Array<Geometry>, cutterGeometry:Geometry, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function densify(densifyParameters:DensifyParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function difference(geometries:Array<Geometry>, geometry:Geometry, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function distance(params:DistanceParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function fromGeoCoordinateString(params:Dynamic, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function generalize(params:GeneralizeParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function intersect(geometries:Array<Geometry>, geometry:Geometry, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function labelPoints(polygons:Array<Geometry>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function lengths(lengthsParameter:LengthsParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function offset(params:OffsetParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function project(params:ProjectParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function relation(relationParameters:RelationParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function reshape(targetGeometry:Geometry, reshaperGeometry:Geometry, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function simplify(geometries:Array<Geometry>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function toGeoCoordinateString(params:Dynamic, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function trimExtend(params:TrimExtendParameters, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function union(geometries:Array<Geometry>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	@:overload(function(type:Auto-complete-complete, listener:{ var geometries : Array<Polygon>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Buffer-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Convex-hull-complete, listener:{ var geometry : Geometry; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Cut-complete, listener:{ var result : Dynamic; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Densify-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Difference-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Distance-complete, listener:{ var distance : Float; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Error, listener:{ var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Generalize-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Intersect-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Label-points-complete , listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Lengths-complete, listener:{ var result : Dynamic; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Offset-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Project-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Relation-complete, listener:{ var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Reshape-complete, listener:{ var geometry : Geometry; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Simplify-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Trim-extend-complete, listener:{ var geometries : Array<Geometry>; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:Union-complete, listener:{ var geometry : Geometry; var target : GeometryService; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Areas-and-lengths-complete, listener:{ var result : Dynamic; var target : GeometryService; } -> Void):esri.Handle;
}
