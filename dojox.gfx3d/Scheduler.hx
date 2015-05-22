extern class BinarySearchTree {
	function new(obj:dojox.gfx3d.Object, outline:Dynamic):Void;
	function add(obj:Dynamic, outline:Dynamic):Void;
	function iterate(outline:Dynamic):Dynamic;
}
typedef Drawer = {
	function chart(todos:Dynamic, objects:Dynamic, viewport:Dynamic):Void;
	function conservative(todos:Dynamic, objects:Dynamic, viewport:Dynamic):Void;
};
typedef Scheduler = {
	function BinarySearchTree():Void;
	function bsp(buffer:Dynamic, outline:Dynamic):Dynamic;
	function order(it:Dynamic):Dynamic;
	function outline(it:Dynamic):Dynamic;
	function zOrder(buffer:Dynamic, order:Dynamic):Dynamic;
};
typedef Vector = {
	function center():Dynamic;
	@:overload(function(a:dojox.geo.openlayers.Point, b:Float, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	@:overload(function(a:Float, b:dojox.geo.openlayers.Point, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	@:overload(function(a:dojox.geo.openlayers.Point, b:dojox.geo.openlayers.Point, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	function crossProduct(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Dynamic;
	@:overload(function(a:dojox.geo.openlayers.Point, b:Float, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	@:overload(function(a:Float, b:dojox.geo.openlayers.Point, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	@:overload(function(a:dojox.geo.openlayers.Point, b:dojox.geo.openlayers.Point, c:Float, d:Float, e:Float, f:Float):Dynamic { })
	function dotProduct(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Dynamic;
	function normalize(a:Dynamic, b:Dynamic, c:Dynamic):Dynamic;
	function substract(a:Dynamic, b:Dynamic):Dynamic;
	function sum():Dynamic;
};
typedef Lighting = {
	var finish : Dynamic;
	function add(a:Dynamic, b:Dynamic):Dynamic;
	function addColor(a:Dynamic, b:Dynamic):Dynamic;
	function black():Dynamic;
	function diff2Color(c1:Dynamic, c2:Dynamic):Float;
	function diffuse(normal:Dynamic, lights:Dynamic):Dynamic;
	function dot(a:Dynamic, b:Dynamic):Float;
	function faceforward(n:Dynamic, i:Dynamic):Dynamic;
	function fromStdColor(c:Dynamic):Dynamic;
	function length(v:Dynamic):Dynamic;
	function length2Color(c:Dynamic):Float;
	function mixColor(c1:Dynamic, c2:Dynamic, s:Dynamic):Dynamic;
	function Model():Void;
	function multiplyColor(a:Dynamic, b:Dynamic):Dynamic;
	function normalize(v:Dynamic):Dynamic;
	function phong(normal:Dynamic, v:Dynamic, size:Dynamic, lights:Dynamic):Dynamic;
	function reflect(i:Dynamic, n:Dynamic):Dynamic;
	function saturate(v:Dynamic):Dynamic;
	function saturateColor(c:Dynamic):Dynamic;
	function scale(s:Dynamic, v:Dynamic):Dynamic;
	function scaleColor(s:Dynamic, c:Dynamic):Dynamic;
	function specular(normal:Dynamic, v:Dynamic, roughness:Dynamic, lights:Dynamic):Dynamic;
	function toStdColor(c:Dynamic):Dynamic;
	function white():Dynamic;
};
