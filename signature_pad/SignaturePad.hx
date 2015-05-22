extern class Point {
	var x : Float;
	var y : Float;
	var time : Float;
	function new(x:Float, y:Float, time:Float):Void;
	function velocityFrom(start:Point):Float;
	function distanceTo(start:Point):Float;
}
extern class CurveControl {
	var c1 : Point;
	var c2 : Point;
	function new(c1:Point, c2:Point):Void;
}
extern class Bezier {
	var startPoint : Point;
	var control1 : CurveControl;
	var control2 : CurveControl;
	var endPoint : Point;
	function new(startPoint:Point, control1:Point, control2:Point, endPoint:Point):Void;
	function length():Float;
	function _point(t:Float, start:Float, c1:Float, c2:Float, end:Float):Float;
}
typedef SignaturePadOptions = {
	@:optional
	var velocityFilterWeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var dotSize : haxe.Constraints.Function;
	@:optional
	var penColor : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var onEnd : haxe.Constraints.Function;
	@:optional
	var onBegin : haxe.Constraints.Function;
};
extern class SignaturePad {
	var points : Array<SignaturePad.Point>;
	var _lastVelocity : Float;
	var _lastWidth : Float;
	var _isEmpty : Bool;
	var _mouseButtonDown : Bool;
	var _ctx : CanvasRenderingContext2D;
	var _canvas : HTMLCanvasElement;
	var velocityFilterWeight : Float;
	var minWidth : Float;
	var maxWidth : Float;
	var dotSize : haxe.Constraints.Function;
	var penColor : String;
	var backgroundColor : String;
	var onEnd : haxe.Constraints.Function;
	var onBegin : haxe.Constraints.Function;
	function new(canvas:Element, ?options:SignaturePad.SignaturePadOptions):Void;
	function clear():Void;
	function isEmpty():Bool;
	function fromDataURL(dataUrl:String):Void;
	function toDataURL():String;
	function _strokeBegin(event:Event):Void;
	function _strokeUpdate(event:Event):Void;
	function _strokeDraw(point:SignaturePad.Point):Void;
	function _strokeEnd(event:Event):Void;
	function _handleMouseEvents():Void;
	function _handleTouchEvents():Void;
	function _reset():Void;
	function _createPoint(event:Event):SignaturePad.Point;
	function _addPoint(point:SignaturePad.Point):Void;
	function _calculateCurveControlPoints(point1:SignaturePad.Point, point2:SignaturePad.Point, point3:SignaturePad.Point):Void;
	function _addCurve(curve:SignaturePad.Bezier):Void;
	function _drawPoint(x:Float, y:Float, size:Float):Void;
	function _drawCurve(curve:SignaturePad.Bezier, startWidth:Float, endWidth:Float):Void;
	function _strokeWidth(velocity:Float):Void;
}
