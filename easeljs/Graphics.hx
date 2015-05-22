extern class Arc {
	function new(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Float):Void;
	var anticlockwise : Float;
	var endAngle : Float;
	var radius : Float;
	var startAngle : Float;
	var x : Float;
	var y : Float;
}
extern class ArcTo {
	function new(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;
	var x1 : Float;
	var y1 : Float;
	var x2 : Float;
	var y2 : Float;
	var radius : Float;
}
extern class BeginPath {

}
extern class BezierCurveTo {
	function new(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;
	var cp1x : Float;
	var cp1y : Float;
	var cp2x : Float;
	var cp2y : Float;
	var x : Float;
	var y : Float;
}
extern class Circle {
	function new(x:Float, y:Float, radius:Float):Void;
	var x : Float;
	var y : Float;
	var radius : Float;
}
extern class ClosePath {

}
extern class Fill {
	function new(style:Dynamic, ?matrix:Matrix2D):Void;
	var style : Dynamic;
	var matrix : Matrix2D;
	function bitmap(image:HTMLImageElement, ?repetition:String):Fill;
	function linearGradient(colors:Array<Float>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Fill;
	function radialGradient(colors:Array<Float>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Fill;
}
extern class LineTo {
	function new(x:Float, y:Float):Void;
	var x : Float;
	var y : Float;
}
extern class MoveTo {
	function new(x:Float, y:Float):Void;
	var x : Float;
	var y : Float;
}
extern class PolyStar {
	function new(x:Float, y:Float, radius:Float, sides:Float, pointSize:Float, angle:Float):Void;
	var angle : Float;
	var pointSize : Float;
	var radius : Float;
	var sides : Float;
	var x : Float;
	var y : Float;
}
extern class QuadraticCurveTo {
	function new(cpx:Float, cpy:Float, x:Float, y:Float):Void;
	var cpx : Float;
	var cpy : Float;
	var x : Float;
	var y : Float;
}
extern class Rect {
	function new(x:Float, y:Float, w:Float, h:Float):Void;
	var x : Float;
	var y : Float;
	var w : Float;
	var h : Float;
}
extern class RoundRect {
	function new(x:Float, y:Float, w:Float, h:Float, radiusTL:Float, radiusTR:Float, radiusBR:Float, radiusBL:Float):Void;
	var x : Float;
	var y : Float;
	var w : Float;
	var h : Float;
	var radiusTL : Float;
	var radiusTR : Float;
	var radiusBR : Float;
	var radiusBL : Float;
}
extern class Stroke {
	function new(style:Dynamic, ignoreScale:Bool):Void;
	var style : Dynamic;
	var ignoreScale : Bool;
	function bitmap(image:HTMLImageElement, ?repetition:String):Stroke;
	function linearGradient(colors:Array<Float>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Stroke;
	function radialGradient(colors:Array<Float>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Stroke;
}
extern class StrokeStyle {
	function new(width:Float, caps:String, joints:Float, miterLimit:Float):Void;
	var caps : String;
	var joints : String;
	var miterLimit : Float;
	var width : Float;
}
extern class Matrix2D {
	function new(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float):Void;
	var a : Float;
	var b : Float;
	var c : Float;
	var d : Float;
	static var DEG_TO_RAD : Float;
	@:overload(function():Matrix2D { })
	static var identity : Matrix2D;
	var tx : Float;
	var ty : Float;
	function append(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix2D;
	function appendMatrix(matrix:Matrix2D):Matrix2D;
	function appendTransform(x:Float, y:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float, ?regX:Float, ?regY:Float):Matrix2D;
	function clone():Matrix2D;
	function copy(matrix:Matrix2D):Matrix2D;
	@:overload(function(target:Dynamic):Matrix2D { })
	function decompose():{ var x : Float; var y : Float; var scaleX : Float; var scaleY : Float; var rotation : Float; var skewX : Float; var skewY : Float; };
	function equals(matrix:Matrix2D):Bool;
	function invert():Matrix2D;
	function isIdentity():Bool;
	function prepend(a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Matrix2D;
	function prependMatrix(matrix:Matrix2D):Matrix2D;
	function prependTransform(x:Float, y:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float, ?regX:Float, ?regY:Float):Matrix2D;
	function rotate(angle:Float):Matrix2D;
	function scale(x:Float, y:Float):Matrix2D;
	function setValues(?a:Float, ?b:Float, ?c:Float, ?d:Float, ?tx:Float, ?ty:Float):Matrix2D;
	function skew(skewX:Float, skewY:Float):Matrix2D;
	function toString():String;
	function transformPoint(x:Float, y:Float, ?pt:haxe.extern.EitherType<Point, Dynamic>):Point;
	function translate(x:Float, y:Float):Matrix2D;
}
extern class MouseEvent extends Event {
	function new(type:String, bubbles:Bool, cancelable:Bool, stageX:Float, stageY:Float, nativeEvent:NativeMouseEvent, pointerID:Float, primary:Bool, rawX:Float, rawY:Float):Void;
	var isTouch : Bool;
	var localX : Float;
	var localY : Float;
	var nativeEvent : NativeMouseEvent;
	var pointerID : Float;
	var primary : Bool;
	var rawX : Float;
	var rawY : Float;
	var stageX : Float;
	var stageY : Float;
	function clone():MouseEvent;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Dynamic { })
	function addEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):haxe.Constraints.Function;
	function dispatchEvent(eventObj:haxe.extern.EitherType<Dynamic, haxe.extern.EitherType<String, Event>>, ?target:Dynamic):Bool;
	function hasEventListener(type:String):Bool;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	function off(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	function on(type:String, listener:Dynamic -> Bool, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function;
	function removeAllEventListeners(?type:String):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	function removeEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	function toString():String;
	function willTrigger(type:String):Bool;
}
extern class MovieClip extends Container {
	function new(?mode:String, ?startPosition:Float, ?loop:Bool, ?labels:Dynamic):Void;
	var actionsEnabled : Bool;
	var autoReset : Bool;
	static var buildDate : String;
	var currentFrame : Float;
	var currentLabel : String;
	var frameBounds : Array<Rectangle>;
	var framerate : Float;
	static var INDEPENDENT : String;
	var labels : Array<Dynamic>;
	var loop : Bool;
	var mode : String;
	var paused : Bool;
	static var SINGLE_FRAME : String;
	var startPosition : Float;
	static var SYNCHED : String;
	var timeline : Timeline;
	static var version : String;
	function advance(?time:Float):Void;
	function clone():MovieClip;
	function getCurrentLabel():String;
	function getLabels():Array<Dynamic>;
	function gotoAndPlay(positionOrLabel:haxe.extern.EitherType<String, Float>):Void;
	function gotoAndStop(positionOrLabel:haxe.extern.EitherType<String, Float>):Void;
	function play():Void;
	function stop():Void;
}
extern class MovieClipPlugin {
	function tween(tween:Tween, prop:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Bool>>, startValues:Array<Dynamic>, endValues:Array<Dynamic>, ratio:Float, wait:Dynamic, end:Dynamic):Void;
}
extern class Point {
	function new(?x:Float, ?y:Float):Void;
	var x : Float;
	var y : Float;
	function clone():Point;
	function copy(point:Point):Point;
	function setValues(?x:Float, ?y:Float):Point;
	function toString():String;
}
extern class Rectangle {
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
	function clone():Rectangle;
	function contains(x:Float, y:Float, ?width:Float, ?height:Float):Bool;
	function copy(rectangle:Rectangle):Rectangle;
	function extend(x:Float, y:Float, ?width:Float, ?height:Float):Rectangle;
	function intersection(rect:Rectangle):Rectangle;
	function intersects(rect:Rectangle):Bool;
	function isEmpty():Bool;
	function setValues(?x:Float, ?y:Float, ?width:Float, ?height:Float):Rectangle;
	function toString():String;
	function union(rect:Rectangle):Rectangle;
}
extern class Shadow {
	function new(color:String, offsetX:Float, offsetY:Float, blur:Float):Void;
	var blur : Float;
	var color : String;
	static var identity : Shadow;
	var offsetX : Float;
	var offsetY : Float;
	function clone():Shadow;
	function toString():String;
}
extern class Shape extends DisplayObject {
	function new(?graphics:Graphics):Void;
	var graphics : Graphics;
	function clone(?recursive:Bool):Shape;
	function set(props:Dynamic):Shape;
	function setTransform(?x:Float, ?y:Float, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?skewX:Float, ?skewY:Float, ?regX:Float, ?regY:Float):Shape;
}
extern class Sprite extends DisplayObject {
	function new(spriteSheet:SpriteSheet, ?frameOrAnimation:haxe.extern.EitherType<String, Float>):Void;
	var currentAnimation : String;
	var currentAnimationFrame : Float;
	var currentFrame : Float;
	var framerate : Float;
	var offset : Float;
	var paused : Bool;
	var spriteSheet : SpriteSheet;
	function advance(?time:Float):Void;
	function clone():Sprite;
	function getBounds():Rectangle;
	function gotoAndPlay(frameOrAnimation:haxe.extern.EitherType<String, Float>):Void;
	function gotoAndStop(frameOrAnimation:haxe.extern.EitherType<String, Float>):Void;
	function play():Void;
	function set(props:Dynamic):Sprite;
	function setTransform(?x:Float, ?y:Float, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?skewX:Float, ?skewY:Float, ?regX:Float, ?regY:Float):Sprite;
	function stop():Void;
}
extern class SpriteContainer extends Container {
	function new(?spriteSheet:SpriteSheet):Void;
	var spriteSheet : SpriteSheet;
}
typedef SpriteSheetAnimation = {
	var frames : Array<Float>;
	var speed : Float;
	var name : String;
	var next : String;
};
typedef SpriteSheetFrame = {
	var image : HTMLImageElement;
	var rect : Rectangle;
};
extern class SpriteSheet extends EventDispatcher {
	function new(data:Dynamic):Void;
	var animations : Array<String>;
	var complete : Bool;
	var framerate : Float;
	function clone():SpriteSheet;
	function getAnimation(name:String):SpriteSheetAnimation;
	function getAnimations():Array<String>;
	function getFrame(frameIndex:Float):SpriteSheetFrame;
	function getFrameBounds(frameIndex:Float, ?rectangle:Rectangle):Rectangle;
	function getNumFrames(animation:String):Float;
}
extern class SpriteSheetBuilder extends EventDispatcher {
	function new():Void;
	var maxHeight : Float;
	var maxWidth : Float;
	var padding : Float;
	var progress : Float;
	var scale : Float;
	var spriteSheet : SpriteSheet;
	var timeSlice : Float;
	function addAnimation(name:String, frames:Array<Float>, ?next:String, ?frequency:Float):Void;
	function addFrame(source:DisplayObject, ?sourceRect:Rectangle, ?scale:Float, ?setupFunction:Void -> Dynamic, ?setupData:Dynamic):Float;
	function addMovieClip(source:MovieClip, ?sourceRect:Rectangle, ?scale:Float, ?setupFunction:Void -> Dynamic, ?setupData:Dynamic, ?labelFunction:Void -> Dynamic):Void;
	function build():SpriteSheet;
	function buildAsync(?timeSlice:Float):Void;
	function clone():Void;
	function stopAsync():Void;
}
extern class SpriteSheetUtils {
	static function addFlippedFrames(spriteSheet:SpriteSheet, ?horizontal:Bool, ?vertical:Bool, ?both:Bool):Void;
	static function extractFrame(spriteSheet:SpriteSheet, frameOrAnimation:haxe.extern.EitherType<Float, String>):HTMLImageElement;
	static function mergeAlpha(rgbImage:HTMLImageElement, alphaImage:HTMLImageElement, ?canvas:HTMLCanvasElement):HTMLCanvasElement;
}
extern class SpriteStage extends Stage {
	function new(canvas:haxe.extern.EitherType<HTMLCanvasElement, String>, ?preserveDrawingBuffer:Bool, ?antialias:Bool):Void;
	static var INDICES_PER_BOX : Float;
	var isWebGL : Bool;
	static var MAX_BOXES_POINTS_INCREMENT : Float;
	static var MAX_INDEX_SIZE : Float;
	static var NUM_VERTEX_PROPERTIES : Float;
	static var NUM_VERTEX_PROPERTIES_PER_BOX : Float;
	static var POINTS_PER_BOX : Float;
	function clearImageTexture(image:Dynamic):Void;
	function updateViewport(width:Float, height:Float):Void;
}
extern class Stage extends Container {
	function new(canvas:haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<String, Dynamic>>):Void;
	var autoClear : Bool;
	var canvas : haxe.extern.EitherType<HTMLCanvasElement, Dynamic>;
	var drawRect : Rectangle;
	var handleEvent : haxe.Constraints.Function;
	var mouseInBounds : Bool;
	var mouseMoveOutside : Bool;
	var mouseX : Float;
	var mouseY : Float;
	var nextStage : Stage;
	var preventSelection : Bool;
	var snapToPixelEnabled : Bool;
	var tickOnUpdate : Bool;
	function clear():Void;
	function clone():Stage;
	function enableDOMEvents(?enable:Bool):Void;
	function enableMouseOver(?frequency:Float):Void;
	function tick(?props:Dynamic):Void;
	function toDataURL(backgroundColor:String, mimeType:String):String;
	function update(arg:haxe.extern.Rest<Dynamic>):Void;
}
extern class Text extends DisplayObject {
	function new(?text:String, ?font:String, ?color:String):Void;
	var color : String;
	var font : String;
	var lineHeight : Float;
	var lineWidth : Float;
	var maxWidth : Float;
	var outline : Float;
	var text : String;
	var textAlign : String;
	var textBaseline : String;
	function clone():Text;
	function getMeasuredHeight():Float;
	function getMeasuredLineHeight():Float;
	function getMeasuredWidth():Float;
	function getMetrics():Dynamic;
	function set(props:Dynamic):Text;
	function setTransform(?x:Float, ?y:Float, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?skewX:Float, ?skewY:Float, ?regX:Float, ?regY:Float):Text;
}
extern class Ticker {
	static var framerate : Float;
	static var interval : Float;
	static var maxDelta : Float;
	static var paused : Float;
	static var RAF : String;
	static var RAF_SYNCHED : String;
	static var TIMEOUT : String;
	static var timingMode : String;
	static var useRAF : Bool;
	static function getEventTime(?runTime:Bool):Float;
	static function getFPS():Float;
	static function getInterval():Float;
	static function getMeasuredFPS(?ticks:Float):Float;
	static function getMeasuredTickTime(?ticks:Float):Float;
	static function getPaused():Bool;
	static function getTicks(?pauseable:Bool):Float;
	static function getTime(?runTime:Bool):Float;
	static function init():Void;
	static function reset():Void;
	static function setFPS(value:Float):Void;
	static function setInterval(interval:Float):Void;
	static function setPaused(value:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Dynamic { })
	static function addEventListener(type:String, listener:Stage, ?useCapture:Bool):Stage;
	static function dispatchEvent(eventObj:haxe.extern.EitherType<Dynamic, haxe.extern.EitherType<String, Event>>, ?target:Dynamic):Bool;
	static function hasEventListener(type:String):Bool;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	static function off(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	static function on(type:String, listener:Dynamic -> Bool, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function;
	static function removeAllEventListeners(?type:String):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	static function removeEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	static function toString():String;
	static function willTrigger(type:String):Bool;
}
extern class TickerEvent {
	var target : Dynamic;
	var type : String;
	var paused : Bool;
	var delta : Float;
	var time : Float;
	var runTime : Float;
}
extern class Touch {
	static function disable(stage:Stage):Void;
	static function enable(stage:Stage, ?singleTouch:Bool, ?allowDefault:Bool):Bool;
	static function isSupported():Bool;
}
extern class UID {
	static function get():Float;
}
