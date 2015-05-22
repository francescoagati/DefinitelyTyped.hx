extern class __MoveableCtorArgs {
	function new():Void;
	var delay : Float;
	function mover():Void;
}
extern class Circle {
	function new(rawNode:HTMLElement):Void;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Ellipse {
	function new(rawNode:HTMLElement):Void;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Line {
	function new(rawNode:HTMLElement):Void;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Group {
	function new():Void;
	var textDir : String;
	function add(shape:dojox.gfx.shape.Shape):Dynamic;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function clear(destroy:Bool):haxe.Constraints.Function;
	function closeBatch():haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function createCircle(circle:Dynamic):Dynamic;
	function createEllipse(ellipse:Dynamic):Dynamic;
	function createGroup():Dynamic;
	function createImage(image:Dynamic):Dynamic;
	function createLine(line:Dynamic):Dynamic;
	function createObject(shapeType:haxe.Constraints.Function, rawShape:Dynamic):Dynamic;
	function createPath(path:Dynamic):Dynamic;
	function createPolyline(points:Dynamic):Dynamic;
	function createRect(rect:Dynamic):Dynamic;
	function createShape(shape:Dynamic):Dynamic;
	function createText(text:Dynamic):Dynamic;
	function createTextPath(text:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTextDir():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function openBatch():haxe.Constraints.Function;
	function remove(shape:dojox.gfx.shape.Shape, silently:Bool):haxe.Constraints.Function;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTextDir(newTextDir:String):Void;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Moveable {
	function new(shape:dojox.gfx.shape.Shape, params:Dynamic):Void;
	function destroy():Void;
	function onFirstMove(mover:dojox.gfx.Mover):Void;
	function onMouseDown(e:Event):Void;
	function onMouseMove(e:Event):Void;
	function onMouseUp(e:Event):Void;
	function onMove(mover:dojox.gfx.Mover, shift:Dynamic):Void;
	function onMoved(mover:dojox.gfx.Mover, shift:Dynamic):Void;
	function onMoveStart(mover:dojox.gfx.Mover):Void;
	function onMoveStop(mover:dojox.gfx.Mover):Void;
	function onMoving(mover:dojox.gfx.Mover, shift:Dynamic):Void;
}
extern class Path {
	function new():Void;
	function Path():Void;
	function TextPath():Void;
}
extern class Mover {
	function new(shape:dojox.gfx.shape.Shape, e:Event, ?host:Dynamic):Void;
	function destroy():Void;
	function onFirstMove():Void;
	function onMouseMove(e:Event):Void;
}
extern class Point {
	function new():Void;
}
extern class Polyline {
	function new(rawNode:HTMLElement):Void;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(points:Array<Dynamic>, closed:Bool):haxe.Constraints.Function { })
	function setShape(points:Dynamic, closed:Bool):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Rectangle {
	function new():Void;
}
extern class Rect {
	function new(rawNode:HTMLElement):Void;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class Surface {
	function new():Void;
	var isLoaded : Bool;
	var textDir : String;
	function add(shape:dojox.gfx.shape.Shape):Dynamic;
	function clear(destroy:Bool):haxe.Constraints.Function;
	function closeBatch():haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function createCircle(circle:Dynamic):Dynamic;
	function createEllipse(ellipse:Dynamic):Dynamic;
	function createGroup():Dynamic;
	function createImage(image:Dynamic):Dynamic;
	function createLine(line:Dynamic):Dynamic;
	function createObject(shapeType:haxe.Constraints.Function, rawShape:Dynamic):Dynamic;
	function createPath(path:Dynamic):Dynamic;
	function createPolyline(points:Dynamic):Dynamic;
	function createRect(rect:Dynamic):Dynamic;
	function createShape(shape:Dynamic):Dynamic;
	function createText(text:Dynamic):Dynamic;
	function createTextPath(text:Dynamic):Dynamic;
	function createViewport():Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function getBoundingBox():Dynamic;
	function getDimensions():Dynamic;
	function getEventSource():Dynamic;
	function getTextDir():Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function openBatch():haxe.Constraints.Function;
	function remove(shape:dojox.gfx.shape.Shape, silently:Bool):haxe.Constraints.Function;
	function setDimensions(width:String, height:String):haxe.Constraints.Function;
	function setTextDir(newTextDir:String):Void;
	@:overload(function(context:Dynamic, method:haxe.Constraints.Function):Void { })
	@:overload(function(context:Dynamic, method:String):Void { })
	@:overload(function(context:Dynamic, method:String):Void { })
	function whenLoaded(context:Dynamic, method:haxe.Constraints.Function):Void;
	function onLoad(surface:dojox.gfx.shape.Surface):Void;
}
extern class Text {
	function new(rawNode:HTMLElement):Void;
	var textDir : String;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function bidiPreprocess(newShape:Dynamic):Dynamic;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function formatText(text:String, textDir:String):Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getFont():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setFont(newFont:Dynamic):haxe.Constraints.Function;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
extern class TextPath {
	function new(rawNode:HTMLElement):Void;
	var textDir : String;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function arcTo():haxe.Constraints.Function;
	function bidiPreprocess(newText:Dynamic):Dynamic;
	function closePath():haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function curveTo():haxe.Constraints.Function;
	function destroy():Void;
	function disconnect(token:Dynamic):Dynamic;
	function formatText(text:String, textDir:String):Dynamic;
	function getAbsoluteMode():Dynamic;
	function getBoundingBox():Dynamic;
	function getClip():Dynamic;
	function getEventSource():Dynamic;
	function getFill():Dynamic;
	function getFont():Dynamic;
	function getLastPosition():Dynamic;
	function getNode():Dynamic;
	function getParent():Dynamic;
	function getShape():Dynamic;
	function getStroke():Dynamic;
	function getText():Dynamic;
	function getTransform():Dynamic;
	function getTransformedBoundingBox():Dynamic;
	function hLineTo():haxe.Constraints.Function;
	function lineTo():haxe.Constraints.Function;
	function moveTo():haxe.Constraints.Function;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function qCurveTo():haxe.Constraints.Function;
	function qSmoothCurveTo():haxe.Constraints.Function;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function setAbsoluteMode(mode:Bool):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setFont(newFont:Dynamic):haxe.Constraints.Function;
	function setShape(newShape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setText(newText:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
	function smoothCurveTo():haxe.Constraints.Function;
	function vLineTo():haxe.Constraints.Function;
}
extern class VectorFont {
	function new(url:String):Void;
	function draw(group:dojox.gfx.shape.Container, textArgs:dojox.gfx.Text, fontArgs:dojox.gfx.Font, fillArgs:dojox.gfx.Fill, strokeArgs:dojox.gfx.Stroke):Dynamic;
	function getBaseline(scale:Float):Float;
	function getCenterline(scale:Float):Float;
	function getLineHeight(scale:Float):Float;
	function getWidth(text:String, scale:Float):Float;
	function initialized():Bool;
	@:overload(function(url:dojo._base.Url):haxe.Constraints.Function { })
	function load(url:String):haxe.Constraints.Function;
	function onLoad(font:dojox.gfx.VectorText):Void;
	function onLoadBegin(url:String):Void;
}
extern class VectorText {
	function new(url:String):Void;
	function draw(group:dojox.gfx.shape.Container, textArgs:dojox.gfx.Text, fontArgs:dojox.gfx.Font, fillArgs:dojox.gfx.Fill, strokeArgs:dojox.gfx.Stroke):Dynamic;
	function getBaseline(scale:Float):Float;
	function getCenterline(scale:Float):Float;
	function getLineHeight(scale:Float):Float;
	function getWidth(text:String, scale:Float):Float;
	function initialized():Bool;
	@:overload(function(url:dojo._base.Url):haxe.Constraints.Function { })
	function load(url:String):haxe.Constraints.Function;
	function onLoad(font:dojox.gfx.VectorText):Void;
	function onLoadBegin(url:String):Void;
}
typedef _base = {
	var arc : Dynamic;
	var bezierutils : Dynamic;
	var canvas : Dynamic;
	var canvas_attach : Dynamic;
	var canvasext : Dynamic;
	var canvasWithEvents : Dynamic;
	var cm_in_pt : Float;
	var defaultCircle : Dynamic;
	var defaultEllipse : Dynamic;
	var defaultFont : Dynamic;
	var defaultImage : Dynamic;
	var defaultLine : Dynamic;
	var defaultLinearGradient : Dynamic;
	var defaultPath : Dynamic;
	var defaultPattern : Dynamic;
	var defaultPolyline : Dynamic;
	var defaultRadialGradient : Dynamic;
	var defaultRect : Dynamic;
	var defaultStroke : Dynamic;
	var defaultText : Dynamic;
	var defaultTextPath : Dynamic;
	var defaultVectorFont : Dynamic;
	var defaultVectorText : Dynamic;
	var Fill : Dynamic;
	var Font : Dynamic;
	var fx : Dynamic;
	var getDefault : Dynamic;
	var gradient : Dynamic;
	var gradutils : Dynamic;
	var LinearGradient : Dynamic;
	var matrix : Dynamic;
	var mm_in_pt : Float;
	var move : Dynamic;
	var path : Dynamic;
	var pathSvgRegExp : js.RegExp;
	var pathVmlRegExp : js.RegExp;
	var Pattern : Dynamic;
	var RadialGradient : Dynamic;
	var renderer : String;
	var shape : Dynamic;
	var silverlight : Dynamic;
	var silverlight_attach : Dynamic;
	var Stroke : Dynamic;
	var svg : Dynamic;
	var svgext : Dynamic;
	var utils : Dynamic;
	var vectorFontFitting : Dynamic;
	var VectorText : Dynamic;
	var vml : Dynamic;
	function Circle():Void;
	@:overload(function(parentNode:HTMLElement, width:Float, height:String):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:String, height:Float):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:Float, height:Float):dojox.gfx.Surface { })
	function createSurface(parentNode:HTMLElement, width:String, height:String):dojox.gfx.Surface;
	function decompose(matrix:dojox.gfx.matrix.Matrix2D):Void;
	function Ellipse():Void;
	function equalSources(a:Dynamic, b:Dynamic):Void;
	function formatNumber(x:Float, addSpace:Bool):String;
	function getVectorFont(url:String):Dynamic;
	function Group():Void;
	function Line():Void;
	function makeFontString(font:Dynamic):String;
	function makeParameters(defaults:Dynamic, update:Dynamic):Dynamic;
	function Matrix2D(arg:Dynamic):Void;
	function Moveable():Void;
	function Mover():Void;
	@:overload(function(color:Array<Dynamic>):Dynamic { })
	@:overload(function(color:String):Dynamic { })
	@:overload(function(color:Dynamic):Dynamic { })
	function normalizeColor(color:dojo._base.Color):Dynamic;
	function normalizedLength(len:String):Float;
	function normalizeParameters(existed:Dynamic, update:Dynamic):Dynamic;
	function Path():Void;
	function Point():Void;
	function Polyline():Void;
	function pt2px(len:Float):Float;
	function px2pt(len:Float):Float;
	function px_in_pt():Float;
	function Rect():Void;
	function Rectangle():Void;
	function splitFontString(str:String):Dynamic;
	function Surface():Void;
	@:overload(function(renderer:Dynamic):Void { })
	function switchTo(renderer:String):Void;
	function Text():Void;
	function TextPath():Void;
	function VectorFont():Void;
};
typedef _svgFontCache = { };
typedef _gfxBidiSupport = {
	var arc : Dynamic;
	var bezierutils : Dynamic;
	var canvas : Dynamic;
	var canvas_attach : Dynamic;
	var canvasext : Dynamic;
	var canvasWithEvents : Dynamic;
	var cm_in_pt : Float;
	var defaultCircle : Dynamic;
	var defaultEllipse : Dynamic;
	var defaultFont : Dynamic;
	var defaultImage : Dynamic;
	var defaultLine : Dynamic;
	var defaultLinearGradient : Dynamic;
	var defaultPath : Dynamic;
	var defaultPattern : Dynamic;
	var defaultPolyline : Dynamic;
	var defaultRadialGradient : Dynamic;
	var defaultRect : Dynamic;
	var defaultStroke : Dynamic;
	var defaultText : Dynamic;
	var defaultTextPath : Dynamic;
	var defaultVectorFont : Dynamic;
	var defaultVectorText : Dynamic;
	var Fill : Dynamic;
	var Font : Dynamic;
	var fx : Dynamic;
	var getDefault : Dynamic;
	var gradient : Dynamic;
	var gradutils : Dynamic;
	var LinearGradient : Dynamic;
	var matrix : Dynamic;
	var mm_in_pt : Float;
	var move : Dynamic;
	var path : Dynamic;
	var pathSvgRegExp : js.RegExp;
	var pathVmlRegExp : js.RegExp;
	var Pattern : Dynamic;
	var RadialGradient : Dynamic;
	var renderer : String;
	var shape : Dynamic;
	var silverlight : Dynamic;
	var silverlight_attach : Dynamic;
	var Stroke : Dynamic;
	var svg : Dynamic;
	var svgext : Dynamic;
	var utils : Dynamic;
	var vectorFontFitting : Dynamic;
	var VectorText : Dynamic;
	var vml : Dynamic;
	function Circle():Void;
	@:overload(function(parentNode:HTMLElement, width:Float, height:String):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:String, height:Float):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:Float, height:Float):dojox.gfx.Surface { })
	function createSurface(parentNode:HTMLElement, width:String, height:String):dojox.gfx.Surface;
	function decompose(matrix:dojox.gfx.matrix.Matrix2D):Void;
	function Ellipse():Void;
	function equalSources(a:Dynamic, b:Dynamic):Void;
	function formatNumber(x:Float, addSpace:Bool):String;
	function getVectorFont(url:String):Dynamic;
	function Group():Void;
	function Line():Void;
	function makeFontString(font:Dynamic):String;
	function makeParameters(defaults:Dynamic, update:Dynamic):Dynamic;
	function Matrix2D(arg:Dynamic):Void;
	function Moveable():Void;
	function Mover():Void;
	@:overload(function(color:Array<Dynamic>):Dynamic { })
	@:overload(function(color:String):Dynamic { })
	@:overload(function(color:Dynamic):Dynamic { })
	function normalizeColor(color:dojo._base.Color):Dynamic;
	function normalizedLength(len:String):Float;
	function normalizeParameters(existed:Dynamic, update:Dynamic):Dynamic;
	function Path():Void;
	function Point():Void;
	function Polyline():Void;
	function pt2px(len:Float):Float;
	function px2pt(len:Float):Float;
	function px_in_pt():Float;
	function Rect():Void;
	function Rectangle():Void;
	function splitFontString(str:String):Dynamic;
	function Surface():Void;
	@:overload(function(renderer:Dynamic):Void { })
	function switchTo(renderer:String):Void;
	function Text():Void;
	function TextPath():Void;
	function VectorFont():Void;
};
typedef _vectorFontCache = { };
typedef Arc = {
	var curvePI4 : Dynamic;
	function arcAsBezier(last:Dynamic, rx:Float, ry:Float, xRotg:Float, large:Bool, sweep:Bool, x:Float, y:Float):Array<Dynamic>;
	function unitArcAsBezier(alpha:Float):Void;
};
typedef Bezierutils = {
	function computeLength(points:Array<Float>):Float;
	function distance(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic):Dynamic;
	function splitBezierAtT(points:Dynamic, t:Dynamic):Dynamic;
	function tAtLength(points:Array<Float>, length:Float):Float;
};
typedef Canvas = {
	function attachNode():Void;
	function attachSurface():Void;
	function Circle():Void;
	function createSurface(parentNode:HTMLElement, width:String, height:String):Dynamic;
	function Ellipse():Void;
	function Group():Void;
	function Image():Void;
	function Line():Void;
	function Path():Void;
	function Polyline():Void;
	function Rect():Void;
	function Shape():Void;
	function Surface():Void;
	function Text():Void;
	function TextPath():Void;
};
typedef Canvas_attach = {
	function attachNode():Void;
	function attachSurface():Void;
	function Circle():Void;
	function createSurface(parentNode:HTMLElement, width:String, height:String):Dynamic;
	function Ellipse():Void;
	function Group():Void;
	function Image():Void;
	function Line():Void;
	function Path():Void;
	function Polyline():Void;
	function Rect():Void;
	function Shape():Void;
	function Surface():Void;
	function Text():Void;
	function TextPath():Void;
};
typedef Canvasext = { };
typedef CanvasWithEvents = {
	function Circle():Void;
	function createSurface(parentNode:HTMLElement, width:String, height:String):Void;
	function Ellipse():Void;
	function Group():Void;
	function Image():Void;
	function Line():Void;
	function Path():Void;
	function Polyline():Void;
	function Rect():Void;
	function Shape():Void;
	function Surface():Void;
	function Text():Void;
	function TextPath():Void;
};
typedef DefaultCircle = {
	var cx : Float;
	var cy : Float;
	var r : Float;
	var type : String;
};
typedef DefaultEllipse = {
	var cx : Float;
	var cy : Float;
	var rx : Float;
	var ry : Float;
	var type : String;
};
typedef DefaultFont = {
	var family : String;
	var size : String;
	var style : String;
	var type : String;
	var variant : String;
	var weight : String;
};
typedef DefaultImage = {
	var height : Float;
	var src : String;
	var type : String;
	var width : Float;
	var x : Float;
	var y : Float;
};
typedef DefaultLine = {
	var type : String;
	var x1 : Float;
	var x2 : Float;
	var y1 : Float;
	var y2 : Float;
};
typedef DefaultPath = {
	var path : String;
	var type : String;
};
typedef DefaultLinearGradient = {
	var colors : Array<Dynamic>;
	var type : String;
	var x1 : Float;
	var x2 : Float;
	var y1 : Float;
	var y2 : Float;
};
typedef DefaultPattern = {
	var height : Float;
	var src : String;
	var type : String;
	var width : Float;
	var x : Float;
	var y : Float;
};
typedef DefaultPolyline = {
	var points : Array<Dynamic>;
	var type : String;
};
typedef DefaultRadialGradient = {
	var colors : Array<Dynamic>;
	var cx : Float;
	var cy : Float;
	var r : Float;
	var type : String;
};
typedef DefaultRect = {
	var height : Float;
	var r : Float;
	var type : String;
	var width : Float;
	var x : Float;
	var y : Float;
};
typedef DefaultText = {
	var align : String;
	var decoration : String;
	var kerning : Bool;
	var rotated : Bool;
	var text : String;
	var type : String;
	var x : Float;
	var y : Float;
};
typedef DefaultStroke = {
	var cap : String;
	var color : String;
	var join : Float;
	var style : String;
	var type : String;
	var width : Float;
};
typedef DefaultTextPath = {
	var align : String;
	var decoration : String;
	var kerning : Bool;
	var rotated : Bool;
	var text : String;
	var type : String;
};
typedef DefaultVectorFont = {
	var family : Dynamic;
	var size : String;
	var type : String;
};
typedef DefaultVectorText = {
	var align : String;
	var decoration : String;
	var fitting : Float;
	var height : Dynamic;
	var leading : Float;
	var text : String;
	var type : String;
	var width : Dynamic;
	var x : Float;
	var y : Float;
};
typedef Fill = {
	var color : String;
	var type : Dynamic;
};
typedef Font = {
	var family : String;
	var size : String;
	var style : String;
	var type : String;
	var variant : String;
	var weight : String;
};
typedef Fx = {
	function animateFill(args:Dynamic):Dynamic;
	function animateFont(args:Dynamic):Void;
	function animateStroke(args:Dynamic):Void;
	function animateTransform(args:Dynamic):Dynamic;
};
typedef Gradient = {
	@:overload(function(matrix:Dynamic, gradient:Dynamic, tl:Dynamic, rb:Dynamic, ttl:Dynamic, trb:Dynamic):Dynamic { })
	function project(matrix:dojox.gfx.matrix.Matrix2D, gradient:Dynamic, tl:Dynamic, rb:Dynamic, ttl:Dynamic, trb:Dynamic):Dynamic;
	function rescale(stops:Array<Dynamic>, from:Float, to:Float):Array<Dynamic>;
};
typedef Gradutils = {
	function getColor(fill:Dynamic, pt:Dynamic):Void;
	function reverse(fill:Dynamic):Void;
};
typedef LinearGradient = {
	var colors : Array<Dynamic>;
	var type : String;
	var x1 : Float;
	var x2 : Float;
	var y1 : Float;
	var y2 : Float;
};
typedef Move = { };
typedef Matrix = {
	var flipX : Dynamic;
	var flipXY : Dynamic;
	var flipY : Dynamic;
	var identity : Dynamic;
	function clone(matrix:dojox.gfx.matrix.Matrix2D):dojox.gfx.matrix.Matrix2D;
	function invert(matrix:dojox.gfx.matrix.Matrix2D):dojox.gfx.matrix.Matrix2D;
	function isIdentity(matrix:dojox.gfx.matrix.Matrix2D):Bool;
	function multiply(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
	@:overload(function(matrix:dojox.gfx.matrix.Matrix2D, a:dojox.gfx.Point, b:Float):dojox.gfx.Point { })
	function multiplyPoint(matrix:dojox.gfx.matrix.Matrix2D, a:Float, b:Float):dojox.gfx.Point;
	function multiplyRectangle(matrix:dojox.gfx.matrix.Matrix2D, rect:dojox.gfx.shape.Rect):dojox.gfx.Rectangle;
	function normalize(matrix:Dynamic):dojox.gfx.matrix.Matrix2D;
	@:overload(function(a:Float, b:Float):dojox.gfx.matrix.Matrix2D { })
	function project(a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(a:Float, b:Float):dojox.gfx.matrix.Matrix2D { })
	function reflect(a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D;
	function rotate(angle:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(angle:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function rotateAt(angle:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	function rotateg(degree:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(degree:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function rotategAt(degree:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function scale(a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(a:Float, b:Float, c:dojox.gfx.Point, d:Float):dojox.gfx.matrix.Matrix2D { })
	function scaleAt(a:Float, b:Float, c:Float, d:Float):dojox.gfx.matrix.Matrix2D;
	function skewX(angle:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(angle:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function skewXAt(angle:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	function skewXg(degree:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(degree:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function skewXgAt(degree:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	function skewY(angle:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(angle:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function skewYAt(angle:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	function skewYg(degree:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(degree:Float, a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function skewYgAt(degree:Float, a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
	@:overload(function(a:dojox.gfx.Point, b:Float):dojox.gfx.matrix.Matrix2D { })
	function translate(a:Float, b:Float):dojox.gfx.matrix.Matrix2D;
};
