typedef RGB = {
	var r : Float;
	var g : Float;
	var b : Float;
	var hex : String;
};
typedef HSB = {
	var h : Float;
	var s : Float;
	var b : Float;
};
typedef HSL = {
	var h : Float;
	var s : Float;
	var l : Float;
};
typedef BBox = {
	var cx : Float;
	var cy : Float;
	var h : Float;
	var height : Float;
	var path : Float;
	var r0 : Float;
	var r1 : Float;
	var r2 : Float;
	var vb : String;
	var w : Float;
	var width : Float;
	var x2 : Float;
	var x : Float;
	var y2 : Float;
	var y : Float;
};
typedef Element = {
	function add():Void;
	function addClass(value:String):Snap.Element;
	function after(el:Snap.Element):Snap.Element;
	@:overload(function(animation:Dynamic):Snap.Element { })
	function animate(attrs:Dynamic, duration:Float, ?easing:haxe.Constraints.Function, ?callback:haxe.Constraints.Function):Snap.Element;
	function append(el:Snap.Element):Snap.Element;
	function appendTo(el:Snap.Element):Snap.Element;
	function asPX(attr:String, ?value:String):Snap.Element;
	@:overload(function(param:String):String { })
	function attr(params:Dynamic):Snap.Element;
	function before(el:Snap.Element):Snap.Element;
	function clone():Snap.Element;
	function data(key:String, ?value:Dynamic):Dynamic;
	function getBBox():BBox;
	function getPointAtLength(length:Float):Dynamic;
	function getSubpath(from:Float, to:Float):String;
	function getTotalLength():Float;
	function hasClass(value:String):Bool;
	function inAnim():Dynamic;
	function innerSVG():String;
	function insertAfter(el:Snap.Element):Snap.Element;
	function insertBefore(el:Snap.Element):Snap.Element;
	function marker(x:Float, y:Float, width:Float, height:Float, refX:Float, refY:Float):Snap.Element;
	var node : Element;
	function outerSVG():String;
	function parent():Snap.Element;
	function pattern(x:Dynamic, y:Dynamic, width:Dynamic, height:Dynamic):Snap.Element;
	function prepend(el:Snap.Element):Snap.Element;
	function prependTo(el:Snap.Element):Snap.Element;
	function remove():Snap.Element;
	function removeClass(value:String):Snap.Element;
	function removeData(?key:String):Snap.Element;
	function select(query:String):Snap.Element;
	@:overload(function():Snap.Set { })
	function selectAll(query:String):Snap.Set;
	function stop():Snap.Element;
	function toDefs():Snap.Element;
	@:overload(function(x:String, y:String, width:String, height:String):Dynamic { })
	function toPattern(x:Float, y:Float, width:Float, height:Float):Dynamic;
	function toString():String;
	function toggleClass(value:String, flag:Bool):Snap.Element;
	function transform(tstr:String):Dynamic;
	var type : String;
	function use():Dynamic;
	function click(handler:haxe.Constraints.Function):Snap.Element;
	function unclick(handler:haxe.Constraints.Function):Snap.Element;
	function dblclick(handler:haxe.Constraints.Function):Snap.Element;
	function undblclick(handler:haxe.Constraints.Function):Snap.Element;
	function mousedown(handler:haxe.Constraints.Function):Snap.Element;
	function unmousedown(handler:haxe.Constraints.Function):Snap.Element;
	function mousemove(handler:haxe.Constraints.Function):Snap.Element;
	function unmousemove(handler:haxe.Constraints.Function):Snap.Element;
	function mouseout(handler:haxe.Constraints.Function):Snap.Element;
	function unmouseout(handler:haxe.Constraints.Function):Snap.Element;
	function mouseover(handler:haxe.Constraints.Function):Snap.Element;
	function unmouseover(handler:haxe.Constraints.Function):Snap.Element;
	function mouseup(handler:haxe.Constraints.Function):Snap.Element;
	function unmouseup(handler:haxe.Constraints.Function):Snap.Element;
	function touchstart(handler:haxe.Constraints.Function):Snap.Element;
	function untouchstart(handler:haxe.Constraints.Function):Snap.Element;
	function touchmove(handler:haxe.Constraints.Function):Snap.Element;
	function untouchmove(handler:haxe.Constraints.Function):Snap.Element;
	function touchend(handler:haxe.Constraints.Function):Snap.Element;
	function untouchend(handler:haxe.Constraints.Function):Snap.Element;
	function touchcancel(handler:haxe.Constraints.Function):Snap.Element;
	function untouchcancel(handler:haxe.Constraints.Function):Snap.Element;
	function hover(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function, ?icontext:Dynamic, ?ocontext:Dynamic):Snap.Element;
	function unhover(f_in:haxe.Constraints.Function, f_out:haxe.Constraints.Function):Snap.Element;
	@:overload(function(onmove:haxe.Constraints.Function, onstart:haxe.Constraints.Function, onend:haxe.Constraints.Function, ?mcontext:Dynamic, ?scontext:Dynamic, ?econtext:Dynamic):Snap.Element { })
	function drag():Void;
	function undrag():Snap.Element;
};
typedef Fragment = {
	function select(query:String):Snap.Element;
	@:overload(function():Snap.Set { })
	function selectAll(query:String):Snap.Set;
};
typedef Matrix = {
	@:overload(function(matrix:Matrix):Void { })
	function add(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;
	function clone():Matrix;
	function determinant():Float;
	function invert():Matrix;
	function rotate(a:Float, x:Float, y:Float):Void;
	function scale(x:Float, ?y:Float, ?cx:Float, ?cy:Float):Void;
	function split():Dynamic;
	function toTransformString():String;
	function translate(x:Float, y:Float):Void;
	function x(x:Float, y:Float):Float;
	function y(x:Float, y:Float):Float;
};
typedef Paper = {
	>Snap.Element,
	function clear():Void;
	function el(name:String, attr:Dynamic):Snap.Element;
	function gradient(gradient:String):Dynamic;
	function g(?varargs:Dynamic):Dynamic;
	function group(?el:Dynamic, els:haxe.extern.Rest<Dynamic>):Dynamic;
	function mask(varargs:Dynamic):Dynamic;
	function ptrn(x:Float, y:Float, width:Float, height:Float, vbx:Float, vby:Float, vbw:Float, vbh:Float):Dynamic;
	function svg(x:Float, y:Float, width:Float, height:Float, vbx:Float, vby:Float, vbw:Float, vbh:Float):Dynamic;
	function toString():String;
	@:overload(function(?id:Snap.Element):Dynamic { })
	function use(?id:String):Dynamic;
	function circle(x:Float, y:Float, r:Float):Snap.Element;
	function ellipse(x:Float, y:Float, rx:Float, ry:Float):Snap.Element;
	function image(src:String, x:Float, y:Float, width:Float, height:Float):Snap.Element;
	function line(x1:Float, y1:Float, x2:Float, y2:Float):Snap.Element;
	function path(?pathString:String):Snap.Element;
	function polygon(varargs:Array<Dynamic>):Snap.Element;
	function polyline(varargs:Array<Dynamic>):Snap.Element;
	function rect(x:Float, y:Float, width:Float, height:Float, ?rx:Float, ?ry:Float):Snap.Element;
	@:overload(function(x:Float, y:Float, text:Array<String>):Snap.Element { })
	function text(x:Float, y:Float, text:String):Snap.Element;
};
typedef Set = {
	function animate(attrs:Dynamic, duration:Float, ?easing:haxe.Constraints.Function, ?callback:haxe.Constraints.Function):Snap.Element;
	@:overload(function(param:String):String { })
	function attr(params:Dynamic):Snap.Element;
	@:overload(function(attr:String, element:Snap.Element):Snap.Set { })
	@:overload(function(attr:String, element:Snap.Element, eattr:String):Snap.Set { })
	function bind(attr:String, callback:haxe.Constraints.Function):Snap.Set;
	function clear():Snap.Set;
	function exclude(element:Snap.Element):Bool;
	function forEach(callback:haxe.Constraints.Function, ?thisArg:Dynamic):Snap.Set;
	function pop():Snap.Element;
	@:overload(function(els:Array<Snap.Element>):Snap.Element { })
	function push(el:Snap.Element):Snap.Element;
	function splice(index:Float, count:Float, ?insertion:Array<Dynamic>):Array<Snap.Element>;
};
typedef Filter = {
	function blur(x:Float, ?y:Float):String;
	function brightness(amount:Float):String;
	function contrast(amount:Float):String;
	function grayscale(amount:Float):String;
	function hueRotate(angle:Float):String;
	function invert(amount:Float):String;
	function saturate(amount:Float):String;
	function sepia(amount:Float):String;
	function shadow(dx:Float, dy:Float, ?blur:Float, ?color:String, ?opacity:Float):String;
};
typedef Path = {
	@:overload(function(bez:Array<Float>):Dynamic { })
	function bezierBBox(args:haxe.extern.Rest<Float>):Dynamic;
	function findDotsAtSegment(p1x:Float, p1y:Float, c1x:Float, c1y:Float, c2x:Float, c2y:Float, p2x:Float, p2y:Float, t:Float):Dynamic;
	function getBBox(path:String):Dynamic;
	function getPointAtLength(path:String, length:Float):Dynamic;
	function getSubpath(path:String, from:Float, to:Float):String;
	function getTotalLength(path:String):Float;
	function intersection(path1:String, path2:String):Array<Dynamic>;
	function isBBoxIntersect(bbox1:String, bbox2:String):Bool;
	function isPointInside(path:String, x:Float, y:Float):Bool;
	function isPointInsideBBox(bbox:String, x:String, y:String):Bool;
	@:overload(function(path:String, matrix:Dynamic):String { })
	function map(path:String, matrix:Snap.Matrix):String;
	function toAbsolute(path:String):Array<Dynamic>;
	@:overload(function(pathString:Array<String>):Array<Dynamic> { })
	function toCubic(pathString:String):Array<Dynamic>;
	function toRelative(path:String):Array<Dynamic>;
};
extern class SnapTopLevel {
	static var filter : Filter;
	static var path : Path;
	static function Matrix(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Matrix;
	static function Matrix(svgMatrix:SVGMatrix):Matrix;
	static function ajax(url:String, postData:String, callback:haxe.Constraints.Function, ?scope:Dynamic):XMLHttpRequest;
	static function ajax(url:String, postData:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic):XMLHttpRequest;
	static function ajax(url:String, callback:haxe.Constraints.Function, ?scope:Dynamic):XMLHttpRequest;
	static function format(token:String, json:Dynamic):String;
	static function fragment(varargs:Dynamic):Fragment;
	static function getElementByPoint(x:Float, y:Float):Dynamic;
	static function is(o:Dynamic, type:String):Bool;
	static function load(url:String, callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	static function plugin(f:haxe.Constraints.Function):Void;
	static function select(query:String):Snap.Element;
	static function selectAll(query:String):Dynamic;
	static function snapTo(values:Array<Float>, value:Float, ?tolerance:Float):Float;
	static function animate(from:Float, to:Float, setter:haxe.Constraints.Function, duration:Float, easing:haxe.Constraints.Function, callback:haxe.Constraints.Function):mina.Mina;
	static function animate(from:Array<Float>, to:Float, setter:haxe.Constraints.Function, duration:Float, easing:haxe.Constraints.Function, callback:haxe.Constraints.Function):mina.Mina;
	static function animate(from:Float, to:Array<Float>, setter:haxe.Constraints.Function, duration:Float, easing:haxe.Constraints.Function, callback:haxe.Constraints.Function):mina.Mina;
	static function animate(from:Array<Float>, to:Array<Float>, setter:haxe.Constraints.Function, duration:Float, easing:haxe.Constraints.Function, callback:haxe.Constraints.Function):mina.Mina;
	static function animation(attr:Dynamic, duration:Float, ?easing:haxe.Constraints.Function, ?callback:haxe.Constraints.Function):Dynamic;
	static function color(clr:String):Dynamic;
	static function getRGB(color:String):Dynamic;
	static function hsb(h:Float, s:Float, b:Float):HSB;
	static function hsl(h:Float, s:Float, l:Float):HSL;
	static function rgb(r:Float, g:Float, b:Float):RGB;
	static function hsb2rgb(h:Float, s:Float, v:Float):RGB;
	static function hsl2rgb(h:Float, s:Float, l:Float):RGB;
	static function rgb2hsb(r:Float, g:Float, b:Float):HSB;
	static function rgb2hsl(r:Float, g:Float, b:Float):HSL;
	static function angle(x1:Float, y1:Float, x2:Float, y2:Float, ?x3:Float, ?y3:Float):Float;
	static function rad(deg:Float):Float;
	static function deg(rad:Float):Float;
	static function parse(svg:String):Fragment;
	static function parsePathString(pathString:String):Array<Dynamic>;
	static function parsePathString(pathString:Array<String>):Array<Dynamic>;
	static function parseTransformString(TString:String):Array<Dynamic>;
	static function parseTransformString(TString:Array<String>):Array<Dynamic>;
}
