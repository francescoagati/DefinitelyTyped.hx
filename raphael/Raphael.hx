typedef BoundingBox = {
	var x : Float;
	var y : Float;
	var x2 : Float;
	var y2 : Float;
	var width : Float;
	var height : Float;
};
typedef RaphaelAnimation = {
	function delay(delay:Float):RaphaelAnimation;
	function repeat(repeat:Float):RaphaelAnimation;
};
typedef RaphaelFont = { };
typedef RaphaelElement = {
	@:overload(function(animation:RaphaelAnimation):RaphaelElement { })
	function animate(params:{ }, ms:Float, ?easing:String, ?callback:haxe.Constraints.Function):RaphaelElement;
	@:overload(function(el:RaphaelElement, anim:RaphaelAnimation, animation:RaphaelAnimation):RaphaelElement { })
	function animateWith(el:RaphaelElement, anim:RaphaelAnimation, params:Dynamic, ms:Float, ?easing:String, ?callback:haxe.Constraints.Function):RaphaelElement;
	@:overload(function(attrName:String):Dynamic { })
	@:overload(function(attrNames:Array<String>):Array<Dynamic> { })
	@:overload(function(params:Dynamic):RaphaelElement { })
	function attr(attrName:String, value:Dynamic):RaphaelElement;
	function click(handler:haxe.Constraints.Function):RaphaelElement;
	function clone():RaphaelElement;
	@:overload(function(key:String, value:Dynamic):RaphaelElement { })
	function data(key:String):Dynamic;
	function dblclick(handler:haxe.Constraints.Function):RaphaelElement;
	function drag(onmove:Float -> Float -> Float -> Float -> DragEvent -> { }, onstart:Float -> Float -> DragEvent -> { }, onend:Dynamic -> { }, ?mcontext:Dynamic, ?scontext:Dynamic, ?econtext:Dynamic):RaphaelElement;
	function getBBox(?isWithoutTransform:Bool):BoundingBox;
	function glow(?glow:{ @:optional
	var width : Float; @:optional
	var fill : Bool; @:optional
	var opacity : Float; @:optional
	var offsetx : Float; @:optional
	var offsety : Float; @:optional
	var color : String; }):RaphaelSet;
	function hide():RaphaelElement;
	function hover(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function, ?icontext:Dynamic, ?ocontext:Dynamic):RaphaelElement;
	var id : String;
	function insertAfter():RaphaelElement;
	function insertBefore():RaphaelElement;
	function isPointInside(x:Float, y:Float):Bool;
	function isVisible():Bool;
	var matrix : RaphaelMatrix;
	function mousedown(handler:haxe.Constraints.Function):RaphaelElement;
	function mousemove(handler:haxe.Constraints.Function):RaphaelElement;
	function mouseout(handler:haxe.Constraints.Function):RaphaelElement;
	function mouseover(handler:haxe.Constraints.Function):RaphaelElement;
	function mouseup(handler:haxe.Constraints.Function):RaphaelElement;
	var next : RaphaelElement;
	var node : SVGElement;
	function onDragOver(f:haxe.Constraints.Function):RaphaelElement;
	var paper : RaphaelPaper;
	function pause(?anim:RaphaelAnimation):RaphaelElement;
	var prev : RaphaelElement;
	var raphael : RaphaelStatic;
	function remove():Void;
	function removeData(?key:String):RaphaelElement;
	function resume(?anim:RaphaelAnimation):RaphaelElement;
	@:overload(function(anim:RaphaelAnimation, value:Float):RaphaelElement { })
	function setTime(anim:RaphaelAnimation):Void;
	function show():RaphaelElement;
	@:overload(function(anim:RaphaelAnimation):Float { })
	@:overload(function(anim:RaphaelAnimation, value:Float):RaphaelElement { })
	function status():Array<{ var anim : RaphaelAnimation; var status : Float; }>;
	function stop(?anim:RaphaelAnimation):RaphaelElement;
	function toBack():RaphaelElement;
	function toFront():RaphaelElement;
	function touchcancel(handler:haxe.Constraints.Function):RaphaelElement;
	function touchend(handler:haxe.Constraints.Function):RaphaelElement;
	function touchmove(handler:haxe.Constraints.Function):RaphaelElement;
	function touchstart(handler:haxe.Constraints.Function):RaphaelElement;
	@:overload(function(tstr:String):RaphaelElement { })
	function transform():String;
	function unclick(handler:haxe.Constraints.Function):RaphaelElement;
	function undblclick(handler:haxe.Constraints.Function):RaphaelElement;
	function undrag():RaphaelElement;
	@:overload(function(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function):RaphaelElement { })
	function unhover():RaphaelElement;
	function unmousedown(handler:haxe.Constraints.Function):RaphaelElement;
	function unmousemove(handler:haxe.Constraints.Function):RaphaelElement;
	function unmouseout(handler:haxe.Constraints.Function):RaphaelElement;
	function unmouseover(handler:haxe.Constraints.Function):RaphaelElement;
	function unmouseup(handler:haxe.Constraints.Function):RaphaelElement;
	function untouchcancel(handler:haxe.Constraints.Function):RaphaelElement;
	function untouchend(handler:haxe.Constraints.Function):RaphaelElement;
	function untouchmove(handler:haxe.Constraints.Function):RaphaelElement;
	function untouchstart(handler:haxe.Constraints.Function):RaphaelElement;
};
typedef RaphaelPath = {
	>RaphaelElement,
	function getPointAtLength(length:Float):{ var x : Float; var y : Float; var alpha : Float; };
	function getSubpath(from:Float, to:Float):String;
	function getTotalLength():Float;
};
typedef RaphaelSet = {
	function clear():Void;
	function exclude(element:RaphaelElement):Bool;
	function forEach(callback:haxe.Constraints.Function, ?thisArg:Dynamic):RaphaelSet;
	function pop():RaphaelElement;
	function push(RaphaelElement:haxe.extern.Rest<Dynamic>):RaphaelSet;
	@:overload(function(index:Float, count:Float, insertion:haxe.extern.Rest<RaphaelElement>):RaphaelSet { })
	function splice(index:Float, count:Float):RaphaelSet;
	var length : Float;
	@:overload(function(animation:RaphaelAnimation):RaphaelSet { })
	function animate(params:{ }, ms:Float, ?easing:String, ?callback:haxe.Constraints.Function):RaphaelSet;
	@:overload(function(el:RaphaelElement, anim:RaphaelAnimation, animation:RaphaelAnimation):RaphaelSet { })
	function animateWith(el:RaphaelElement, anim:RaphaelAnimation, params:Dynamic, ms:Float, ?easing:String, ?callback:haxe.Constraints.Function):RaphaelSet;
	@:overload(function(params:{ }):RaphaelSet { })
	@:overload(function(attrName:String):Dynamic { })
	@:overload(function(attrNames:Array<String>):Array<Dynamic> { })
	function attr(attrName:String, value:Dynamic):RaphaelSet;
	function click(handler:haxe.Constraints.Function):RaphaelSet;
	function clone():RaphaelSet;
	@:overload(function(key:String, value:Dynamic):RaphaelSet { })
	function data(key:String):Dynamic;
	function dblclick(handler:haxe.Constraints.Function):RaphaelSet;
	function drag(onmove:Float -> Float -> Float -> Float -> DragEvent -> { }, onstart:Float -> Float -> DragEvent -> { }, onend:Dynamic -> { }, ?mcontext:Dynamic, ?scontext:Dynamic, ?econtext:Dynamic):RaphaelSet;
	function getBBox(?isWithoutTransform:Bool):BoundingBox;
	function glow(?glow:{ @:optional
	var width : Float; @:optional
	var fill : Bool; @:optional
	var opacity : Float; @:optional
	var offsetx : Float; @:optional
	var offsety : Float; @:optional
	var color : String; }):RaphaelSet;
	function hide():RaphaelSet;
	function hover(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function, ?icontext:Dynamic, ?ocontext:Dynamic):RaphaelSet;
	var id : String;
	function insertAfter():RaphaelSet;
	function insertBefore():RaphaelSet;
	function isPointInside(x:Float, y:Float):Bool;
	function isVisible():Bool;
	var matrix : RaphaelMatrix;
	function mousedown(handler:haxe.Constraints.Function):RaphaelSet;
	function mousemove(handler:haxe.Constraints.Function):RaphaelSet;
	function mouseout(handler:haxe.Constraints.Function):RaphaelSet;
	function mouseover(handler:haxe.Constraints.Function):RaphaelSet;
	function mouseup(handler:haxe.Constraints.Function):RaphaelSet;
	var next : RaphaelSet;
	function onDragOver(f:haxe.Constraints.Function):RaphaelSet;
	var paper : RaphaelPaper;
	function pause(?anim:RaphaelAnimation):RaphaelSet;
	var prev : RaphaelSet;
	var raphael : RaphaelStatic;
	function remove():Void;
	function removeData(?key:String):RaphaelSet;
	function resume(?anim:RaphaelAnimation):RaphaelSet;
	@:overload(function(anim:RaphaelAnimation, value:Float):RaphaelSet { })
	function setTime(anim:RaphaelAnimation):Void;
	function show():RaphaelSet;
	@:overload(function(anim:RaphaelAnimation):Float { })
	@:overload(function(anim:RaphaelAnimation, value:Float):RaphaelSet { })
	function status():Array<{ var anim : RaphaelAnimation; var status : Float; }>;
	function stop(?anim:RaphaelAnimation):RaphaelSet;
	function toBack():RaphaelSet;
	function toFront():RaphaelSet;
	function touchcancel(handler:haxe.Constraints.Function):RaphaelSet;
	function touchend(handler:haxe.Constraints.Function):RaphaelSet;
	function touchmove(handler:haxe.Constraints.Function):RaphaelSet;
	function touchstart(handler:haxe.Constraints.Function):RaphaelSet;
	@:overload(function(tstr:String):RaphaelSet { })
	function transform():String;
	function unclick(handler:haxe.Constraints.Function):RaphaelSet;
	function undblclick(handler:haxe.Constraints.Function):RaphaelSet;
	function undrag():RaphaelSet;
	@:overload(function(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function):RaphaelSet { })
	function unhover():RaphaelSet;
	function unmousedown(handler:haxe.Constraints.Function):RaphaelSet;
	function unmousemove(handler:haxe.Constraints.Function):RaphaelSet;
	function unmouseout(handler:haxe.Constraints.Function):RaphaelSet;
	function unmouseover(handler:haxe.Constraints.Function):RaphaelSet;
	function unmouseup(handler:haxe.Constraints.Function):RaphaelSet;
	function untouchcancel(handler:haxe.Constraints.Function):RaphaelSet;
	function untouchend(handler:haxe.Constraints.Function):RaphaelSet;
	function untouchmove(handler:haxe.Constraints.Function):RaphaelSet;
	function untouchstart(handler:haxe.Constraints.Function):RaphaelSet;
};
typedef RaphaelMatrix = {
	function add(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, matrix:RaphaelMatrix):RaphaelMatrix;
	function clone():RaphaelMatrix;
	function invert():RaphaelMatrix;
	function rotate(a:Float, x:Float, y:Float):Void;
	function scale(x:Float, ?y:Float, ?cx:Float, ?cy:Float):Void;
	function split():{ var dx : Float; var dy : Float; var scalex : Float; var scaley : Float; var shear : Float; var rotate : Float; var isSimple : Bool; };
	function toTransformString():String;
	function translate(x:Float, y:Float):Void;
	function x(x:Float, y:Float):Float;
	function y(x:Float, y:Float):Float;
};
typedef RaphaelPaper = {
	function add(JSON:Dynamic):RaphaelSet;
	var bottom : RaphaelElement;
	var canvas : SVGSVGElement;
	function circle(x:Float, y:Float, r:Float):RaphaelElement;
	function clear():Void;
	var defs : SVGDefsElement;
	function ellipse(x:Float, y:Float, rx:Float, ry:Float):RaphaelElement;
	function forEach(callback:RaphaelElement -> Bool, ?thisArg:Dynamic):RaphaelPaper;
	function getById(id:Float):RaphaelElement;
	function getElementByPoint(x:Float, y:Float):RaphaelElement;
	function getElementsByPoint(x:Float, y:Float):RaphaelSet;
	@:overload(function(family:String, ?weight:Float, ?style:String, ?stretch:String):RaphaelFont { })
	function getFont(family:String, ?weight:String, ?style:String, ?stretch:String):RaphaelFont;
	var height : Float;
	function image(src:String, x:Float, y:Float, width:Float, height:Float):RaphaelElement;
	function path(?pathString:String):RaphaelPath;
	function print(x:Float, y:Float, str:String, font:RaphaelFont, ?size:Float, ?origin:String, ?letter_spacing:Float):RaphaelPath;
	function rect(x:Float, y:Float, width:Float, height:Float, ?r:Float):RaphaelElement;
	function remove():Void;
	function renderfix():Void;
	function safari():Void;
	function set(?elements:Array<RaphaelElement>):RaphaelSet;
	function setFinish():RaphaelSet;
	function setSize(width:Float, height:Float):Void;
	function setStart():Void;
	function setViewBox(x:Float, y:Float, w:Float, h:Float, fit:Bool):Void;
	function text(x:Float, y:Float, text:String):RaphaelElement;
	var top : RaphaelElement;
	var width : Float;
};
typedef RaphaelStatic = {
	function angle(x1:Float, y1:Float, x2:Float, y2:Float, ?x3:Float, ?y3:Float):Float;
	function animation(params:Dynamic, ms:Float, ?easing:String, ?callback:haxe.Constraints.Function):RaphaelAnimation;
	@:overload(function(bez:Array<Dynamic>):{ var min : { var x : Float; var y : Float; }; var max : { var x : Float; var y : Float; }; } { })
	function bezierBBox(p1x:Float, p1y:Float, c1x:Float, c1y:Float, c2x:Float, c2y:Float, p2x:Float, p2y:Float):{ var min : { var x : Float; var y : Float; }; var max : { var x : Float; var y : Float; }; };
	function color(clr:String):{ var r : Float; var g : Float; var b : Float; var hex : String; var error : Bool; var h : Float; var s : Float; var v : Float; var l : Float; };
	function createUUID():String;
	function deg(deg:Float):Float;
	var easing_formulas : Dynamic;
	var el : Dynamic;
	function findDotsAtSegment(p1x:Float, p1y:Float, c1x:Float, c1y:Float, c2x:Float, c2y:Float, p2x:Float, p2y:Float, t:Float):{ var x : Float; var y : Float; var m : { var x : Float; var y : Float; }; var n : { var x : Float; var y : Float; }; var start : { var x : Float; var y : Float; }; var end : { var x : Float; var y : Float; }; var alpha : Float; };
	var fn : Dynamic;
	function format(token:String, parameters:haxe.extern.Rest<Dynamic>):String;
	function fullfill(token:String, json:JSON):String;
	var getColor : { function reset():Void; };
	function getPointAtLength(path:String, length:Float):{ var x : Float; var y : Float; var alpha : Float; };
	function getRGB(colour:String):{ var r : Float; var g : Float; var b : Float; var hex : String; var error : Bool; };
	function getSubpath(path:String, from:Float, to:Float):String;
	function getTotalLength(path:String):Float;
	function hsb(h:Float, s:Float, b:Float):String;
	function hsb2rgb(h:Float, s:Float, v:Float):{ var r : Float; var g : Float; var b : Float; var hex : String; };
	function hsl(h:Float, s:Float, l:Float):String;
	function hsl2rgb(h:Float, s:Float, l:Float):{ var r : Float; var g : Float; var b : Float; var hex : String; };
	function is(o:Dynamic, type:String):Bool;
	function isBBoxIntersect(bbox1:String, bbox2:String):Bool;
	function isPointInsideBBox(bbox:String, x:Float, y:Float):Bool;
	function isPointInsidePath(path:String, x:Float, y:Float):Bool;
	function matrix(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):RaphaelMatrix;
	function ninja():Void;
	@:overload(function(pathString:Array<String>):Array<String> { })
	function parsePathString(pathString:String):Array<String>;
	@:overload(function(TString:Array<String>):Array<String> { })
	function parseTransformString(TString:String):Array<String>;
	@:overload(function(pathString:Array<String>):Array<String> { })
	function path2curve(pathString:String):Array<String>;
	function pathBBox(path:String):BoundingBox;
	function pathIntersection(path1:String, path2:String):Array<{ var x : Float; var y : Float; var t1 : Float; var t2 : Float; var segment1 : Float; var segment2 : Float; var bez1 : Array<Dynamic>; var bez2 : Array<Dynamic>; }>;
	@:overload(function(pathString:Array<String>):Array<String> { })
	function pathToRelative(pathString:String):Array<String>;
	function rad(deg:Float):Float;
	function registerFont(font:RaphaelFont):RaphaelFont;
	function rgb(r:Float, g:Float, b:Float):String;
	function rgb2hsb(r:Float, g:Float, b:Float):{ var h : Float; var s : Float; var b : Float; };
	function rgb2hsl(r:Float, g:Float, b:Float):{ var h : Float; var s : Float; var l : Float; };
	function setWindow(newwin:Window):Void;
	@:overload(function(values:Array<Float>, value:Float, ?tolerance:Float):Float { })
	function snapTo(values:Float, value:Float, ?tolerance:Float):Float;
	var st : Dynamic;
	var svg : Bool;
	@:overload(function(path:String, transform:Array<String>):RaphaelMatrix { })
	function toMatrix(path:String, transform:String):RaphaelMatrix;
	@:overload(function(path:String, transform:Array<String>):String { })
	function transformPath(path:String, transform:String):String;
	var type : String;
	var vml : Bool;
};
extern class RaphaelTopLevel {
	static var Raphael : RaphaelStatic;
}
