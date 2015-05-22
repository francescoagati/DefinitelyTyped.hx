typedef LinkedHTMLElement = {
	>HTMLElement,
	var instance : Element;
};
typedef Library = {
	function create(name:String):Dynamic;
	var Element : ElementStatic;
	var supported : Bool;
	function get(id:String):Element;
	function extend(parent:Dynamic, obj:Dynamic):Void;
};
typedef Doc = {
	>Element,
	function svg(data:String):Dynamic;
	function pattern(w:Float, h:Float, add:Element -> Void):Element;
	function defs():Defs;
	function clear():Void;
	function mask():Mask;
};
typedef Filter = {
	function gaussianBlur(values:String):Filter;
	@:overload(function(name:String, matrix:Array<Float>):Filter { })
	function colorMatrix(name:String, value:Float):Filter;
	function componentTransfer(components:{ @:optional
	var rgb : FilterComponentTransfer; @:optional
	var g : FilterComponentTransfer; }):Filter;
	function offset(x:Float, y:Float):Filter;
	function blend():Filter;
	function in(source:FilterSource):Filter;
	var sourceAlpha : FilterSource;
	var source : FilterSource;
};
typedef FilterSource = { };
typedef FilterComponentTransfer = {
	var type : String;
	@:optional
	var tableValues : String;
	@:optional
	var slope : Float;
	var intercept : Float;
	var amplitude : Float;
	var exponent : Float;
	var offset : Float;
};
typedef Element = {
	>Text,
	>Parent,
	var node : LinkedHTMLElement;
	function nested():Doc;
	@:overload(function(info:{ @:optional
	var ease : String; @:optional
	var duration : Float; @:optional
	var delay : Float; }):Animation { })
	function animate(?duration:Float, ?ease:String, ?delay:Float):Animation;
	@:overload(function(obj:Dynamic):Element { })
	@:overload(function(name:String, value:Dynamic, ?namespace:String):Element { })
	function attr(name:String):Dynamic;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Element { })
	@:overload(function(obj:Viewbox):Element { })
	function viewbox():Viewbox;
	function move(x:Float, y:Float, ?anchor:Bool):Element;
	@:overload(function():Float { })
	function x(x:Float, ?anchor:Bool):Element;
	@:overload(function():Float { })
	function y(y:Float, ?anchor:Bool):Element;
	function center(x:Float, y:Float, ?anchor:Bool):Element;
	@:overload(function():Float { })
	function cx(x:Float, ?anchor:Bool):Element;
	@:overload(function():Float { })
	function cy(y:Float, ?anchor:Bool):Element;
	function size(w:Float, h:Float, ?anchor:Bool):Element;
	function show():Element;
	function hide():Element;
	function visible():Bool;
	function remove():Void;
	function each(iterator:?Float -> ?Array<Element> -> Void, ?deep:Bool):Void;
	function filter(adder:Filter -> Void):Element;
	@:overload(function():Transform { })
	function transform(t:Transform):Element;
	@:overload(function(obj:Dynamic):Element { })
	@:overload(function(name:String):String { })
	@:overload(function():String { })
	function style(name:String, value:String):Element;
	function bbox():BBox;
	function rbox():RBox;
	function doc():Doc;
	@:overload(function(name:String, value:Dynamic):Element { })
	function data(name:String):Dynamic;
	@:overload(function(obj:Dynamic):Element { })
	@:overload(function(name:String):Dynamic { })
	function remember(name:String, value:Dynamic):Element;
	function forget(keys:haxe.extern.Rest<String>):Element;
	@:overload(function(color:String):Element { })
	@:overload(function(pattern:Element):Element { })
	function fill(fill:{ @:optional
	var color : String; @:optional
	var opacity : Float; }):Element;
	@:overload(function(color:String):Element { })
	function stroke(data:{ @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var width : Float; }):Element;
	function opacity(o:Float):Element;
	function rotate(d:Float, ?cx:Float, ?cy:Float):Element;
	function skew(x:Float, y:Float):Element;
	function scale(x:Float, y:Float):Element;
	function translate(x:Float, y:Float):Element;
	function maskWith(element:Element):Element;
	var masker : Element;
	function unmask():Element;
	function clipWith(element:Element):Element;
	var clipper : Element;
	function unclip():Element;
	function front():Element;
	function back():Element;
	function forward():Element;
	function backward():Element;
	function siblings():Array<Element>;
	function position():Float;
	function next():Element;
	function previous():Element;
	function before(element:Element):Element;
	function after(element:Element):Element;
	function click(cb:haxe.Constraints.Function):Void;
	function on(event:String, cb:haxe.Constraints.Function):Void;
	function off(event:String, cb:haxe.Constraints.Function):Void;
};
typedef Mask = {
	>Element,
	function add(element:Element):Mask;
};
typedef Text = {
	var content : String;
	function font(font:{ @:optional
	var family : String; @:optional
	var size : Float; @:optional
	var anchor : String; @:optional
	var leading : String; }):Element;
	function tspan(text:String):Element;
	function path(data:String):Element;
	function plot(data:String):Element;
	var track : Element;
};
typedef ElementStatic = {
	>Parent,
	function new(node:Dynamic):Element;
};
typedef Defs = {
	>Element,
};
typedef Animation = {
	function stop():Animation;
	@:overload(function(obj:Dynamic):Animation { })
	@:overload(function(name:String):Dynamic { })
	function attr(name:String, value:Dynamic, ?namespace:String):Animation;
	function viewbox(x:Float, y:Float, w:Float, h:Float):Animation;
	function move(x:Float, y:Float, ?anchor:Bool):Animation;
	function x(x:Float, ?anchor:Bool):Animation;
	function y(y:Float, ?anchor:Bool):Animation;
	function center(x:Float, y:Float, ?anchor:Bool):Animation;
	function cx(x:Float, ?anchor:Bool):Animation;
	function cy(y:Float, ?anchor:Bool):Animation;
	function size(w:Float, h:Float, ?anchor:Bool):Animation;
	function during(cb:Float -> Void):Animation;
	function to(value:Float):Animation;
	function after(cb:Void -> Void):Animation;
};
typedef Parent = {
	function put(element:Element, ?i:Float):Element;
	function add(element:Element, ?i:Float):Element;
	function children():Array<Element>;
	function rect(w:Float, h:Float):Element;
	function ellipse(w:Float, h:Float):Element;
	function circle(diameter:Float):Element;
	function line(x1:Float, y1:Float, x2:Float, y2:Float):Element;
	@:overload(function(points:Array<Array<Float>>):Element { })
	function polyline(data:String):Element;
	@:overload(function(points:Array<Array<Float>>):Element { })
	function polygon(data:String):Element;
	function path(data:String):Element;
	function image(url:String, ?w:Float, ?h:Float):Element;
	@:overload(function(adder:Element -> Void):Element { })
	function text(text:String):Element;
	function use(element:Element):Element;
	function group():Element;
};
typedef BBox = {
	var height : Float;
	var width : Float;
	var y : Float;
	var x : Float;
	var cx : Float;
	var cy : Float;
	function merge(bbox:BBox):BBox;
};
typedef RBox = {
	>BBox,
};
typedef Attributes = { };
typedef Viewbox = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	@:optional
	var zoom : Float;
};
typedef Transform = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var rotation : Float;
	@:optional
	var cx : Float;
	@:optional
	var cy : Float;
	@:optional
	var scaleX : Float;
	@:optional
	var scaleY : Float;
	@:optional
	var skewX : Float;
	@:optional
	var skewY : Float;
	@:optional
	var matrix : String;
	@:optional
	var a : Float;
	@:optional
	var b : Float;
	@:optional
	var c : Float;
	@:optional
	var d : Float;
	@:optional
	var e : Float;
	@:optional
	var f : Float;
};
extern class SvgjsTopLevel {
	static var SVG : svgjs.Library;
}
extern class SvgjsTopLevel {
	static var SVG : svgjs.Library;
}
