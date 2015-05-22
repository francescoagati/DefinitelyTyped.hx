extern class Model {
	function new(incident:Dynamic, lights:Dynamic, ambient:Dynamic, specular:Dynamic):Void;
	function constant(normal:Dynamic, finish:Dynamic, pigment:Dynamic):Dynamic;
	function matte(normal:Dynamic, finish:Dynamic, pigment:Dynamic):Dynamic;
	function metal(normal:Dynamic, finish:Dynamic, pigment:Dynamic):Dynamic;
	function npr(normal:Dynamic, finish:Dynamic, pigment:Dynamic):Dynamic;
	function plastic(normal:Dynamic, finish:Dynamic, pigment:Dynamic):Dynamic;
}
typedef Finish = {
	var defaults : Dynamic;
	var dull : Dynamic;
	var glossy : Dynamic;
	var luminous : Dynamic;
	var metalA : Dynamic;
	var metalB : Dynamic;
	var metalC : Dynamic;
	var metalD : Dynamic;
	var metalE : Dynamic;
	var phong_dull : Dynamic;
	var phong_glossy : Dynamic;
	var phong_shiny : Dynamic;
	var shiny : Dynamic;
};
typedef Matrix = {
	var identity : Dynamic;
	function cameraRotateX(angle:Float):Dynamic;
	function cameraRotateXg(degree:Float):Dynamic;
	function cameraRotateY(angle:Float):Dynamic;
	function cameraRotateYg(degree:Float):Dynamic;
	function cameraRotateZ(angle:Float):Dynamic;
	function cameraRotateZg(degree:Float):Dynamic;
	@:overload(function(a:Dynamic, b:Float, c:Float):Dynamic { })
	function cameraTranslate(a:Float, b:Float, c:Float):Dynamic;
	function clone(matrix:Dynamic):Dynamic;
	function invert(matrix:Dynamic):Dynamic;
	function multiply(matrix:Dynamic):Dynamic;
	@:overload(function(matrix:Dynamic, a:Dynamic, b:Float, c:Float):Dynamic { })
	function multiplyPoint(matrix:Dynamic, a:Float, b:Float, c:Float):Dynamic;
	function normalize(matrix:Dynamic):Dynamic;
	@:overload(function(matrix:Dynamic, a:dojox.geo.openlayers.Point, b:Float, c:Float):Dynamic { })
	function project(matrix:Dynamic, a:Float, b:Float, c:Float):Dynamic;
	function rotateX(angle:Float):Dynamic;
	function rotateXg(degree:Float):Dynamic;
	function rotateY(angle:Float):Dynamic;
	function rotateYg(degree:Float):Dynamic;
	function rotateZ(angle:Float):Dynamic;
	function rotateZg(degree:Float):Dynamic;
	@:overload(function(a:Dynamic, b:Float, c:Float):Dynamic { })
	function scale(a:Float, b:Float, c:Float):Dynamic;
	@:overload(function(a:Dynamic, b:Float, c:Float):Dynamic { })
	function translate(a:Float, b:Float, c:Float):Dynamic;
};
