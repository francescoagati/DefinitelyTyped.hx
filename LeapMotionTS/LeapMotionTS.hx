extern class EventDispatcher {
	var _listeners : Dynamic;
	function new():Void;
	function hasEventListener(type:String, listener:haxe.Constraints.Function):Bool;
	function addEventListener(typeStr:String, listenerFunc:haxe.Constraints.Function):Void;
	function removeEventListener(typeStr:String, listenerFunc:haxe.Constraints.Function):Void;
	function dispatchEvent(evt:LeapEvent):Void;
}
typedef Listener = {
	function onConnect(controller:Controller):Void;
	function onDisconnect(controller:Controller):Void;
	function onExit(controller:Controller):Void;
	function onFrame(controller:Controller, frame:Frame):Void;
	function onInit(controller:Controller):Void;
};
extern class DefaultListener extends EventDispatcher {
	function new():Void;
	function onConnect(controller:Controller):Void;
	function onDisconnect(controller:Controller):Void;
	function onExit(controller:Controller):Void;
	function onFrame(controller:Controller, frame:Frame):Void;
	function onInit(controller:Controller):Void;
}
extern class LeapEvent {
	static var LEAPMOTION_INIT : String;
	static var LEAPMOTION_CONNECTED : String;
	static var LEAPMOTION_DISCONNECTED : String;
	static var LEAPMOTION_EXIT : String;
	static var LEAPMOTION_FRAME : String;
	var _type : Dynamic;
	var _target : Dynamic;
	var frame : Frame;
	function new(type:String, targetListener:Listener, ?frame:Frame):Void;
	function getTarget():Dynamic;
	function getType():String;
}
extern class LeapUtil {
	static var PI : Float;
	static var DEG_TO_RAD : Float;
	static var RAD_TO_DEG : Float;
	static var TWO_PI : Float;
	static var HALF_PI : Float;
	static var EPSILON : Float;
	function new():Void;
	static function toDegrees(radians:Float):Float;
	static function isNearZero(value:Float):Bool;
	static function vectorIsNearZero(inVector:Vector3):Bool;
	static function extractRotation(mtxTransform:Matrix):Matrix;
	static function rotationInverse(mtxRot:Matrix):Matrix;
	static function rigidInverse(mtxTransform:Matrix):Matrix;
	static function componentWiseMin(vLHS:Vector3, vRHS:Vector3):Vector3;
	static function componentWiseMax(vLHS:Vector3, vRHS:Vector3):Vector3;
	static function componentWiseScale(vLHS:Vector3, vRHS:Vector3):Vector3;
	static function componentWiseReciprocal(inVector:Vector3):Vector3;
	static function minComponent(inVector:Vector3):Float;
	static function maxComponent(inVector:Vector3):Float;
	static function heading(inVector:Vector3):Float;
	static function elevation(inVector:Vector3):Float;
	static function normalizeSpherical(vSpherical:Vector3):Vector3;
	static function cartesianToSpherical(vCartesian:Vector3):Vector3;
	static function sphericalToCartesian(vSpherical:Vector3):Vector3;
	static function clamp(inVal:Float, minVal:Float, maxVal:Float):Float;
	static function lerp(a:Float, b:Float, coefficient:Float):Float;
	static function lerpVector(vec1:Vector3, vec2:Vector3, coefficient:Float):Vector3;
}
extern class Controller extends EventDispatcher {
	var listener : Dynamic;
	var frameHistory : Array<Frame>;
	var latestFrame : Dynamic;
	var connection : WebSocket;
	var _isConnected : Bool;
	var _isGesturesEnabled : Bool;
	function new(?host:String):Void;
	static function getHandByID(frame:Dynamic, id:Dynamic):Dynamic;
	static function getPointableByID(frame:Dynamic, id:Dynamic):Dynamic;
	function frame(?history:Float):Frame;
	function setListener(listener:Listener):Void;
	function enableGesture(type:Float, ?enable:Bool):Void;
	function isGestureEnabled(type:Float):Bool;
	function isConnected():Bool;
}
extern class Pointable {
	var direction : Vector3;
	var frame : Frame;
	var hand : Hand;
	var id : Float;
	var length : Float;
	var width : Float;
	var tipPosition : Vector3;
	var tipVelocity : Vector3;
	var isFinger : Bool;
	var isTool : Bool;
	function new():Void;
	function isValid():Bool;
	function isEqualTo(other:Pointable):Bool;
	static function invalid():Pointable;
	function toString():String;
}
extern class Gesture {
	static var STATE_INVALID : Float;
	static var STATE_START : Float;
	static var STATE_UPDATE : Float;
	static var STATE_STOP : Float;
	static var TYPE_INVALID : Float;
	static var TYPE_SWIPE : Float;
	static var TYPE_CIRCLE : Float;
	static var TYPE_SCREEN_TAP : Float;
	static var TYPE_KEY_TAP : Float;
	var duration : Float;
	var durationSeconds : Float;
	var frame : Frame;
	var hands : Array<Hand>;
	var id : Float;
	var pointables : Array<Pointable>;
	var state : Float;
	var type : Float;
	function new():Void;
	function isEqualTo(other:Gesture):Bool;
	function isValid():Bool;
	static function invalid():Gesture;
	function toString():String;
}
extern class Finger extends Pointable {
	function new():Void;
	static function invalid():Finger;
}
extern class Tool extends Pointable {
	function new():Void;
	static function invalid():Tool;
}
extern class Hand {
	var direction : Vector3;
	var fingers : Array<Finger>;
	var frame : Frame;
	var id : Float;
	var palmNormal : Vector3;
	var palmPosition : Vector3;
	var palmVelocity : Vector3;
	var pointables : Array<Pointable>;
	var sphereCenter : Vector3;
	var sphereRadius : Float;
	var tools : Array<Tool>;
	var rotation : Matrix;
	var scaleFactorNumber : Float;
	var translationVector : Vector3;
	function new():Void;
	function isValid():Bool;
	function isEqualTo(other:Hand):Bool;
	function finger(id:Float):Finger;
	function tool(id:Float):Tool;
	function pointable(id:Float):Pointable;
	function rotationAxis(sinceFrame:Frame):Vector3;
	function rotationAngle(sinceFrame:Frame, ?axis:Vector3):Float;
	function rotationMatrix(sinceFrame:Frame):Matrix;
	function scaleFactor(sinceFrame:Frame):Float;
	function translation(sinceFrame:Frame):Vector3;
	static function invalid():Hand;
}
extern class Frame {
	var fingers : Array<Finger>;
	var hands : Array<Hand>;
	var pointables : Array<Pointable>;
	var _gestures : Array<Gesture>;
	var id : Float;
	var timestamp : Float;
	var tools : Array<Tool>;
	var rotation : Matrix;
	var scaleFactorNumber : Float;
	var translationVector : Vector3;
	var controller : Controller;
	function new():Void;
	function hand(id:Float):Hand;
	function finger(id:Float):Finger;
	function tool(id:Float):Tool;
	function pointable(id:Float):Pointable;
	function gesture(id:Float):Gesture;
	function gestures(?sinceFrame:Frame):Array<Gesture>;
	function rotationAxis(sinceFrame:Frame):Vector3;
	function rotationAngle(sinceFrame:Frame, ?axis:Vector3):Float;
	function rotationMatrix(sinceFrame:Frame):Matrix;
	function scaleFactor(sinceFrame:Frame):Float;
	function translation(sinceFrame:Frame):Vector3;
	function isEqualTo(other:Frame):Bool;
	function isValid():Bool;
	static function invalid():Frame;
}
extern class Matrix {
	var origin : Vector3;
	var xBasis : Vector3;
	var yBasis : Vector3;
	var zBasis : Vector3;
	function new(x:Vector3, y:Vector3, z:Vector3, ?_origin:Vector3):Void;
	function setRotation(_axis:Vector3, angleRadians:Float):Void;
	function transformPoint(inVector:Vector3):Vector3;
	function transformDirection(inVector:Vector3):Vector3;
	function rigidInverse():Matrix;
	function multiply(other:Matrix):Matrix;
	function multiplyAssign(other:Matrix):Matrix;
	function isEqualTo(other:Matrix):Bool;
	static function identity():Matrix;
	function toString():String;
}
extern class CircleGesture extends Gesture {
	static var classType : Float;
	var center : Vector3;
	var normal : Vector3;
	var pointable : Pointable;
	var progress : Float;
	var radius : Float;
	function new():Void;
}
extern class KeyTapGesture extends Gesture {
	static var classType : Float;
	var direction : Vector3;
	var pointable : Pointable;
	var position : Vector3;
	var progress : Float;
	function new():Void;
}
extern class ScreenTapGesture extends Gesture {
	static var classType : Float;
	var direction : Vector3;
	var pointable : Pointable;
	var position : Vector3;
	var progress : Float;
	function new():Void;
}
extern class SwipeGesture extends Gesture {
	static var classType : Float;
	var direction : Vector3;
	var pointable : Pointable;
	var position : Vector3;
	var speed : Float;
	var startPosition : Vector3;
	function new():Void;
}
extern class Vector3 {
	var x : Float;
	var y : Float;
	var z : Float;
	function new(x:Float, y:Float, z:Float):Void;
	function opposite():Vector3;
	function plus(other:Vector3):Vector3;
	function plusAssign(other:Vector3):Vector3;
	function minus(other:Vector3):Vector3;
	function minusAssign(other:Vector3):Vector3;
	function multiply(scalar:Float):Vector3;
	function multiplyAssign(scalar:Float):Vector3;
	function divide(scalar:Float):Vector3;
	function divideAssign(scalar:Float):Vector3;
	function isEqualTo(other:Vector3):Bool;
	function angleTo(other:Vector3):Float;
	function cross(other:Vector3):Vector3;
	function distanceTo(other:Vector3):Float;
	function dot(other:Vector3):Float;
	function isValid():Bool;
	static function invalid():Vector3;
	function magnitude():Float;
	function magnitudeSquared():Float;
	function normalized():Vector3;
	var pitch : Float;
	var yaw : Float;
	var roll : Float;
	static function zero():Vector3;
	static function xAxis():Vector3;
	static function yAxis():Vector3;
	static function zAxis():Vector3;
	static function left():Vector3;
	static function right():Vector3;
	static function down():Vector3;
	static function up():Vector3;
	static function forward():Vector3;
	static function backward():Vector3;
	function toString():String;
}
