extern class Arc extends Observable {
	var options : ArcOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function getAnticlockwise():Bool;
	function getCenter():kendo.geometry.Point;
	function getEndAngle():Float;
	function getRadiusX():Float;
	function getRadiusY():Float;
	function getStartAngle():Float;
	function pointAt(angle:Float):kendo.geometry.Point;
	function setAnticlockwise(value:Bool):kendo.geometry.Arc;
	function setCenter(value:kendo.geometry.Point):kendo.geometry.Arc;
	function setEndAngle(value:Float):kendo.geometry.Arc;
	function setRadiusX(value:Float):kendo.geometry.Arc;
	function setRadiusY(value:Float):kendo.geometry.Arc;
	function setStartAngle(value:Float):kendo.geometry.Arc;
	var anticlockwise : Bool;
	var center : kendo.geometry.Point;
	var endAngle : Float;
	var radiusX : Float;
	var radiusY : Float;
	var startAngle : Float;
}
typedef ArcOptions = {
	@:optional
	var name : String;
};
typedef ArcEvent = {
	var sender : Arc;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Circle extends Observable {
	var options : CircleOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function clone():kendo.geometry.Circle;
	function equals(other:kendo.geometry.Circle):Bool;
	function getCenter():kendo.geometry.Point;
	function getRadius():Float;
	function pointAt(angle:Float):kendo.geometry.Point;
	@:overload(function(value:Dynamic):kendo.geometry.Point { })
	function setCenter(value:kendo.geometry.Point):kendo.geometry.Point;
	function setRadius(value:Float):kendo.geometry.Circle;
	var center : kendo.geometry.Point;
	var radius : Float;
}
typedef CircleOptions = {
	@:optional
	var name : String;
};
typedef CircleEvent = {
	var sender : Circle;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Matrix extends Observable {
	var options : MatrixOptions;
	function clone():kendo.geometry.Matrix;
	function equals(other:kendo.geometry.Matrix):Bool;
	function round(digits:Float):kendo.geometry.Matrix;
	function multiplyCopy(matrix:kendo.geometry.Matrix):kendo.geometry.Matrix;
	function toArray(digits:Float):Dynamic;
	function toString(digits:Float, separator:String):String;
	static function rotate(angle:Float, x:Float, y:Float):kendo.geometry.Matrix;
	static function scale(scaleX:Float, scaleY:Float):kendo.geometry.Matrix;
	static function translate(x:Float, y:Float):kendo.geometry.Matrix;
	static function unit():kendo.geometry.Matrix;
	var a : Float;
	var b : Float;
	var c : Float;
	var d : Float;
	var e : Float;
	var f : Float;
}
typedef MatrixOptions = {
	@:optional
	var name : String;
};
typedef MatrixEvent = {
	var sender : Matrix;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Point extends Observable {
	var options : PointOptions;
	function clone():kendo.geometry.Point;
	function distanceTo(point:kendo.geometry.Point):Float;
	function equals(other:kendo.geometry.Point):Bool;
	function getX():Float;
	function getY():Float;
	function move(x:Float, y:Float):kendo.geometry.Point;
	@:overload(function(angle:Float, center:Dynamic):kendo.geometry.Point { })
	function rotate(angle:Float, center:kendo.geometry.Point):kendo.geometry.Point;
	function round(digits:Float):kendo.geometry.Point;
	function scale(scaleX:Float, scaleY:Float):kendo.geometry.Point;
	function scaleCopy(scaleX:Float, scaleY:Float):kendo.geometry.Point;
	function setX(value:Float):kendo.geometry.Point;
	function setY(value:Float):kendo.geometry.Point;
	function toArray(digits:Float):Dynamic;
	function toString(digits:Float, separator:String):String;
	function transform(tansformation:kendo.geometry.Transformation):kendo.geometry.Point;
	function transformCopy(tansformation:kendo.geometry.Transformation):kendo.geometry.Point;
	function translate(dx:Float, dy:Float):kendo.geometry.Point;
	@:overload(function(vector:Dynamic):kendo.geometry.Point { })
	function translateWith(vector:kendo.geometry.Point):kendo.geometry.Point;
	@:overload(function(x:Dynamic, y:Float):kendo.geometry.Point { })
	@:overload(function(x:kendo.geometry.Point, y:Float):kendo.geometry.Point { })
	static function create(x:Float, y:Float):kendo.geometry.Point;
	static function min():kendo.geometry.Point;
	static function max():kendo.geometry.Point;
	static function minPoint():kendo.geometry.Point;
	static function maxPoint():kendo.geometry.Point;
	var x : Float;
	var y : Float;
}
typedef PointOptions = {
	@:optional
	var name : String;
};
typedef PointEvent = {
	var sender : Point;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Rect extends Observable {
	var options : RectOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function bottomLeft():kendo.geometry.Point;
	function bottomRight():kendo.geometry.Point;
	function center():kendo.geometry.Point;
	function clone():kendo.geometry.Rect;
	function equals(other:kendo.geometry.Rect):Bool;
	function getOrigin():kendo.geometry.Point;
	function getSize():kendo.geometry.Size;
	function height():Float;
	@:overload(function(value:Dynamic):kendo.geometry.Rect { })
	function setOrigin(value:kendo.geometry.Point):kendo.geometry.Rect;
	@:overload(function(value:Dynamic):kendo.geometry.Rect { })
	function setSize(value:kendo.geometry.Size):kendo.geometry.Rect;
	function topLeft():kendo.geometry.Point;
	function topRight():kendo.geometry.Point;
	function width():Float;
	static function fromPoints(pointA:kendo.geometry.Point, pointB:kendo.geometry.Point):kendo.geometry.Rect;
	static function union(rectA:kendo.geometry.Rect, rectB:kendo.geometry.Rect):kendo.geometry.Rect;
	var origin : kendo.geometry.Point;
	var size : kendo.geometry.Size;
}
typedef RectOptions = {
	@:optional
	var name : String;
};
typedef RectEvent = {
	var sender : Rect;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Size extends Observable {
	var options : SizeOptions;
	function clone():kendo.geometry.Size;
	function equals(other:kendo.geometry.Size):Bool;
	function getWidth():Float;
	function getHeight():Float;
	function setWidth(value:Float):kendo.geometry.Size;
	function setHeight(value:Float):kendo.geometry.Size;
	@:overload(function(width:Dynamic, height:Float):kendo.geometry.Size { })
	@:overload(function(width:kendo.geometry.Size, height:Float):kendo.geometry.Size { })
	static function create(width:Float, height:Float):kendo.geometry.Size;
	var width : Float;
	var height : Float;
}
typedef SizeOptions = {
	@:optional
	var name : String;
};
typedef SizeEvent = {
	var sender : Size;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Transformation extends Observable {
	var options : TransformationOptions;
	function clone():kendo.geometry.Transformation;
	function equals(other:kendo.geometry.Transformation):Bool;
	function matrix():kendo.geometry.Matrix;
	function multiply(transformation:kendo.geometry.Transformation):kendo.geometry.Transformation;
	@:overload(function(angle:Float, center:kendo.geometry.Point):kendo.geometry.Transformation { })
	function rotate(angle:Float, center:Dynamic):kendo.geometry.Transformation;
	function scale(scaleX:Float, scaleY:Float):kendo.geometry.Transformation;
	function translate(x:Float, y:Float):kendo.geometry.Transformation;
}
typedef TransformationOptions = {
	@:optional
	var name : String;
};
typedef TransformationEvent = {
	var sender : Transformation;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
