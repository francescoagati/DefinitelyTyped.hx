extern class Container {

}
extern class Creator {

}
extern class Circle {

}
extern class Ellipse {

}
extern class Image {

}
extern class Line {

}
extern class Polyline {

}
extern class Rect {

}
extern class Shape {

}
extern class Surface {

}
extern class Text {

}
typedef Silverlight_attach = {
	function attachNode(node:HTMLElement):Void;
	function attachSurface(node:HTMLElement):Void;
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
typedef Silverlight = {
	function attachNode(node:HTMLElement):Void;
	function attachSurface(node:HTMLElement):Void;
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
typedef Stroke = {
	var cap : String;
	var color : String;
	var join : Float;
	var style : String;
	var width : Float;
};
typedef Svgext = { };
typedef Utils = {
	@:overload(function(parent:dojox.gfx.shape.Shape, object:Array<Dynamic>):Dynamic { })
	function deserialize(parent:dojox.gfx.shape.Shape, object:dojox.gfx.shape.Shape):Dynamic;
	@:overload(function(object:dojox.gfx.shape.Shape, f:String, o:Dynamic):Void { })
	@:overload(function(object:dojox.gfx.shape.Shape, f:Array<Dynamic>, o:Dynamic):Void { })
	function forEach(object:dojox.gfx.shape.Shape, f:haxe.Constraints.Function, o:Dynamic):Void;
	function fromJson(parent:dojox.gfx.shape.Shape, json:String):Dynamic;
	function serialize(object:dojox.gfx.shape.Shape):Dynamic;
	function toJson(object:dojox.gfx.shape.Shape, prettyPrint:Bool):String;
	function toSvg(surface:dojox.gfx.shape.Surface):Dynamic;
};
typedef Svg = {
	var dasharray : Dynamic;
	var useSvgWeb : Bool;
	var xmlns : Dynamic;
	function attachNode(node:HTMLElement):Void;
	function attachSurface(node:HTMLElement):Void;
	function Circle():Void;
	function createSurface(parentNode:Dynamic, width:Dynamic, height:Dynamic):Void;
	function Ellipse():Void;
	function fixTarget(event:Dynamic, gfxElement:Dynamic):Void;
	function getRef(name:String):Dynamic;
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
typedef VectorFontFitting = {
	var FIT : Float;
	var FLOW : Float;
	var NONE : Float;
};
typedef Vml = {
	var text_alignment : Dynamic;
	var xmlns : String;
	function attachNode(node:HTMLElement):Void;
	function attachSurface(node:HTMLElement):Void;
	function Circle():Void;
	@:overload(function(parentNode:HTMLElement, width:Float, height:String):Dynamic { })
	@:overload(function(parentNode:HTMLElement, width:String, height:Float):Dynamic { })
	@:overload(function(parentNode:HTMLElement, width:Float, height:Float):Dynamic { })
	function createSurface(parentNode:HTMLElement, width:String, height:String):Dynamic;
	function Ellipse():Void;
	function fixTarget(event:Dynamic, gfxElement:Dynamic):Void;
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
typedef Filters = { };
typedef Renderer = { };
typedef Registry = {
	function byId(id:String):dojox.gfx.shape.Shape;
	function dispose(s:dojox.gfx.shape.Shape, recurse:Bool):Void;
	function register(s:dojox.gfx.shape.Shape):Float;
};
typedef Svg_attach = {
	var dasharray : Dynamic;
	var useSvgWeb : Bool;
	var xmlns : Dynamic;
	function attachNode(node:HTMLElement):Void;
	function attachSurface(node:HTMLElement):Void;
	function Circle():Void;
	function createSurface(parentNode:Dynamic, width:Dynamic, height:Dynamic):Void;
	function Ellipse():Void;
	function fixTarget(event:Dynamic, gfxElement:Dynamic):Void;
	function getRef(name:String):Dynamic;
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
