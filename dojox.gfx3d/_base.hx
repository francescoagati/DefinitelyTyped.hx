extern class Cube {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(newObject:Dynamic):Void { })
	function setObject(newObject:Array<Dynamic>):Void;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Cylinder {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw():Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setObject(newObject:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Edges {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw():Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(newObject:Dynamic, style:String):haxe.Constraints.Function { })
	function setObject(newObject:Array<Dynamic>, style:String):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Orbit {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setObject(newObject:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Polygon {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(newObject:Dynamic):haxe.Constraints.Function { })
	function setObject(newObject:Array<Dynamic>):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Object {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setObject(newObject:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Path3d {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function closePath():haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function lineTo():haxe.Constraints.Function;
	function moveTo():haxe.Constraints.Function;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setObject(newObject:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Quads {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(newObject:Dynamic, style:String):haxe.Constraints.Function { })
	function setObject(newObject:Array<Dynamic>, style:String):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Triangles {
	function new():Void;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	@:overload(function(newObject:Dynamic, style:String):haxe.Constraints.Function { })
	function setObject(newObject:Array<Dynamic>, style:String):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Scene {
	function new():Void;
	function abandon(obj:Dynamic, silently:Bool):haxe.Constraints.Function;
	function addTodo(newObject:Dynamic):Void;
	function adopt(obj:Dynamic):haxe.Constraints.Function;
	function applyLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function create3DObject(objectType:haxe.Constraints.Function, rawObject:Dynamic, style:Dynamic):Dynamic;
	function createCube(cube:Dynamic):Dynamic;
	function createCylinder(cylinder:Dynamic):Dynamic;
	function createEdges(edges:Dynamic, style:Dynamic):Dynamic;
	function createOrbit(orbit:Dynamic):Dynamic;
	function createPath3d(path:Dynamic):Dynamic;
	@:overload(function(points:Dynamic):Dynamic { })
	function createPolygon(points:Array<Dynamic>):Dynamic;
	function createQuads(quads:Dynamic, style:Dynamic):Dynamic;
	function createScene():Dynamic;
	function createTriangles(tris:Dynamic, style:Dynamic):Dynamic;
	function destroy():Void;
	function draw(lighting:Dynamic):Void;
	function getOutline():Dynamic;
	function getZOrder():Float;
	function invalidate():Void;
	function render(camera:Dynamic, deep:Dynamic):Void;
	function setDrawer(drawer:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setObject(newObject:Dynamic):haxe.Constraints.Function;
	function setScheduler(scheduler:Dynamic):Void;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:Dynamic):haxe.Constraints.Function;
	function toStdFill(lighting:Dynamic, normal:Dynamic):Dynamic;
}
extern class Viewport {
	function new():Void;
	var nodeType : Dynamic;
	function abandon(obj:Dynamic, silently:Bool):haxe.Constraints.Function;
	function add(shape:dojox.gfx.shape.Shape):Dynamic;
	@:overload(function(lights:Dynamic):Dynamic { })
	function addLights(lights:Array<Dynamic>):Dynamic;
	function addTodo(newObject:Dynamic):Void;
	function adopt(obj:Dynamic):haxe.Constraints.Function;
	function applyCameraLeftTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyCameraRightTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function applyCameraTransform(matrix:dojox.gfx3d.matrix.Matrix3D):Dynamic;
	function applyLeftTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyRightTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function applyTransform(matrix:dojox.gfx.matrix.Matrix2D):haxe.Constraints.Function;
	function clear(destroy:Bool):haxe.Constraints.Function;
	function closeBatch():haxe.Constraints.Function;
	function connect(name:Dynamic, object:Dynamic, method:Dynamic):Dynamic;
	function create3DObject(objectType:haxe.Constraints.Function, rawObject:Dynamic, style:Dynamic):Dynamic;
	function createCircle(circle:Dynamic):Dynamic;
	function createCube(cube:Dynamic):Dynamic;
	function createCylinder(cylinder:Dynamic):Dynamic;
	function createEdges(edges:Dynamic, style:Dynamic):Dynamic;
	function createEllipse(ellipse:Dynamic):Dynamic;
	function createGroup():Dynamic;
	function createImage(image:Dynamic):Dynamic;
	function createLine(line:Dynamic):Dynamic;
	function createObject(shapeType:haxe.Constraints.Function, rawShape:Dynamic):Dynamic;
	function createOrbit(orbit:Dynamic):Dynamic;
	function createPath(path:Dynamic):Dynamic;
	function createPath3d(path:Dynamic):Dynamic;
	@:overload(function(points:Dynamic):Dynamic { })
	function createPolygon(points:Array<Dynamic>):Dynamic;
	function createPolyline(points:Dynamic):Dynamic;
	function createQuads(quads:Dynamic, style:Dynamic):Dynamic;
	function createRect(rect:Dynamic):Dynamic;
	function createScene():Dynamic;
	function createShape(shape:Dynamic):Dynamic;
	function createText(text:Dynamic):Dynamic;
	function createTextPath(text:Dynamic):Dynamic;
	function createTriangles(tris:Dynamic, style:Dynamic):Dynamic;
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
	function invalidate():Void;
	function moveToBack():haxe.Constraints.Function;
	function moveToFront():haxe.Constraints.Function;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function openBatch():haxe.Constraints.Function;
	function remove(shape:dojox.gfx.shape.Shape, silently:Bool):haxe.Constraints.Function;
	function removeShape(silently:Bool):haxe.Constraints.Function;
	function render():Void;
	function setCameraTransform(matrix:dojox.gfx3d.matrix.Matrix3D):haxe.Constraints.Function;
	function setClip(clip:Dynamic):Void;
	function setDimensions(dim:Dynamic):Void;
	function setDrawer(drawer:Dynamic):Void;
	function setFill(fill:Dynamic):haxe.Constraints.Function;
	function setLights(lights:Array<Dynamic>, ambient:dojo._base.Color, specular:dojo._base.Color):haxe.Constraints.Function;
	function setScheduler(scheduler:Dynamic):Void;
	function setShape(shape:Dynamic):haxe.Constraints.Function;
	function setStroke(stroke:Dynamic):haxe.Constraints.Function;
	function setTransform(matrix:dojox.gfx.matrix.Matrix2D):Dynamic;
}
typedef _creators = {
	function abandon(obj:Dynamic, silently:Bool):haxe.Constraints.Function;
	function adopt(obj:Dynamic):haxe.Constraints.Function;
	function create3DObject(objectType:haxe.Constraints.Function, rawObject:Dynamic, style:Dynamic):Dynamic;
	function createCube(cube:Dynamic):Dynamic;
	function createCylinder(cylinder:Dynamic):Dynamic;
	function createEdges(edges:Dynamic, style:Dynamic):Dynamic;
	function createOrbit(orbit:Dynamic):Dynamic;
	function createPath3d(path:Dynamic):Dynamic;
	@:overload(function(points:Dynamic):Dynamic { })
	function createPolygon(points:Array<Dynamic>):Dynamic;
	function createQuads(quads:Dynamic, style:Dynamic):Dynamic;
	function createScene():Dynamic;
	function createTriangles(tris:Dynamic, style:Dynamic):Dynamic;
	function setDrawer(drawer:Dynamic):Void;
	function setScheduler(scheduler:Dynamic):Void;
};
typedef DefaultCube = {
	var bottom : Dynamic;
	var top : Dynamic;
	var type : String;
};
typedef DefaultCylinder = {
	var center : Dynamic;
	var height : Float;
	var radius : Float;
	var type : String;
};
typedef DefaultOrbit = {
	var center : Dynamic;
	var radius : Float;
	var type : String;
};
typedef DefaultPolygon = {
	var path : Array<Dynamic>;
	var type : String;
};
typedef DefaultPath3d = {
	var path : Array<Dynamic>;
	var type : String;
};
typedef DefaultEdges = {
	var points : Array<Dynamic>;
	var style : Dynamic;
	var type : String;
};
typedef DefaultQuads = {
	var points : Array<Dynamic>;
	var style : Dynamic;
	var type : String;
};
typedef DefaultTriangles = {
	var points : Array<Dynamic>;
	var style : Dynamic;
	var type : String;
};
typedef Drawer = {
	function chart(todos:Dynamic, objects:Dynamic, viewport:Dynamic):Void;
	function conservative(todos:Dynamic, objects:Dynamic, viewport:Dynamic):Void;
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
	function Matrix3D(arg:Dynamic):Void;
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
typedef Scheduler = {
	var drawer : Dynamic;
	var scheduler : Dynamic;
	function BinarySearchTree():Void;
};
