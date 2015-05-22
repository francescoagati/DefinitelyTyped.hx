typedef IPointLike = {
	var x : Float;
	var y : Float;
};
extern class Point {
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float):Void;
	@:overload(function(p:IPointLike):String { })
	function toString():String;
	function toJSON():JSON;
	function clone():Point;
	function set_zero():Point;
	function set(x:Float, y:Float):Point;
	@:overload(function(p:IPointLike):Point { })
	function negate():Point;
	@:overload(function(a:IPointLike, b:IPointLike):Point { })
	function add(n:IPointLike):Point;
	@:overload(function(a:IPointLike, b:IPointLike):Point { })
	function sub(n:IPointLike):Point;
	@:overload(function(s:Float, p:IPointLike):Point { })
	function mul(s:Float):Point;
	function length():Float;
	function normalize():Float;
	@:overload(function(a:IPointLike, b:IPointLike):Bool { })
	function equals(p:IPointLike):Bool;
	@:overload(function(a:IPointLike, b:Float):Float { })
	@:overload(function(a:IPointLike, b:IPointLike):Float { })
	@:overload(function(a:Float, b:IPointLike):Float { })
	static function cross(a:Float, b:Float):Float;
	static function toStringBase(p:IPointLike):String;
	static function compare(a:IPointLike, b:IPointLike):Float;
	static function dot(a:IPointLike, b:IPointLike):Float;
}
extern class SweepContext {
	@:overload(function(contour:Array<IPointLike>, options:JSON):Void { })
	function new(contour:Array<IPointLike>):Void;
	function addHole(polyline:Array<IPointLike>):SweepContext;
	function addHoles(holes:Array<Array<IPointLike>>):SweepContext;
	function addPoint(point:IPointLike):SweepContext;
	function addPoints(point:Array<IPointLike>):SweepContext;
	function triangulate():SweepContext;
	function getBoundingBox():{ var min : IPointLike; var max : IPointLike; };
	function getTriangles():Array<Triangle>;
}
extern class Triangle {
	function new(a:IPointLike, b:IPointLike, c:IPointLike):Void;
	function toString():String;
	function getPoint(index:Float):IPointLike;
	function getPoints():Array<IPointLike>;
	function containsPoint(point:IPointLike):Bool;
	function containsPoints(p1:IPointLike, p2:IPointLike):Bool;
	function isInterior():Bool;
}
