@:enum abstract MOUSE(Int) {

}
@:enum abstract CullFace(Int) {

}
@:enum abstract FrontFaceDirection(Int) {

}
@:enum abstract ShadowMapType(Int) {

}
@:enum abstract Side(Int) {

}
@:enum abstract Shading(Int) {

}
@:enum abstract Colors(Int) {

}
@:enum abstract Blending(Int) {

}
@:enum abstract BlendingEquation(Int) {

}
@:enum abstract BlendingDstFactor(Int) {

}
@:enum abstract BlendingSrcFactor(Int) {

}
@:enum abstract Combine(Int) {

}
@:enum abstract Mapping(Int) {

}
@:enum abstract Wrapping(Int) {

}
@:enum abstract TextureFilter(Int) {

}
@:enum abstract TextureDataType(Int) {

}
@:enum abstract PixelType(Int) {

}
@:enum abstract PixelFormat(Int) {

}
@:enum abstract CompressedPixelFormat(Int) {

}
extern class Camera extends Object3D {
	function new():Void;
	var matrixWorldInverse : Matrix4;
	var projectionMatrix : Matrix4;
	function getWorldDirection(?optionalTarget:Vector3):Vector3;
	function lookAt(vector:Vector3):Void;
	function clone(?camera:Camera):Camera;
}
extern class CubeCamera extends Object3D {
	function new(?near:Float, ?far:Float, ?cubeResolution:Float):Void;
	var renderTarget : WebGLRenderTargetCube;
	function updateCubeMap(renderer:Renderer, scene:Scene):Void;
}
extern class OrthographicCamera extends Camera {
	function new(left:Float, right:Float, top:Float, bottom:Float, ?near:Float, ?far:Float):Void;
	var zoom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
	var bottom : Float;
	var near : Float;
	var far : Float;
	function updateProjectionMatrix():Void;
	function clone():OrthographicCamera;
}
extern class PerspectiveCamera extends Camera {
	function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float):Void;
	var zoom : Float;
	var fov : Float;
	var aspect : Float;
	var near : Float;
	var far : Float;
	function setLens(focalLength:Float, ?frameHeight:Float):Void;
	function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function updateProjectionMatrix():Void;
	function clone():PerspectiveCamera;
}
extern class BufferAttribute {
	function new(array:Dynamic, itemSize:Float):Void;
	var array : Array<Float>;
	var itemSize : Float;
	var needsUpdate : Bool;
	var length : Float;
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float):Void;
	function set(value:Float, ?offset:Float):BufferAttribute;
	function setX(index:Float, x:Float):BufferAttribute;
	function setY(index:Float, y:Float):BufferAttribute;
	function setZ(index:Float, z:Float):BufferAttribute;
	function setXY(index:Float, x:Float, y:Float):BufferAttribute;
	function setXYZ(index:Float, x:Float, y:Float, z:Float):BufferAttribute;
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):BufferAttribute;
	function clone():BufferAttribute;
}
extern class Int8Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Uint8Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Uint8ClampedAttribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Int16Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Uint16Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Int32Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Uint32Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Float32Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class Float64Attribute extends BufferAttribute {
	function new(data:Dynamic, itemSize:Float):Void;
}
extern class BufferGeometry {
	function new():Void;
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var attributes : Array<BufferAttribute>;
	var attributesKeys : Array<String>;
	var drawcalls : Array<{ var start : Float; var count : Float; var index : Float; }>;
	var offsets : Array<{ var start : Float; var count : Float; var index : Float; }>;
	var boundingBox : Box3;
	var boundingSphere : BoundingSphere;
	@:overload(function(name:String, array:Dynamic, itemSize:Float):Dynamic { })
	function addAttribute(name:String, attribute:BufferAttribute):Dynamic;
	function getAttribute(name:String):Dynamic;
	function addDrawCall(start:Float, count:Float, index:Float):Void;
	function applyMatrix(matrix:Matrix4):Void;
	function center():Vector3;
	function fromGeometry(geometry:Geometry, ?settings:Dynamic):BufferGeometry;
	function computeBoundingBox():Void;
	function computeBoundingSphere():Void;
	function computeFaceNormals():Void;
	function computeVertexNormals():Void;
	function computeTangents():Void;
	function computeOffsets(size:Float):Void;
	function merge(geometry:BufferGeometry, offset:Float):BufferGeometry;
	function normalizeNormals():Void;
	function reorderBuffers(indexBuffer:Float, indexMap:Array<Float>, vertexCount:Float):Void;
	function toJSON():Dynamic;
	function clone():BufferGeometry;
	function dispose():Void;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
extern class Clock {
	function new(?autoStart:Bool):Void;
	var autoStart : Bool;
	var startTime : Float;
	var oldTime : Float;
	var elapsedTime : Float;
	var running : Bool;
	function start():Void;
	function stop():Void;
	function getElapsedTime():Float;
	function getDelta():Float;
}
extern class DynamicBufferAttribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float):Void;
	var updateRange : { var offset : Float; var count : Float; };
	function clone():DynamicBufferAttribute;
}
extern class EventDispatcher {
	function new():Void;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
extern class Face3 {
	@:overload(function(a:Float, b:Float, c:Float, ?normal:Vector3, ?vertexColors:Array<Color>, ?materialIndex:Float):Void { })
	@:overload(function(a:Float, b:Float, c:Float, ?vertexNormals:Array<Vector3>, ?color:Color, ?materialIndex:Float):Void { })
	@:overload(function(a:Float, b:Float, c:Float, ?vertexNormals:Array<Vector3>, ?vertexColors:Array<Color>, ?materialIndex:Float):Void { })
	function new(a:Float, b:Float, c:Float, ?normal:Vector3, ?color:Color, ?materialIndex:Float):Void;
	var a : Float;
	var b : Float;
	var c : Float;
	var normal : Vector3;
	var vertexNormals : Array<Vector3>;
	var color : Color;
	var vertexColors : Array<Color>;
	var vertexTangents : Array<Float>;
	var materialIndex : Float;
	function clone():Face3;
}
typedef MorphTarget = {
	var name : String;
	var vertices : Array<Vector3>;
};
typedef MorphColor = {
	var name : String;
	var colors : Array<Color>;
};
typedef MorphNormals = {
	var name : String;
	var normals : Array<Vector3>;
};
typedef BoundingSphere = {
	var radius : Float;
};
extern class Geometry {
	function new():Void;
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var vertices : Array<Vector3>;
	var colors : Array<Color>;
	var faces : Array<Face3>;
	var faceVertexUvs : Array<Array<Array<Vector2>>>;
	var morphTargets : Array<MorphTarget>;
	var morphColors : Array<MorphColor>;
	var morphNormals : Array<MorphNormals>;
	var skinWeights : Array<Float>;
	var skinIndices : Array<Float>;
	var lineDistances : Array<Float>;
	var boundingBox : Box3;
	var boundingSphere : BoundingSphere;
	var hasTangents : Bool;
	var dynamic : Bool;
	var verticesNeedUpdate : Bool;
	var elementsNeedUpdate : Bool;
	var uvsNeedUpdate : Bool;
	var normalsNeedUpdate : Bool;
	var tangentsNeedUpdate : Bool;
	var colorsNeedUpdate : Bool;
	var lineDistancesNeedUpdate : Bool;
	var groupsNeedUpdate : Bool;
	function applyMatrix(matrix:Matrix4):Void;
	function fromBufferGeometry(geometry:BufferGeometry):Geometry;
	function center():Vector3;
	function computeFaceNormals():Void;
	function computeVertexNormals(?areaWeighted:Bool):Void;
	function computeMorphNormals():Void;
	function computeTangents():Void;
	function computeLineDistances():Void;
	function computeBoundingBox():Void;
	function computeBoundingSphere():Void;
	function merge(geometry:Geometry, matrix:Matrix, materialIndexOffset:Float):Void;
	function mergeMesh(mesh:Mesh):Void;
	function mergeVertices():Float;
	function toJSON():Dynamic;
	function clone():Geometry;
	function dispose():Void;
	var bones : Array<Bone>;
	var animation : AnimationData;
	var animations : Array<AnimationData>;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
extern class Object3D {
	function new():Void;
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var parent : Object3D;
	var children : Array<Object3D>;
	var up : Vector3;
	var position : Vector3;
	var rotation : Euler;
	var quaternion : Quaternion;
	var scale : Vector3;
	var rotationAutoUpdate : Bool;
	var matrix : Matrix4;
	var matrixWorld : Matrix4;
	var matrixAutoUpdate : Bool;
	var matrixWorldNeedsUpdate : Bool;
	var visible : Bool;
	var castShadow : Bool;
	var receiveShadow : Bool;
	var frustumCulled : Bool;
	var renderOrder : Float;
	var userData : Dynamic;
	static var DefaultUp : Vector3;
	var eulerOrder : String;
	function applyMatrix(matrix:Matrix4):Void;
	function setRotationFromAxisAngle(axis:Vector3, angle:Float):Void;
	function setRotationFromEuler(euler:Euler):Void;
	function setRotationFromMatrix(m:Matrix4):Void;
	function setRotationFromQuaternion(q:Quaternion):Void;
	function rotateOnAxis(axis:Vector3, angle:Float):Object3D;
	function rotateX(angle:Float):Object3D;
	function rotateY(angle:Float):Object3D;
	function rotateZ(angle:Float):Object3D;
	function translateOnAxis(axis:Vector3, distance:Float):Object3D;
	function translate(distance:Float, axis:Vector3):Object3D;
	function translateX(distance:Float):Object3D;
	function translateY(distance:Float):Object3D;
	function translateZ(distance:Float):Object3D;
	function localToWorld(vector:Vector3):Vector3;
	function worldToLocal(vector:Vector3):Vector3;
	function lookAt(vector:Vector3):Void;
	function add(object:Object3D):Void;
	function remove(object:Object3D):Void;
	function getChildByName(name:String):Object3D;
	function getObjectById(id:String):Object3D;
	function getObjectByName(name:String):Object3D;
	function getObjectByProperty(name:String, value:String):Object3D;
	function getWorldPosition(?optionalTarget:Vector3):Vector3;
	function getWorldQuaternion(?optionalTarget:Quaternion):Quaternion;
	function getWorldRotation(?optionalTarget:Euler):Euler;
	function getWorldScale(?optionalTarget:Vector3):Vector3;
	function getWorldDirection(?optionalTarget:Vector3):Vector3;
	function traverse(callback:Object3D -> Dynamic):Void;
	function traverseVisible(callback:Object3D -> Dynamic):Void;
	function traverseAncestors(callback:Object3D -> Dynamic):Void;
	function updateMatrix():Void;
	function updateMatrixWorld(force:Bool):Void;
	function toJSON():Dynamic;
	function clone(?object:Object3D, ?recursive:Bool):Object3D;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
typedef Intersection = {
	var distance : Float;
	var point : Vector3;
	var face : Face3;
	var object : Object3D;
};
typedef RaycasterParameters = {
	@:optional
	var Sprite : Dynamic;
	@:optional
	var Mesh : Dynamic;
	@:optional
	var PointCloud : Dynamic;
	@:optional
	var LOD : Dynamic;
	@:optional
	var Line : Dynamic;
};
extern class Raycaster {
	function new(?origin:Vector3, ?direction:Vector3, ?near:Float, ?far:Float):Void;
	var ray : Ray;
	var near : Float;
	var far : Float;
	var params : RaycasterParameters;
	var precision : Float;
	var linePrecision : Float;
	function set(origin:Vector3, direction:Vector3):Void;
	function setFromCamera(coords:{ var x : Float; var y : Float; }, camera:Camera):Void;
	function intersectObject(object:Object3D, ?recursive:Bool):Array<Intersection>;
	function intersectObjects(objects:Array<Object3D>, ?recursive:Bool):Array<Intersection>;
}
extern class Light extends Object3D {
	function new(?hex:Float):Void;
	var color : Color;
	function clone(?light:Light):Light;
}
extern class AmbientLight extends Light {
	function new(?hex:Float):Void;
	function clone():AmbientLight;
}
extern class AreaLight extends Light {
	function new(hex:Float, ?intensity:Float):Void;
	var normal : Vector3;
	var right : Vector3;
	var intensity : Float;
	var width : Float;
	var height : Float;
	var constantAttenuation : Float;
	var linearAttenuation : Float;
	var quadraticAttenuation : Float;
}
extern class DirectionalLight extends Light {
	function new(?hex:Float, ?intensity:Float):Void;
	var target : Object3D;
	var intensity : Float;
	var castShadow : Bool;
	var onlyShadow : Bool;
	var shadowCameraNear : Float;
	var shadowCameraFar : Float;
	var shadowCameraLeft : Float;
	var shadowCameraRight : Float;
	var shadowCameraTop : Float;
	var shadowCameraBottom : Float;
	var shadowCameraVisible : Bool;
	var shadowBias : Float;
	var shadowDarkness : Float;
	var shadowMapWidth : Float;
	var shadowMapHeight : Float;
	var shadowCascade : Bool;
	var shadowCascadeOffset : Vector3;
	var shadowCascadeCount : Float;
	var shadowCascadeBias : Array<Float>;
	var shadowCascadeWidth : Array<Float>;
	var shadowCascadeHeight : Array<Float>;
	var shadowCascadeNearZ : Array<Float>;
	var shadowCascadeFarZ : Array<Float>;
	var shadowCascadeArray : Array<DirectionalLight>;
	var shadowMap : RenderTarget;
	var shadowMapSize : Float;
	var shadowCamera : Camera;
	var shadowMatrix : Matrix4;
	function clone():DirectionalLight;
}
extern class HemisphereLight extends Light {
	function new(?skyColorHex:Float, ?groundColorHex:Float, ?intensity:Float):Void;
	var groundColor : Color;
	var intensity : Float;
	function clone():HemisphereLight;
}
extern class PointLight extends Light {
	function new(?hex:Float, ?intensity:Float, ?distance:Float, ?decay:Float):Void;
	var intensity : Float;
	var distance : Float;
	var decay : Float;
	function clone():PointLight;
}
extern class SpotLight extends Light {
	function new(?hex:Float, ?intensity:Float, ?distance:Float, ?angle:Float, ?exponent:Float, ?decay:Float):Void;
	var target : Object3D;
	var intensity : Float;
	var distance : Float;
	var angle : Float;
	var exponent : Float;
	var decay : Float;
	var castShadow : Bool;
	var onlyShadow : Bool;
	var shadowCameraNear : Float;
	var shadowCameraFar : Float;
	var shadowCameraFov : Float;
	var shadowCameraVisible : Bool;
	var shadowBias : Float;
	var shadowDarkness : Float;
	var shadowMapWidth : Float;
	var shadowMapHeight : Float;
	var shadowMap : RenderTarget;
	var shadowMapSize : Vector2;
	var shadowCamera : Camera;
	var shadowMatrix : Matrix4;
	function clone():SpotLight;
}
typedef Progress = {
	var total : Float;
	var loaded : Float;
};
extern class Loader {
	function new(?showStatus:Bool):Void;
	var showStatus : Bool;
	var statusDomElement : HTMLElement;
	var imageLoader : ImageLoader;
	var onLoadStart : Void -> Void;
	var onLoadProgress : Void -> Void;
	var onLoadComplete : Void -> Void;
	var crossOrigin : String;
	function addStatusElement():HTMLElement;
	function updateProgress(progress:Progress):Void;
	function extractUrlBase(url:String):String;
	function initMaterials(materials:Array<Material>, texturePath:String):Array<Material>;
	function needsTangents(materials:Array<Material>):Bool;
	function createMaterial(m:Material, texturePath:String):Bool;
	static var Handlers : LoaderHandler;
}
typedef LoaderHandler = {
	var handlers : Array<Dynamic>;
	function add(regex:String, loader:Loader):Void;
	function get(file:String):Loader;
};
extern class BinaryTextureLoader {
	function new():Void;
	function load(url:String, onLoad:DataTexture -> Void, ?onProgress:Dynamic -> Void, ?onError:Dynamic -> Void):Void;
}
extern class BufferGeometryLoader {
	function new(?manager:LoadingManager):Void;
	var manager : LoadingManager;
	function load(url:String, onLoad:BufferGeometry -> Void, ?onProgress:Dynamic -> Void, ?onError:Dynamic -> Void):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse(json:Dynamic):BufferGeometry;
}
typedef Cache = {
	var files : Array<Dynamic>;
	function add(key:String, file:Dynamic):Void;
	function get(key:String):Dynamic;
	function remove(key:String):Void;
	function clear():Void;
};
extern class CompressedTextureLoader {
	function new():Void;
	function load(url:String, onLoad:BufferGeometry -> Void, ?onError:Dynamic -> Void):Void;
}
extern class DataTextureLoader extends BinaryTextureLoader {

}
extern class ImageLoader {
	function new(?manager:LoadingManager):Void;
	var cache : Cache;
	var manager : LoadingManager;
	var crossOrigin : String;
	function load(url:String, ?onLoad:HTMLImageElement -> Void, ?onProgress:Dynamic -> Void, ?onError:Dynamic -> Void):HTMLImageElement;
	function setCrossOrigin(crossOrigin:String):Void;
}
extern class JSONLoader extends Loader {
	function new(?showStatus:Bool):Void;
	var withCredentials : Bool;
	function load(url:String, callback:Geometry -> Array<Material> -> Void, ?texturePath:String):Void;
	function loadAjaxJSON(context:JSONLoader, url:String, callback:Geometry -> Array<Material> -> Void, ?texturePath:String, ?callbackProgress:Progress -> Void):Void;
	function parse(json:Dynamic, ?texturePath:String):{ var geometry : Geometry; @:optional
	var materials : Array<Material>; };
}
extern class LoadingManager {
	function new(?onLoad:Void -> Void, ?onProgress:String -> Float -> Float -> Void, ?onError:Void -> Void):Void;
	var onLoad : Void -> Void;
	var onProgress : Dynamic -> Float -> Float -> Void;
	var onError : Void -> Void;
	function itemStart(url:String):Void;
	function itemEnd(url:String):Void;
}
extern class MaterialLoader {
	function new(?manager:LoadingManager):Void;
	var manager : LoadingManager;
	function load(url:String, onLoad:Material -> Void):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse(json:Dynamic):Material;
}
extern class ObjectLoader {
	function new(?manager:LoadingManager):Void;
	var manager : LoadingManager;
	var texturePass : String;
	function load(url:String, ?onLoad:Object3D -> Void):Void;
	function setTexturePath(value:String):Void;
	function setCrossOrigin(crossOrigin:String):Void;
	function parse<T:(Object3D)>(json:Dynamic, ?onLoad:Object3D -> Void):T;
	function parseGeometries(json:Dynamic):Array<Dynamic>;
	function parseMaterials(json:Dynamic, textures:Array<Texture>):Array<Material>;
	function parseImages(json:Dynamic, onLoad:Void -> Void):Array<Dynamic>;
	function parseTextures(json:Dynamic, images:Dynamic):Array<Texture>;
	function parseObject<T:(Object3D)>(data:Dynamic, geometries:Array<Dynamic>, materials:Array<Material>):T;
}
extern class TextureLoader {
	function new(?manager:LoadingManager):Void;
	var manager : LoadingManager;
	var crossOrigin : String;
	function load(url:String, onLoad:Texture -> Void):Void;
	function setCrossOrigin(crossOrigin:String):Void;
}
extern class XHRLoader {
	function new(?manager:LoadingManager):Void;
	var cache : Cache;
	var manager : LoadingManager;
	var responseType : String;
	var crossOrigin : String;
	function load(url:String, ?onLoad:String -> Void, ?onProgress:Dynamic -> Void, ?onError:Dynamic -> Void):Void;
	function setResponseType(responseType:String):Void;
	function setCrossOrigin(crossOrigin:String):Void;
}
typedef MaterialParameters = {
	@:optional
	var name : String;
	@:optional
	var side : Side;
	@:optional
	var opacity : Float;
	@:optional
	var transparent : Bool;
	@:optional
	var blending : Blending;
	@:optional
	var blendSrc : BlendingDstFactor;
	@:optional
	var blendDst : BlendingSrcFactor;
	@:optional
	var blendEquation : BlendingEquation;
	@:optional
	var depthTest : Bool;
	@:optional
	var depthWrite : Bool;
	@:optional
	var polygonOffset : Bool;
	@:optional
	var polygonOffsetFactor : Float;
	@:optional
	var polygonOffsetUnits : Float;
	@:optional
	var alphaTest : Float;
	@:optional
	var overdraw : Float;
	@:optional
	var visible : Bool;
	@:optional
	var needsUpdate : Bool;
};
extern class Material {
	function new():Void;
	var id : Float;
	var uuid : String;
	var name : String;
	var type : String;
	var side : Side;
	var opacity : Float;
	var transparent : Bool;
	var blending : Blending;
	var blendSrc : BlendingDstFactor;
	var blendDst : BlendingSrcFactor;
	var blendEquation : BlendingEquation;
	var blendSrcAlpha : Float;
	var blendDstAlpha : Float;
	var blendEquationAlpha : Float;
	var depthTest : Bool;
	var depthWrite : Bool;
	var colorWrite : Bool;
	var polygonOffset : Bool;
	var polygonOffsetFactor : Float;
	var polygonOffsetUnits : Float;
	var alphaTest : Float;
	var overdraw : Float;
	var visible : Bool;
	var needsUpdate : Bool;
	function setValues(values:Dynamic):Void;
	function toJSON():Dynamic;
	function clone(?material:Material):Material;
	function update():Void;
	function dispose():Void;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
typedef LineBasicMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var linewidth : Float;
	@:optional
	var linecap : String;
	@:optional
	var linejoin : String;
	@:optional
	var vertexColors : Colors;
	@:optional
	var fog : Bool;
};
extern class LineBasicMaterial extends Material {
	function new(?parameters:LineBasicMaterialParameters):Void;
	var color : Color;
	var linewidth : Float;
	var linecap : String;
	var linejoin : String;
	var vertexColors : Colors;
	var fog : Bool;
	function clone():LineBasicMaterial;
}
typedef LineDashedMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var linewidth : Float;
	@:optional
	var scale : Float;
	@:optional
	var dashSize : Float;
	@:optional
	var gapSize : Float;
	@:optional
	var vertexColors : Colors;
	@:optional
	var fog : Bool;
};
extern class LineDashedMaterial extends Material {
	function new(?parameters:LineDashedMaterialParameters):Void;
	var color : Color;
	var linewidth : Float;
	var scale : Float;
	var dashSize : Float;
	var gapSize : Float;
	var vertexColors : Colors;
	var fog : Bool;
	function clone():LineDashedMaterial;
}
typedef MeshBasicMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var map : Texture;
	@:optional
	var lightMap : Texture;
	@:optional
	var specularMap : Texture;
	@:optional
	var alphaMap : Texture;
	@:optional
	var envMap : Texture;
	@:optional
	var combine : Combine;
	@:optional
	var reflectivity : Float;
	@:optional
	var refractionRatio : Float;
	@:optional
	var fog : Bool;
	@:optional
	var shading : Shading;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var wireframeLinecap : String;
	@:optional
	var wireframeLinejoin : String;
	@:optional
	var vertexColors : Colors;
	@:optional
	var skinning : Bool;
	@:optional
	var morphTargets : Bool;
};
extern class MeshBasicMaterial extends Material {
	function new(?parameters:MeshBasicMaterialParameters):Void;
	var color : Color;
	var map : Texture;
	var lightMap : Texture;
	var specularMap : Texture;
	var alphaMap : Texture;
	var envMap : Texture;
	var combine : Combine;
	var reflectivity : Float;
	var refractionRatio : Float;
	var fog : Bool;
	var shading : Shading;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var wireframeLinecap : String;
	var wireframeLinejoin : String;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	function clone():MeshBasicMaterial;
}
typedef MeshDepthMaterialParameters = {
	>MaterialParameters,
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
};
extern class MeshDepthMaterial extends Material {
	function new(?parameters:MeshDepthMaterialParameters):Void;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	function clone():MeshDepthMaterial;
}
extern class MeshFaceMaterial extends Material {
	function new(?materials:Array<Material>):Void;
	var materials : Array<Material>;
	function toJSON():Dynamic;
	function clone():MeshFaceMaterial;
}
typedef MeshLambertMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var emissive : Float;
	@:optional
	var wrapAround : Bool;
	@:optional
	var wrapRGB : Vector3;
	@:optional
	var map : Texture;
	@:optional
	var lightMap : Texture;
	@:optional
	var specularMap : Texture;
	@:optional
	var alphaMap : Texture;
	@:optional
	var envMap : Texture;
	@:optional
	var combine : Combine;
	@:optional
	var reflectivity : Float;
	@:optional
	var refractionRatio : Float;
	@:optional
	var fog : Bool;
	@:optional
	var shading : Shading;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var wireframeLinecap : String;
	@:optional
	var wireframeLinejoin : String;
	@:optional
	var vertexColors : Colors;
	@:optional
	var skinning : Bool;
	@:optional
	var morphTargets : Bool;
	@:optional
	var morphNormals : Bool;
};
extern class MeshLambertMaterial extends Material {
	function new(?parameters:MeshLambertMaterialParameters):Void;
	var color : Color;
	var emissive : Color;
	var wrapAround : Bool;
	var wrapRGB : Vector3;
	var map : Texture;
	var lightMap : Texture;
	var specularMap : Texture;
	var alphaMap : Texture;
	var envMap : Texture;
	var combine : Combine;
	var reflectivity : Float;
	var refractionRatio : Float;
	var fog : Bool;
	var shading : Shading;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var wireframeLinecap : String;
	var wireframeLinejoin : String;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	function clone():MeshLambertMaterial;
}
typedef MeshNormalMaterialParameters = {
	>MaterialParameters,
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var morphTargets : Bool;
};
extern class MeshNormalMaterial extends Material {
	function new(?parameters:MeshNormalMaterialParameters):Void;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var morphTargets : Bool;
	function clone():MeshNormalMaterial;
}
typedef MeshPhongMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var emissive : Float;
	@:optional
	var specular : Float;
	@:optional
	var shininess : Float;
	@:optional
	var metal : Bool;
	@:optional
	var wrapAround : Bool;
	@:optional
	var wrapRGB : Vector3;
	@:optional
	var map : Texture;
	@:optional
	var lightMap : Texture;
	@:optional
	var bumpMap : Texture;
	@:optional
	var bumpScale : Float;
	@:optional
	var normalMap : Texture;
	@:optional
	var normalScale : Vector2;
	@:optional
	var specularMap : Texture;
	@:optional
	var alphaMap : Texture;
	@:optional
	var envMap : Texture;
	@:optional
	var combine : Combine;
	@:optional
	var reflectivity : Float;
	@:optional
	var refractionRatio : Float;
	@:optional
	var fog : Bool;
	@:optional
	var shading : Shading;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var wireframeLinecap : String;
	@:optional
	var wireframeLinejoin : String;
	@:optional
	var vertexColors : Colors;
	@:optional
	var skinning : Bool;
	@:optional
	var morphTargets : Bool;
	@:optional
	var morphNormals : Bool;
};
extern class MeshPhongMaterial extends Material {
	function new(?parameters:MeshPhongMaterialParameters):Void;
	var color : Color;
	var emissive : Color;
	var specular : Color;
	var shininess : Float;
	var metal : Bool;
	var wrapAround : Bool;
	var wrapRGB : Vector3;
	var map : Texture;
	var lightMap : Texture;
	var bumpMap : Texture;
	var bumpScale : Float;
	var normalMap : Texture;
	var normalScale : Vector2;
	var specularMap : Texture;
	var alphaMap : Texture;
	var envMap : Texture;
	var combine : Combine;
	var reflectivity : Float;
	var refractionRatio : Float;
	var fog : Bool;
	var shading : Shading;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var wireframeLinecap : String;
	var wireframeLinejoin : String;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	function clone():MeshPhongMaterial;
}
typedef PointCloudMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var map : Texture;
	@:optional
	var size : Float;
	@:optional
	var sizeAttenuation : Bool;
	@:optional
	var vertexColors : Colors;
	@:optional
	var fog : Bool;
};
extern class PointCloudMaterial extends Material {
	function new(?parameters:PointCloudMaterialParameters):Void;
	var color : Color;
	var map : Texture;
	var size : Float;
	var sizeAttenuation : Bool;
	var vertexColors : Bool;
	var fog : Bool;
	function clone():PointCloudMaterial;
}
extern class ParticleBasicMaterial extends PointCloudMaterial {

}
extern class ParticleSystemMaterial extends PointCloudMaterial {

}
extern class RawShaderMaterial extends ShaderMaterial {
	function new(?parameters:ShaderMaterialParameters):Void;
}
typedef ShaderMaterialParameters = {
	>MaterialParameters,
	@:optional
	var defines : Dynamic;
	@:optional
	var uniforms : Dynamic;
	@:optional
	var attributes : Dynamic;
	@:optional
	var vertexShader : String;
	@:optional
	var fragmentShader : String;
	@:optional
	var shading : Shading;
	@:optional
	var linewidth : Float;
	@:optional
	var wireframe : Bool;
	@:optional
	var wireframeLinewidth : Float;
	@:optional
	var fog : Bool;
	@:optional
	var lights : Bool;
	@:optional
	var vertexColors : Colors;
	@:optional
	var skinning : Bool;
	@:optional
	var morphTargets : Bool;
	@:optional
	var morphNormals : Bool;
};
extern class ShaderMaterial extends Material {
	function new(?parameters:ShaderMaterialParameters):Void;
	var defines : Dynamic;
	var uniforms : Dynamic;
	var attributes : Dynamic;
	var vertexShader : String;
	var fragmentShader : String;
	var shading : Shading;
	var linewidth : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var fog : Bool;
	var lights : Bool;
	var vertexColors : Colors;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	function clone():ShaderMaterial;
}
typedef SpriteMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
	@:optional
	var map : Texture;
	@:optional
	var rotation : Float;
	@:optional
	var fog : Bool;
};
extern class SpriteMaterial extends Material {
	function new(?parameters:SpriteMaterialParameters):Void;
	var color : Color;
	var map : Texture;
	var rotation : Float;
	var fog : Bool;
	function clone():SpriteMaterial;
}
extern class Box2 {
	function new(?min:Vector2, ?max:Vector2):Void;
	var max : Vector2;
	var min : Vector2;
	function set(min:Vector2, max:Vector2):Box2;
	function setFromPoints(points:Array<Vector2>):Box2;
	function setFromCenterAndSize(center:Vector2, size:Vector2):Box2;
	function copy(box:Box2):Box2;
	function makeEmpty():Box2;
	function empty():Bool;
	function center(?optionalTarget:Vector2):Vector2;
	function size(?optionalTarget:Vector2):Vector2;
	function expandByPoint(point:Vector2):Box2;
	function expandByVector(vector:Vector2):Box2;
	function expandByScalar(scalar:Float):Box2;
	function containsPoint(point:Vector2):Bool;
	function containsBox(box:Box2):Bool;
	function getParameter(point:Vector2):Vector2;
	function isIntersectionBox(box:Box2):Bool;
	function clampPoint(point:Vector2, ?optionalTarget:Vector2):Vector2;
	function distanceToPoint(point:Vector2):Float;
	function intersect(box:Box2):Box2;
	function union(box:Box2):Box2;
	function translate(offset:Vector2):Box2;
	function equals(box:Box2):Bool;
	function clone():Box2;
}
extern class Box3 {
	function new(?min:Vector3, ?max:Vector3):Void;
	var max : Vector3;
	var min : Vector3;
	function set(min:Vector3, max:Vector3):Box3;
	function setFromPoints(points:Array<Vector3>):Box3;
	function setFromCenterAndSize(center:Vector3, size:Vector3):Box3;
	function setFromObject(object:Object3D):Box3;
	function copy(box:Box3):Box3;
	function makeEmpty():Box3;
	function empty():Bool;
	function center(?optionalTarget:Vector3):Vector3;
	function size(?optionalTarget:Vector3):Vector3;
	function expandByPoint(point:Vector3):Box3;
	function expandByVector(vector:Vector3):Box3;
	function expandByScalar(scalar:Float):Box3;
	function containsPoint(point:Vector3):Bool;
	function containsBox(box:Box3):Bool;
	function getParameter(point:Vector3):Vector3;
	function isIntersectionBox(box:Box3):Bool;
	function clampPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	function distanceToPoint(point:Vector3):Float;
	function getBoundingSphere(?optionalTarget:Sphere):Sphere;
	function intersect(box:Box3):Box3;
	function union(box:Box3):Box3;
	function applyMatrix4(matrix:Matrix4):Box3;
	function translate(offset:Vector3):Box3;
	function equals(box:Box3):Bool;
	function clone():Box3;
}
typedef HSL = {
	var h : Float;
	var s : Float;
	var l : Float;
};
extern class Color {
	@:overload(function(?color:String):Void { })
	@:overload(function(?color:Float):Void { })
	@:overload(function(r:Float, g:Float, b:Float):Void { })
	function new(?color:Color):Void;
	var r : Float;
	var g : Float;
	var b : Float;
	@:overload(function(color:Float):Color { })
	@:overload(function(color:String):Color { })
	function set(color:Color):Color;
	function setHex(hex:Float):Color;
	function setRGB(r:Float, g:Float, b:Float):Color;
	function setHSL(h:Float, s:Float, l:Float):Color;
	function setStyle(style:String):Color;
	function copy(color:Color):Color;
	function copyGammaToLinear(color:Color, ?gammaFactor:Float):Color;
	function copyLinearToGamma(color:Color, ?gammaFactor:Float):Color;
	function convertGammaToLinear():Color;
	function convertLinearToGamma():Color;
	function getHex():Float;
	function getHexString():String;
	function getHSL():HSL;
	function getStyle():String;
	function offsetHSL(h:Float, s:Float, l:Float):Color;
	function add(color:Color):Color;
	function addColors(color1:Color, color2:Color):Color;
	function addScalar(s:Float):Color;
	function multiply(color:Color):Color;
	function multiplyScalar(s:Float):Color;
	function lerp(color:Color, alpha:Float):Color;
	function equals(color:Color):Bool;
	function fromArray(rgb:Array<Float>):Color;
	function toArray(?array:Array<Float>, ?offset:Float):Array<Float>;
	function clone():Color;
}
extern class ColorKeywords {
	static var aliceblue : Float;
	static var antiquewhite : Float;
	static var aqua : Float;
	static var aquamarine : Float;
	static var azure : Float;
	static var beige : Float;
	static var bisque : Float;
	static var black : Float;
	static var blanchedalmond : Float;
	static var blue : Float;
	static var blueviolet : Float;
	static var brown : Float;
	static var burlywood : Float;
	static var cadetblue : Float;
	static var chartreuse : Float;
	static var chocolate : Float;
	static var coral : Float;
	static var cornflowerblue : Float;
	static var cornsilk : Float;
	static var crimson : Float;
	static var cyan : Float;
	static var darkblue : Float;
	static var darkcyan : Float;
	static var darkgoldenrod : Float;
	static var darkgray : Float;
	static var darkgreen : Float;
	static var darkgrey : Float;
	static var darkkhaki : Float;
	static var darkmagenta : Float;
	static var darkolivegreen : Float;
	static var darkorange : Float;
	static var darkorchid : Float;
	static var darkred : Float;
	static var darksalmon : Float;
	static var darkseagreen : Float;
	static var darkslateblue : Float;
	static var darkslategray : Float;
	static var darkslategrey : Float;
	static var darkturquoise : Float;
	static var darkviolet : Float;
	static var deeppink : Float;
	static var deepskyblue : Float;
	static var dimgray : Float;
	static var dimgrey : Float;
	static var dodgerblue : Float;
	static var firebrick : Float;
	static var floralwhite : Float;
	static var forestgreen : Float;
	static var fuchsia : Float;
	static var gainsboro : Float;
	static var ghostwhite : Float;
	static var gold : Float;
	static var goldenrod : Float;
	static var gray : Float;
	static var green : Float;
	static var greenyellow : Float;
	static var grey : Float;
	static var honeydew : Float;
	static var hotpink : Float;
	static var indianred : Float;
	static var indigo : Float;
	static var ivory : Float;
	static var khaki : Float;
	static var lavender : Float;
	static var lavenderblush : Float;
	static var lawngreen : Float;
	static var lemonchiffon : Float;
	static var lightblue : Float;
	static var lightcoral : Float;
	static var lightcyan : Float;
	static var lightgoldenrodyellow : Float;
	static var lightgray : Float;
	static var lightgreen : Float;
	static var lightgrey : Float;
	static var lightpink : Float;
	static var lightsalmon : Float;
	static var lightseagreen : Float;
	static var lightskyblue : Float;
	static var lightslategray : Float;
	static var lightslategrey : Float;
	static var lightsteelblue : Float;
	static var lightyellow : Float;
	static var lime : Float;
	static var limegreen : Float;
	static var linen : Float;
	static var magenta : Float;
	static var maroon : Float;
	static var mediumaquamarine : Float;
	static var mediumblue : Float;
	static var mediumorchid : Float;
	static var mediumpurple : Float;
	static var mediumseagreen : Float;
	static var mediumslateblue : Float;
	static var mediumspringgreen : Float;
	static var mediumturquoise : Float;
	static var mediumvioletred : Float;
	static var midnightblue : Float;
	static var mintcream : Float;
	static var mistyrose : Float;
	static var moccasin : Float;
	static var navajowhite : Float;
	static var navy : Float;
	static var oldlace : Float;
	static var olive : Float;
	static var olivedrab : Float;
	static var orange : Float;
	static var orangered : Float;
	static var orchid : Float;
	static var palegoldenrod : Float;
	static var palegreen : Float;
	static var paleturquoise : Float;
	static var palevioletred : Float;
	static var papayawhip : Float;
	static var peachpuff : Float;
	static var peru : Float;
	static var pink : Float;
	static var plum : Float;
	static var powderblue : Float;
	static var purple : Float;
	static var red : Float;
	static var rosybrown : Float;
	static var royalblue : Float;
	static var saddlebrown : Float;
	static var salmon : Float;
	static var sandybrown : Float;
	static var seagreen : Float;
	static var seashell : Float;
	static var sienna : Float;
	static var silver : Float;
	static var skyblue : Float;
	static var slateblue : Float;
	static var slategray : Float;
	static var slategrey : Float;
	static var snow : Float;
	static var springgreen : Float;
	static var steelblue : Float;
	static var tan : Float;
	static var teal : Float;
	static var thistle : Float;
	static var tomato : Float;
	static var turquoise : Float;
	static var violet : Float;
	static var wheat : Float;
	static var white : Float;
	static var whitesmoke : Float;
	static var yellow : Float;
	static var yellowgreen : Float;
}
extern class Euler {
	function new(?x:Float, ?y:Float, ?z:Float, ?order:String):Void;
	var x : Float;
	var y : Float;
	var z : Float;
	var order : String;
	function set(x:Float, y:Float, z:Float, ?order:String):Euler;
	function copy(euler:Euler):Euler;
	function setFromRotationMatrix(m:Matrix4, ?order:String, ?update:Bool):Euler;
	function setFromQuaternion(q:Quaternion, ?order:String, ?update:Bool):Euler;
	function setFromVector3(v:Vector3, ?order:String):Euler;
	function reorder(newOrder:String):Euler;
	function equals(euler:Euler):Bool;
	function fromArray(xyzo:Array<Dynamic>):Euler;
	function toArray(?array:Array<Float>, ?offset:Float):Array<Float>;
	function toVector3(?optionalResult:Vector3):Vector3;
	var onChange : Void -> Void;
	function clone():Euler;
}
extern class Frustum {
	function new(?p0:Plane, ?p1:Plane, ?p2:Plane, ?p3:Plane, ?p4:Plane, ?p5:Plane):Void;
	var planes : Array<Plane>;
	function set(?p0:Float, ?p1:Float, ?p2:Float, ?p3:Float, ?p4:Float, ?p5:Float):Frustum;
	function copy(frustum:Frustum):Frustum;
	function setFromMatrix(m:Matrix4):Frustum;
	function intersectsObject(object:Object3D):Bool;
	function intersectsSphere(sphere:Sphere):Bool;
	function intersectsBox(box:Box3):Bool;
	function containsPoint(point:Vector3):Bool;
	function clone():Frustum;
}
extern class Line3 {
	function new(?start:Vector3, ?end:Vector3):Void;
	var start : Vector3;
	var end : Vector3;
	function set(?start:Vector3, ?end:Vector3):Line3;
	function copy(line:Line3):Line3;
	function center(?optionalTarget:Vector3):Vector3;
	function delta(?optionalTarget:Vector3):Vector3;
	function distanceSq():Float;
	function distance():Float;
	function at(t:Float, ?optionalTarget:Vector3):Vector3;
	function closestPointToPointParameter(point:Vector3, ?clampToLine:Bool):Float;
	function closestPointToPoint(point:Vector3, ?clampToLine:Bool, ?optionalTarget:Vector3):Vector3;
	function applyMatrix4(matrix:Matrix4):Line3;
	function equals(line:Line3):Bool;
	function clone():Line3;
}
typedef Math = {
	function generateUUID():String;
	function clamp(x:Float, a:Float, b:Float):Float;
	function clampBottom(x:Float, a:Float):Float;
	function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
	function smoothstep(x:Float, min:Float, max:Float):Float;
	function smootherstep(x:Float, min:Float, max:Float):Float;
	function random16():Float;
	function randInt(low:Float, high:Float):Float;
	function randFloat(low:Float, high:Float):Float;
	function randFloatSpread(range:Float):Float;
	function degToRad(degrees:Float):Float;
	function radToDeg(radians:Float):Float;
	function isPowerOfTwo(value:Float):Bool;
	function nextPowerOfTwo(value:Float):Float;
};
typedef Matrix = {
	var elements : Float32Array;
	function identity():Matrix;
	function copy(m:Matrix):Matrix;
	function multiplyScalar(s:Float):Matrix;
	function determinant():Float;
	function getInverse(matrix:Matrix, ?throwOnInvertible:Bool):Matrix;
	function transpose():Matrix;
	function clone():Matrix;
};
extern class Matrix3 {
	@:overload(function(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float):Void { })
	function new():Void;
	var elements : Float32Array;
	function set(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float):Matrix3;
	function identity():Matrix3;
	function copy(m:Matrix3):Matrix3;
	function applyToVector3Array(array:Array<Float>, ?offset:Float, ?length:Float):Array<Float>;
	function multiplyScalar(s:Float):Matrix3;
	function determinant():Float;
	@:overload(function(matrix:Matrix4, ?throwOnInvertible:Bool):Matrix3 { })
	function getInverse(matrix:Matrix3, ?throwOnInvertible:Bool):Matrix3;
	function transpose():Matrix3;
	function flattenToArrayOffset(array:Array<Float>, offset:Float):Array<Float>;
	function getNormalMatrix(m:Matrix4):Matrix3;
	function transposeIntoArray(r:Array<Float>):Array<Float>;
	function fromArray(array:Array<Float>):Matrix3;
	function toArray():Array<Float>;
	function clone():Matrix3;
}
extern class Matrix4 {
	function new(?n11:Float, ?n12:Float, ?n13:Float, ?n14:Float, ?n21:Float, ?n22:Float, ?n23:Float, ?n24:Float, ?n31:Float, ?n32:Float, ?n33:Float, ?n34:Float, ?n41:Float, ?n42:Float, ?n43:Float, ?n44:Float):Void;
	var elements : Float32Array;
	function set(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float):Matrix4;
	function identity():Matrix4;
	function copy(m:Matrix4):Matrix4;
	function copyPosition(m:Matrix4):Matrix4;
	function extractBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3):Matrix4;
	function makeBasis(xAxis:Vector3, yAxis:Vector3, zAxis:Vector3):Matrix4;
	function extractRotation(m:Matrix4):Matrix4;
	function makeRotationFromEuler(euler:Euler):Matrix4;
	function makeRotationFromQuaternion(q:Quaternion):Matrix4;
	function lookAt(eye:Vector3, target:Vector3, up:Vector3):Matrix4;
	function multiply(m:Matrix4):Matrix4;
	function multiplyMatrices(a:Matrix4, b:Matrix4):Matrix4;
	function multiplyToArray(a:Matrix4, b:Matrix4, r:Array<Float>):Matrix4;
	function multiplyScalar(s:Float):Matrix4;
	function applyToVector3Array(array:Array<Float>, ?offset:Float, ?length:Float):Array<Float>;
	function determinant():Float;
	function transpose():Matrix4;
	function flattenToArrayOffset(array:Array<Float>, offset:Float):Array<Float>;
	function setPosition(v:Vector3):Vector3;
	function getInverse(m:Matrix4, ?throwOnInvertible:Bool):Matrix4;
	function scale(v:Vector3):Matrix4;
	function getMaxScaleOnAxis():Float;
	function makeTranslation(x:Float, y:Float, z:Float):Matrix4;
	function makeRotationX(theta:Float):Matrix4;
	function makeRotationY(theta:Float):Matrix4;
	function makeRotationZ(theta:Float):Matrix4;
	function makeRotationAxis(axis:Vector3, angle:Float):Matrix4;
	function makeScale(x:Float, y:Float, z:Float):Matrix4;
	function compose(translation:Vector3, rotation:Quaternion, scale:Vector3):Matrix4;
	function decompose(?translation:Vector3, ?rotation:Quaternion, ?scale:Vector3):Array<Dynamic>;
	function makeFrustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):Matrix4;
	function makePerspective(fov:Float, aspect:Float, near:Float, far:Float):Matrix4;
	function makeOrthographic(left:Float, right:Float, top:Float, bottom:Float, near:Float, far:Float):Matrix4;
	function fromArray(array:Array<Float>):Matrix4;
	function toArray():Array<Float>;
	function clone():Matrix4;
}
extern class Plane {
	function new(?normal:Vector3, ?constant:Float):Void;
	var normal : Vector3;
	var constant : Float;
	function set(normal:Vector3, constant:Float):Plane;
	function setComponents(x:Float, y:Float, z:Float, w:Float):Plane;
	function setFromNormalAndCoplanarPoint(normal:Vector3, point:Vector3):Plane;
	function setFromCoplanarPoints(a:Vector3, b:Vector3, c:Vector3):Plane;
	function copy(plane:Plane):Plane;
	function normalize():Plane;
	function negate():Plane;
	function distanceToPoint(point:Vector3):Float;
	function distanceToSphere(sphere:Sphere):Float;
	function projectPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	function orthoPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	function isIntersectionLine(line:Line3):Bool;
	function intersectLine(line:Line3, ?optionalTarget:Vector3):Vector3;
	function coplanarPoint(?optionalTarget:Bool):Vector3;
	function applyMatrix4(matrix:Matrix4, ?optionalNormalMatrix:Matrix3):Plane;
	function translate(offset:Vector3):Plane;
	function equals(plane:Plane):Bool;
	function clone():Plane;
}
extern class Quaternion {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float):Void;
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	function set(x:Float, y:Float, z:Float, w:Float):Quaternion;
	function copy(q:Quaternion):Quaternion;
	function setFromEuler(euler:Euler, ?update:Bool):Quaternion;
	function setFromAxisAngle(axis:Vector3, angle:Float):Quaternion;
	function setFromRotationMatrix(m:Matrix4):Quaternion;
	function setFromUnitVectors(vFrom:Vector3, vTo:Vector3):Quaternion;
	function inverse():Quaternion;
	function conjugate():Quaternion;
	function dot(v:Vector3):Float;
	function lengthSq():Float;
	function length():Float;
	function normalize():Quaternion;
	function multiply(q:Quaternion):Quaternion;
	function multiplyQuaternions(a:Quaternion, b:Quaternion):Quaternion;
	function multiplyVector3(vector:Vector3):Vector3;
	@:overload(function(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float):Quaternion { })
	function slerp(qb:Quaternion, t:Float):Quaternion;
	function equals(v:Quaternion):Bool;
	@:overload(function(xyzw:Array<Float>, ?offset:Float):Quaternion { })
	function fromArray(n:Array<Float>):Quaternion;
	@:overload(function(?xyzw:Array<Float>, ?offset:Float):Array<Float> { })
	function toArray():Array<Float>;
	var onChange : Void -> Void;
	function clone():Quaternion;
}
extern class Ray {
	function new(?origin:Vector3, ?direction:Vector3):Void;
	var origin : Vector3;
	var direction : Vector3;
	function set(origin:Vector3, direction:Vector3):Ray;
	function copy(ray:Ray):Ray;
	function at(t:Float, ?optionalTarget:Vector3):Vector3;
	function recast(t:Float):Ray;
	function closestPointToPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	function distanceToPoint(point:Vector3):Float;
	function distanceSqToSegment(v0:Vector3, v1:Vector3, ?optionalPointOnRay:Vector3, ?optionalPointOnSegment:Vector3):Float;
	function isIntersectionSphere(sphere:Sphere):Bool;
	function intersectSphere(sphere:Sphere, ?optionalTarget:Vector3):Vector3;
	function isIntersectionPlane(plane:Plane):Bool;
	function distanceToPlane(plane:Plane):Float;
	function intersectPlane(plane:Plane, ?optionalTarget:Vector3):Vector3;
	function isIntersectionBox(box:Box3):Bool;
	function intersectBox(box:Box3, ?optionalTarget:Vector3):Vector3;
	function intersectTriangle(a:Vector3, b:Vector3, c:Vector3, backfaceCulling:Bool, ?optionalTarget:Vector3):Vector3;
	function applyMatrix4(matrix4:Matrix4):Ray;
	function equals(ray:Ray):Bool;
	function clone():Ray;
}
extern class Sphere {
	function new(?center:Vector3, ?radius:Float):Void;
	var center : Vector3;
	var radius : Float;
	function set(center:Vector3, radius:Float):Sphere;
	function setFromPoints(points:Array<Vector3>, ?optionalCenter:Vector3):Sphere;
	function copy(sphere:Sphere):Sphere;
	function empty():Bool;
	function containsPoint(point:Vector3):Bool;
	function distanceToPoint(point:Vector3):Float;
	function intersectsSphere(sphere:Sphere):Bool;
	function clampPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	function getBoundingBox(?optionalTarget:Box3):Box3;
	function applyMatrix4(matrix:Matrix4):Sphere;
	function translate(offset:Vector3):Sphere;
	function equals(sphere:Sphere):Bool;
	function clone():Sphere;
}
typedef SplineControlPoint = {
	var x : Float;
	var y : Float;
	var z : Float;
};
extern class Spline {
	function new(points:Array<SplineControlPoint>):Void;
	var points : Array<SplineControlPoint>;
	function initFromArray(a:Array<Array<Float>>):Void;
	function getPoint(k:Float):SplineControlPoint;
	function getControlPointsArray():Array<Array<Float>>;
	function getLength(?nSubDivisions:Float):{ var chunks : Array<Float>; var total : Float; };
	function reparametrizeByArcLength(samplingCoef:Float):Void;
}
extern class Triangle {
	function new(?a:Vector3, ?b:Vector3, ?c:Vector3):Void;
	var a : Vector3;
	var b : Vector3;
	var c : Vector3;
	function set(a:Vector3, b:Vector3, c:Vector3):Triangle;
	function setFromPointsAndIndices(points:Array<Vector3>, i0:Float, i1:Float, i2:Float):Triangle;
	function copy(triangle:Triangle):Triangle;
	function area():Float;
	function midpoint(?optionalTarget:Vector3):Vector3;
	@:overload(function(a:Vector3, b:Vector3, c:Vector3, ?optionalTarget:Vector3):Vector3 { })
	function normal(?optionalTarget:Vector3):Vector3;
	function plane(?optionalTarget:Vector3):Plane;
	@:overload(function(point:Vector3, a:Vector3, b:Vector3, c:Vector3, optionalTarget:Vector3):Vector3 { })
	function barycoordFromPoint(point:Vector3, ?optionalTarget:Vector3):Vector3;
	@:overload(function(point:Vector3, a:Vector3, b:Vector3, c:Vector3):Bool { })
	function containsPoint(point:Vector3):Bool;
	function equals(triangle:Triangle):Bool;
	function clone():Triangle;
}
typedef Vector = {
	function setComponent(index:Float, value:Float):Void;
	function getComponent(index:Float):Float;
	function copy(v:Vector):Vector;
	function add(v:Vector):Vector;
	function addVectors(a:Vector, b:Vector):Vector;
	function sub(v:Vector):Vector;
	function subVectors(a:Vector, b:Vector):Vector;
	function multiplyScalar(s:Float):Vector;
	function divideScalar(s:Float):Vector;
	function negate():Vector;
	function dot(v:Vector):Float;
	function lengthSq():Float;
	function length():Float;
	function normalize():Vector;
	@:optional
	function distanceTo(v:Vector):Float;
	@:optional
	function distanceToSquared(v:Vector):Float;
	function setLength(l:Float):Vector;
	function lerp(v:Vector, alpha:Float):Vector;
	function equals(v:Vector):Bool;
	function clone():Vector;
};
extern class Vector2 {
	function new(?x:Float, ?y:Float):Void;
	var x : Float;
	var y : Float;
	function set(x:Float, y:Float):Vector2;
	function setX(x:Float):Vector2;
	function setY(y:Float):Vector2;
	function setComponent(index:Float, value:Float):Void;
	function getComponent(index:Float):Float;
	function copy(v:Vector2):Vector2;
	function add(v:Vector2):Vector2;
	function addScalar(s:Float):Vector2;
	function addVectors(a:Vector2, b:Vector2):Vector2;
	function sub(v:Vector2):Vector2;
	function subVectors(a:Vector2, b:Vector2):Vector2;
	function multiply(v:Vector2):Vector2;
	function multiplyScalar(s:Float):Vector2;
	function divide(v:Vector2):Vector2;
	function divideScalar(s:Float):Vector2;
	function min(v:Vector2):Vector2;
	function max(v:Vector2):Vector2;
	function clamp(min:Vector2, max:Vector2):Vector2;
	function clampScalar(min:Float, max:Float):Vector2;
	function floor():Vector2;
	function ceil():Vector2;
	function round():Vector2;
	function roundToZero():Vector2;
	function negate():Vector2;
	function dot(v:Vector2):Float;
	function lengthSq():Float;
	function length():Float;
	function normalize():Vector2;
	function distanceTo(v:Vector2):Float;
	function distanceToSquared(v:Vector2):Float;
	function setLength(l:Float):Vector2;
	function lerp(v:Vector2, alpha:Float):Vector2;
	function lerpVectors(v1:Vector2, v2:Vector2, alpha:Float):Vector2;
	function equals(v:Vector2):Bool;
	function fromArray(xy:Array<Float>, ?offset:Float):Vector2;
	function toArray(?xy:Array<Float>, ?offset:Float):Array<Float>;
	function fromAttribute(attribute:BufferAttribute, index:Float, ?offset:Float):Vector2;
	function clone():Vector2;
}
extern class Vector3 {
	function new(?x:Float, ?y:Float, ?z:Float):Void;
	var x : Float;
	var y : Float;
	var z : Float;
	function set(x:Float, y:Float, z:Float):Vector3;
	function setX(x:Float):Vector3;
	function setY(y:Float):Vector3;
	function setZ(z:Float):Vector3;
	function setComponent(index:Float, value:Float):Void;
	function getComponent(index:Float):Float;
	function copy(v:Vector3):Vector3;
	function add(a:Vector3):Vector3;
	function addScalar(s:Float):Vector3;
	function addVectors(a:Vector3, b:Vector3):Vector3;
	function sub(a:Vector3):Vector3;
	function subScalar(s:Float):Vector3;
	function subVectors(a:Vector3, b:Vector3):Vector3;
	function multiply(v:Vector3):Vector3;
	function multiplyScalar(s:Float):Vector3;
	function multiplyVectors(a:Vector3, b:Vector3):Vector3;
	function applyEuler(euler:Euler):Vector3;
	function applyAxisAngle(axis:Vector3, angle:Float):Vector3;
	function applyMatrix3(m:Matrix3):Vector3;
	function applyMatrix4(m:Matrix4):Vector3;
	function applyProjection(m:Matrix4):Vector3;
	function applyQuaternion(q:Quaternion):Vector3;
	function project(camrea:Camera):Vector3;
	function unproject(camera:Camera):Vector3;
	function transformDirection(m:Matrix4):Vector3;
	function divide(v:Vector3):Vector3;
	function divideScalar(s:Float):Vector3;
	function min(v:Vector3):Vector3;
	function max(v:Vector3):Vector3;
	function clamp(min:Vector3, max:Vector3):Vector3;
	function clampScalar(min:Float, max:Float):Vector3;
	function floor():Vector3;
	function ceil():Vector3;
	function round():Vector3;
	function roundToZero():Vector3;
	function negate():Vector3;
	function dot(v:Vector3):Float;
	function lengthSq():Float;
	function length():Float;
	function lengthManhattan():Float;
	function normalize():Vector3;
	function setLength(l:Float):Vector3;
	function lerp(v:Vector3, alpha:Float):Vector3;
	function lerpVectors(v1:Vector3, v2:Vector3, alpha:Float):Vector3;
	function cross(a:Vector3):Vector3;
	function crossVectors(a:Vector3, b:Vector3):Vector3;
	function projectOnVector(v:Vector3):Vector3;
	function projectOnPlane(planeNormal:Vector3):Vector3;
	function reflect(vector:Vector3):Vector3;
	function angleTo(v:Vector3):Float;
	function distanceTo(v:Vector3):Float;
	function distanceToSquared(v:Vector3):Float;
	function setFromMatrixPosition(m:Matrix4):Vector3;
	function setFromMatrixScale(m:Matrix4):Vector3;
	function setFromMatrixColumn(index:Float, matrix:Matrix4):Vector3;
	function equals(v:Vector3):Bool;
	function fromArray(xyz:Array<Float>, ?offset:Float):Vector3;
	function toArray(?xyz:Array<Float>, ?offset:Float):Array<Float>;
	function fromAttribute(attribute:BufferAttribute, index:Float, ?offset:Float):Vector3;
	function clone():Vector3;
}
extern class Vector4 {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float):Void;
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	function set(x:Float, y:Float, z:Float, w:Float):Vector4;
	function setX(x:Float):Vector4;
	function setY(y:Float):Vector4;
	function setZ(z:Float):Vector4;
	function setW(w:Float):Vector4;
	function setComponent(index:Float, value:Float):Void;
	function getComponent(index:Float):Float;
	function copy(v:Vector4):Vector4;
	function add(v:Vector4):Vector4;
	function addScalar(s:Float):Vector4;
	function addVectors(a:Vector4, b:Vector4):Vector4;
	function sub(v:Vector4):Vector4;
	function subScalar(s:Float):Vector4;
	function subVectors(a:Vector4, b:Vector4):Vector4;
	function multiplyScalar(s:Float):Vector4;
	function applyMatrix4(m:Matrix4):Vector4;
	function divideScalar(s:Float):Vector4;
	function setAxisAngleFromQuaternion(q:Quaternion):Vector4;
	function setAxisAngleFromRotationMatrix(m:Matrix3):Vector4;
	function min(v:Vector4):Vector4;
	function max(v:Vector4):Vector4;
	function clamp(min:Vector4, max:Vector4):Vector4;
	function clampScalar(min:Float, max:Float):Vector4;
	function floor():Vector4;
	function ceil():Vector4;
	function round():Vector4;
	function roundToZero():Vector4;
	function negate():Vector4;
	function dot(v:Vector4):Float;
	function lengthSq():Float;
	function length():Float;
	function lengthManhattan():Float;
	function normalize():Vector4;
	function setLength(l:Float):Vector4;
	function lerp(v:Vector4, alpha:Float):Vector4;
	function lerpVectors(v1:Vector4, v2:Vector4, alpha:Float):Vector4;
	function equals(v:Vector4):Bool;
	function fromArray(xyzw:Array<Float>, ?offset:Float):Vector4;
	function toArray(?xyzw:Array<Float>, ?offset:Float):Array<Float>;
	function fromAttribute(attribute:BufferAttribute, index:Float, ?offset:Float):Vector4;
	function clone():Vector4;
}
extern class Bone extends Object3D {
	function new(skin:SkinnedMesh):Void;
	var skin : SkinnedMesh;
}
extern class Group extends Object3D {
	function new():Void;
}
typedef LensFlareProperty = {
	var texture : Texture;
	var size : Float;
	var distance : Float;
	var x : Float;
	var y : Float;
	var z : Float;
	var scale : Float;
	var rotation : Float;
	var opacity : Float;
	var color : Color;
	var blending : Blending;
};
extern class LensFlare extends Object3D {
	function new(?texture:Texture, ?size:Float, ?distance:Float, ?blending:Blending, ?color:Color):Void;
	var lensFlares : Array<LensFlareProperty>;
	var positionScreen : Vector3;
	var customUpdateCallback : LensFlare -> Void;
	@:overload(function(obj:Object3D):Void { })
	function add(texture:Texture, ?size:Float, ?distance:Float, ?blending:Blending, ?color:Color):Void;
	function updateLensFlares():Void;
}
extern class Line extends Object3D {
	@:overload(function(?geometry:Geometry, ?material:LineBasicMaterial, ?mode:Float):Void { })
	@:overload(function(?geometry:Geometry, ?material:ShaderMaterial, ?mode:Float):Void { })
	@:overload(function(?geometry:BufferGeometry, ?material:LineDashedMaterial, ?mode:Float):Void { })
	@:overload(function(?geometry:BufferGeometry, ?material:LineBasicMaterial, ?mode:Float):Void { })
	@:overload(function(?geometry:BufferGeometry, ?material:ShaderMaterial, ?mode:Float):Void { })
	function new(?geometry:Geometry, ?material:LineDashedMaterial, ?mode:Float):Void;
	var geometry : Dynamic;
	var material : Material;
	var mode : LineMode;
	function raycast(raycaster:Raycaster, intersects:Dynamic):Void;
	function clone(?object:Line):Line;
}
@:enum abstract LineMode(Int) {

}
extern class LOD extends Object3D {
	function new():Void;
	var objects : Array<Dynamic>;
	function addLevel(object:Object3D, ?distance:Float):Void;
	function getObjectForDistance(distance:Float):Object3D;
	function raycast(raycaster:Raycaster, intersects:Dynamic):Void;
	function update(camera:Camera):Void;
	function clone(?object:LOD):LOD;
}
extern class Mesh extends Object3D {
	@:overload(function(?geometry:BufferGeometry, ?material:Material):Void { })
	function new(?geometry:Geometry, ?material:Material):Void;
	var geometry : Geometry;
	var material : Material;
	function updateMorphTargets():Void;
	function getMorphTargetIndexByName(name:String):Float;
	function raycast(raycaster:Raycaster, intersects:Dynamic):Void;
	function clone(?object:Mesh):Mesh;
}
extern class MorphAnimMesh extends Mesh {
	@:overload(function(?geometry:Geometry, ?material:MeshDepthMaterial):Void { })
	@:overload(function(?geometry:Geometry, ?material:MeshFaceMaterial):Void { })
	@:overload(function(?geometry:Geometry, ?material:MeshLambertMaterial):Void { })
	@:overload(function(?geometry:Geometry, ?material:MeshNormalMaterial):Void { })
	@:overload(function(?geometry:Geometry, ?material:MeshPhongMaterial):Void { })
	@:overload(function(?geometry:Geometry, ?material:ShaderMaterial):Void { })
	function new(?geometry:Geometry, ?material:MeshBasicMaterial):Void;
	var duration : Float;
	var mirroredLoop : Bool;
	var time : Float;
	var lastKeyframe : Float;
	var currentKeyframe : Float;
	var direction : Float;
	var directionBackwards : Bool;
	var startKeyframe : Float;
	var endKeyframe : Float;
	var length : Float;
	function setFrameRange(start:Float, end:Float):Void;
	function setDirectionForward():Void;
	function setDirectionBackward():Void;
	function parseAnimations():Void;
	function setAnimationLabel(label:String, start:Float, end:Float):Void;
	function playAnimation(label:String, fps:Float):Void;
	function updateAnimation(delta:Float):Void;
	function interpolateTargets(a:Float, b:Float, t:Float):Void;
	function clone(?object:MorphAnimMesh):MorphAnimMesh;
}
extern class PointCloud extends Object3D {
	@:overload(function(geometry:Geometry, ?material:ShaderMaterial):Void { })
	@:overload(function(geometry:BufferGeometry, ?material:PointCloudMaterial):Void { })
	@:overload(function(geometry:BufferGeometry, ?material:ShaderMaterial):Void { })
	function new(geometry:Geometry, ?material:PointCloudMaterial):Void;
	var geometry : Geometry;
	var material : Material;
	function raycast(raycaster:Raycaster, intersects:Dynamic):Void;
	function clone(?object:PointCloud):PointCloud;
}
extern class Skeleton {
	function new(bones:Array<Bone>, ?boneInverses:Array<Matrix4>, ?useVertexTexture:Bool):Void;
	var useVertexTexture : Bool;
	var identityMatrix : Matrix4;
	var bones : Array<Bone>;
	var boneTextureWidth : Float;
	var boneTextureHeight : Float;
	var boneMatrices : Float32Array;
	var boneTexture : DataTexture;
	var boneInverses : Array<Matrix4>;
	function calculateInverses(bone:Bone):Void;
	function pose():Void;
	function update():Void;
}
extern class SkinnedMesh extends Mesh {
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshDepthMaterial, ?useVertexTexture:Bool):Void { })
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshFaceMaterial, ?useVertexTexture:Bool):Void { })
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshLambertMaterial, ?useVertexTexture:Bool):Void { })
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshNormalMaterial, ?useVertexTexture:Bool):Void { })
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshPhongMaterial, ?useVertexTexture:Bool):Void { })
	@:overload(function(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:ShaderMaterial, ?useVertexTexture:Bool):Void { })
	function new(?geometry:haxe.extern.EitherType<Geometry, BufferGeometry>, ?material:MeshBasicMaterial, ?useVertexTexture:Bool):Void;
	var bindMode : String;
	var bindMatrix : Matrix4;
	var bindMatrixInverse : Matrix4;
	function bind(skeleton:Skeleton, ?bindMatrix:Matrix4):Void;
	function pose():Void;
	function normalizeSkinWeights():Void;
	function updateMatrixWorld(?force:Bool):Void;
	function clone(?object:SkinnedMesh):SkinnedMesh;
	var skeleton : Skeleton;
}
extern class Sprite extends Object3D {
	function new(?material:Material):Void;
	var geometry : BufferGeometry;
	var material : SpriteMaterial;
	function raycast(raycaster:Raycaster, intersects:Dynamic):Void;
	function clone(?object:Sprite):Sprite;
}
typedef Renderer = {
	function render(scene:Scene, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
	var domElement : HTMLCanvasElement;
};
typedef WebGLRendererParameters = {
	@:optional
	var canvas : HTMLCanvasElement;
	@:optional
	var precision : String;
	@:optional
	var alpha : Bool;
	@:optional
	var premultipliedAlpha : Bool;
	@:optional
	var antialias : Bool;
	@:optional
	var stencil : Bool;
	@:optional
	var preserveDrawingBuffer : Bool;
	@:optional
	var clearColor : Float;
	@:optional
	var clearAlpha : Float;
	@:optional
	var devicePixelRatio : Float;
};
extern class WebGLRenderer {
	function new(?parameters:WebGLRendererParameters):Void;
	var domElement : HTMLCanvasElement;
	var context : Dynamic;
	var autoClear : Bool;
	var autoClearColor : Bool;
	var autoClearDepth : Bool;
	var autoClearStencil : Bool;
	var sortObjects : Bool;
	var gammaFactor : Float;
	var gammaInput : Bool;
	var gammaOutput : Bool;
	var shadowMapEnabled : Bool;
	var shadowMapType : ShadowMapType;
	var shadowMapCullFace : CullFace;
	var shadowMapDebug : Bool;
	var shadowMapCascade : Bool;
	var maxMorphTargets : Float;
	var maxMorphNormals : Float;
	var autoScaleCubemaps : Bool;
	var info : { var memory : { var programs : Float; var geometries : Float; var textures : Float; }; var render : { var calls : Float; var vertices : Float; var faces : Float; var points : Float; }; };
	var shadowMapPlugin : ShadowMapPlugin;
	function getContext():WebGLRenderingContext;
	function forceContextLoss():Void;
	function supportsVertexTextures():Bool;
	function supportsFloatTextures():Bool;
	function supportsStandardDerivatives():Bool;
	function supportsCompressedTextureS3TC():Bool;
	function supportsCompressedTexturePVRTC():Bool;
	function supportsBlendMinMax():Bool;
	function getMaxAnisotropy():Float;
	function getPrecision():String;
	function getPixelRatio():Float;
	function setPixelRatio(value:Float):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
	function setViewport(?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	function setScissor(x:Float, y:Float, width:Float, height:Float):Void;
	function enableScissorTest(enable:Bool):Void;
	@:overload(function(color:String, ?alpha:Float):Void { })
	@:overload(function(color:Float, ?alpha:Float):Void { })
	function setClearColor(color:Color, ?alpha:Float):Void;
	function setClearAlpha(alpha:Float):Void;
	function setClearColorHex(hex:Float, alpha:Float):Void;
	function getClearColor():Color;
	function getClearAlpha():Float;
	function clear(?color:Bool, ?depth:Bool, ?stencil:Bool):Void;
	function clearColor():Void;
	function clearDepth():Void;
	function clearStencil():Void;
	function clearTarget(renderTarget:WebGLRenderTarget, color:Bool, depth:Bool, stencil:Bool):Void;
	function resetGLState():Void;
	function updateShadowMap(scene:Scene, camera:Camera):Void;
	function renderBufferImmediate(object:Object3D, program:Dynamic, material:Material):Void;
	function renderBufferDirect(camera:Camera, lights:Array<Light>, fog:Fog, material:Material, geometryGroup:Dynamic, object:Object3D):Void;
	function renderBuffer(camera:Camera, lights:Array<Light>, fog:Fog, material:Material, geometryGroup:Dynamic, object:Object3D):Void;
	function render(scene:Scene, camera:Camera, ?renderTarget:RenderTarget, ?forceClear:Bool):Void;
	function renderImmediateObject(camera:Camera, lights:Array<Light>, fog:Fog, material:Material, object:Object3D):Void;
	function setFaceCulling(?cullFace:CullFace, ?frontFace:FrontFaceDirection):Void;
	function setMaterialFaces(material:Material):Void;
	function setDepthTest(depthTest:Bool):Void;
	function setDepthWrite(depthWrite:Bool):Void;
	function setBlending(blending:Blending, blendEquation:BlendingEquation, blendSrc:BlendingSrcFactor, blendDst:BlendingDstFactor):Void;
	function uploadTexture(texture:Texture):Void;
	function setTexture(texture:Texture, slot:Float):Void;
	function setRenderTarget(renderTarget:RenderTarget):Void;
	function readRenderTargetPixels(renderTarget:RenderTarget, x:Float, y:Float, width:Float, height:Float, buffer:Dynamic):Void;
}
typedef RenderTarget = { };
typedef WebGLRenderTargetOptions = {
	@:optional
	var wrapS : Wrapping;
	@:optional
	var wrapT : Wrapping;
	@:optional
	var magFilter : TextureFilter;
	@:optional
	var minFilter : TextureFilter;
	@:optional
	var anisotropy : Float;
	@:optional
	var format : Float;
	@:optional
	var type : TextureDataType;
	@:optional
	var depthBuffer : Bool;
	@:optional
	var stencilBuffer : Bool;
};
extern class WebGLRenderTarget {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions):Void;
	var width : Float;
	var height : Float;
	var wrapS : Wrapping;
	var wrapT : Wrapping;
	var magFilter : TextureFilter;
	var minFilter : TextureFilter;
	var anisotropy : Float;
	var offset : Vector2;
	var repeat : Vector2;
	var format : Float;
	var type : Float;
	var depthBuffer : Bool;
	var stencilBuffer : Bool;
	var generateMipmaps : Bool;
	var shareDepthFrom : Dynamic;
	function setSize(width:Float, height:Float):Void;
	function clone():WebGLRenderTarget;
	function dispose():Void;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
extern class WebGLRenderTargetCube extends WebGLRenderTarget {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions):Void;
	var activeCubeFace : Float;
}
typedef ShaderChunk = {
	var common : String;
	var alphamap_fragment : String;
	var alphamap_pars_fragment : String;
	var alphatest_fragment : String;
	var bumpmap_pars_fragment : String;
	var color_fragment : String;
	var color_pars_fragment : String;
	var color_pars_vertex : String;
	var color_vertex : String;
	var default_vertex : String;
	var defaultnormal_vertex : String;
	var envmap_fragment : String;
	var envmap_pars_fragment : String;
	var envmap_pars_vertex : String;
	var envmap_vertex : String;
	var fog_fragment : String;
	var fog_pars_fragment : String;
	var lightmap_fragment : String;
	var lightmap_pars_fragment : String;
	var lightmap_pars_vertex : String;
	var lightmap_vertex : String;
	var lights_lambert_pars_vertex : String;
	var lights_lambert_vertex : String;
	var lights_phong_fragment : String;
	var lights_phong_pars_fragment : String;
	var lights_phong_pars_vertex : String;
	var lights_phong_vertex : String;
	var linear_to_gamma_fragment : String;
	var logdepthbuf_fragment : String;
	var logdepthbuf_pars_fragment : String;
	var logdepthbuf_pars_vertex : String;
	var logdepthbuf_vertex : String;
	var map_fragment : String;
	var map_pars_fragment : String;
	var map_pars_vertex : String;
	var map_particle_fragment : String;
	var map_particle_pars_fragment : String;
	var map_vertex : String;
	var morphnormal_vertex : String;
	var morphtarget_pars_vertex : String;
	var morphtarget_vertex : String;
	var normalmap_pars_fragment : String;
	var shadowmap_fragment : String;
	var shadowmap_pars_fragment : String;
	var shadowmap_pars_vertex : String;
	var shadowmap_vertex : String;
	var skinbase_vertex : String;
	var skinning_pars_vertex : String;
	var skinning_vertex : String;
	var skinnormal_vertex : String;
	var specularmap_fragment : String;
	var specularmap_pars_fragment : String;
	var worldpos_vertex : String;
};
typedef Shader = {
	var uniforms : Dynamic;
	var vertexShader : String;
	var fragmentShader : String;
};
extern class WebGLExtensions {
	function new(gl:Dynamic):Void;
	function get(name:String):Dynamic;
}
extern class WebGLProgram {
	function new(renderer:WebGLRenderer, code:String, material:ShaderMaterial, parameters:WebGLRendererParameters):Void;
	var attributes : Dynamic;
	var attributesKeys : Array<String>;
	var id : Float;
	var code : String;
	var usedTimes : Float;
	var program : Dynamic;
	var vertexShader : WebGLShader;
	var fragmentShader : WebGLShader;
}
extern class WebGLShader {
	function new(gl:Dynamic, type:String, string:String):Void;
}
typedef WebGLStateInstance = {
	function new(gl:Dynamic, paramThreeToGL:haxe.Constraints.Function):Void;
	function initAttributes():Void;
	function enableAttribute(attribute:String):Void;
	function disableUnusedAttributes():Void;
	function setBlending(blending:Float, blendEquation:Float, blendSrc:Float, blendDst:Float, blendEquationAlpha:Float, blendSrcAlpha:Float, blendDstAlpha:Float):Void;
	function setDepthTest(depthTest:Float):Void;
	function setDepthWrite(depthWrite:Float):Void;
	function setColorWrite(colorWrite:Float):Void;
	function setDoubleSided(doubleSided:Float):Void;
	function setFlipSided(flipSided:Float):Void;
	function setLineWidth(width:Float):Void;
	function setPolygonOffset(polygonoffset:Float, factor:Float, units:Float):Void;
	function reset():Void;
};
typedef WebGLStateStatic = { };
typedef WebGLTexturesInstance = {
	function new(webgglcontext:Dynamic):WebGLTexturesInstance;
	function get(texture:Texture):Dynamic;
	function create(texture:Texture):Dynamic;
	function delete(texture:Texture):Void;
};
typedef WebGLTexturesStatic = { };
typedef RendererPlugin = {
	function init(renderer:WebGLRenderer):Void;
	function render(scene:Scene, camera:Camera, currentWidth:Float, currentHeight:Float):Void;
};
extern class LensFlarePlugin {
	function new():Void;
	function init(renderer:Renderer):Void;
	function render(scene:Scene, camera:Camera, viewportWidth:Float, viewportHeight:Float):Void;
}
extern class ShadowMapPlugin {
	function new():Void;
	function init(renderer:Renderer):Void;
	function render(scene:Scene, camera:Camera):Void;
	function update(scene:Scene, camera:Camera):Void;
}
extern class SpritePlugin {
	function new():Void;
	function init(renderer:Renderer):Void;
	function render(scene:Scene, camera:Camera, viewportWidth:Float, viewportHeight:Float):Void;
}
typedef IFog = {
	var name : String;
	var color : Color;
	function clone():IFog;
};
extern class Fog {
	function new(hex:Float, ?near:Float, ?far:Float):Void;
	var name : String;
	var color : Color;
	var near : Float;
	var far : Float;
	function clone():Fog;
}
extern class FogExp2 {
	function new(hex:Float, ?density:Float):Void;
	var name : String;
	var color : Color;
	var density : Float;
	function clone():FogExp2;
}
extern class Scene extends Object3D {
	function new():Void;
	var fog : IFog;
	var overrideMaterial : Material;
	var autoUpdate : Bool;
	function clone():Scene;
}
extern class CompressedTexture extends Texture {
	function new(mipmaps:Array<ImageData>, width:Float, height:Float, ?format:PixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float):Void;
	var image : { var width : Float; var height : Float; };
	var mipmaps : Array<ImageData>;
	var flipY : Bool;
	var generateMipmaps : Bool;
	function clone():CompressedTexture;
}
extern class CubeTexture extends Texture {
	function new(images:Array<Dynamic>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float):Void;
	var images : Array<Dynamic>;
	function clone(?texture:CubeTexture):CubeTexture;
}
extern class DataTexture extends Texture {
	function new(data:ImageData, width:Float, height:Float, format:PixelFormat, type:TextureDataType, mapping:Mapping, wrapS:Wrapping, wrapT:Wrapping, magFilter:TextureFilter, minFilter:TextureFilter, ?anisotropy:Float):Void;
	var image : { var data : ImageData; var width : Float; var height : Float; };
	function clone():DataTexture;
}
extern class Texture {
	function new(image:haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<HTMLCanvasElement, HTMLVideoElement>>, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float):Void;
	var id : Float;
	var uuid : String;
	var name : String;
	var sourceFile : String;
	var image : Dynamic;
	var mipmaps : Array<ImageData>;
	var mapping : Mapping;
	var wrapS : Wrapping;
	var wrapT : Wrapping;
	var magFilter : TextureFilter;
	var minFilter : TextureFilter;
	var anisotropy : Float;
	var format : PixelFormat;
	var type : TextureDataType;
	var offset : Vector2;
	var repeat : Vector2;
	var generateMipmaps : Bool;
	var premultiplyAlpha : Bool;
	var flipY : Bool;
	var unpackAlignment : Float;
	var needsUpdate : Bool;
	var onUpdate : Void -> Void;
	static var DEFAULT_IMAGE : Dynamic;
	static var DEFAULT_MAPPING : Dynamic;
	function clone():Texture;
	function update():Void;
	function dispose():Void;
	function addEventListener(type:String, listener:Dynamic -> Void):Void;
	function hasEventListener(type:String, listener:Dynamic -> Void):Void;
	function removeEventListener(type:String, listener:Dynamic -> Void):Void;
	function dispatchEvent(event:{ var type : String; var target : Dynamic; }):Void;
}
extern class VideoTexture extends Texture {
	function new(video:HTMLVideoElement, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float):Void;
	var generateMipmaps : Bool;
}
typedef TypefaceData = {
	var familyName : String;
	var cssFontWeight : String;
	var cssFontStyle : String;
};
typedef KeyFrame = {
	var pos : Array<Float>;
	var rot : Array<Float>;
	var scl : Array<Float>;
	var time : Float;
};
typedef KeyFrames = {
	var keys : Array<KeyFrame>;
	var parent : Float;
};
typedef AnimationData = {
	var JIT : Float;
	var fps : Float;
	var hierarchy : Array<KeyFrames>;
	var length : Float;
	var name : String;
};
extern class Animation {
	function new(root:Mesh, data:AnimationData):Void;
	var root : Mesh;
	var data : AnimationData;
	var hierarchy : Array<Bone>;
	var currentTime : Float;
	var timeScale : Float;
	var isPlaying : Bool;
	var loop : Bool;
	var weight : Float;
	var interpolationType : Float;
	function play(?startTime:Float, ?weight:Float):Void;
	function stop():Void;
	function reset():Void;
	function resetBlendWeights():Void;
	function update(delta:Float):Void;
	function getNextKeyWith(type:String, h:Float, key:Float):KeyFrame;
	function getPrevKeyWith(type:String, h:Float, key:Float):KeyFrame;
}
extern class KeyFrameAnimation {
	function new(data:Dynamic):Void;
	var root : Mesh;
	var data : AnimationData;
	var hierarchy : Array<KeyFrames>;
	var currentTime : Float;
	var timeScale : Float;
	var isPlaying : Bool;
	var isPaused : Bool;
	var loop : Bool;
	function play(?startTime:Float):Void;
	function stop():Void;
	function update(delta:Float):Void;
	function getNextKeyWith(type:String, h:Float, key:Float):KeyFrame;
	function getPrevKeyWith(type:String, h:Float, key:Float):KeyFrame;
}
extern class MorphAnimation {
	function new(mesh:Mesh):Void;
	var mesh : Mesh;
	var frames : Float;
	var currentTime : Float;
	var duration : Float;
	var loop : Bool;
	var lastFrame : Float;
	var currentFrame : Float;
	var isPlaying : Bool;
	function play():Void;
	function pause():Void;
	function update(delta:Float):Void;
}
extern class Audio extends Object3D {
	function new(listener:AudioListener):Void;
	var type : String;
	var context : AudioContext;
	var source : AudioBufferSourceNode;
	var gain : GainNode;
	var panner : PannerNode;
	var autoplay : Bool;
	var startTime : Float;
	var isPlaying : Bool;
	function load(file:String):Audio;
	function play():Void;
	function pause():Void;
	function stop():Void;
	function setLoop(value:Bool):Void;
	function setRefDistance(value:Float):Void;
	function setRolloffFactor(value:Float):Void;
	function setVolume(value:Float):Void;
	function updateMatrixWorld(?force:Bool):Void;
}
extern class AudioListener extends Object3D {
	function new():Void;
	var type : String;
	var context : AudioContext;
	function updateMatrixWorld(?force:Bool):Void;
}
extern class Curve<T:(Vector)> {
	function getPoint(t:Float):T;
	function getPointAt(u:Float):T;
	function getPoints(?divisions:Float):Array<T>;
	function getSpacedPoints(?divisions:Float):Array<T>;
	function getLength():Float;
	function getLengths(?divisions:Float):Array<Float>;
	function updateArcLengths():Void;
	function getUtoTmapping(u:Float, distance:Float):Float;
	function getTangent(t:Float):T;
	function getTangentAt(u:Float):T;
	static var Utils : { function tangentQuadraticBezier(t:Float, p0:Float, p1:Float, p2:Float):Float; function tangentCubicBezier(t:Float, p0:Float, p1:Float, p2:Float, p3:Float):Float; function tangentSpline(t:Float, p0:Float, p1:Float, p2:Float, p3:Float):Float; function interpolate(p0:Float, p1:Float, p2:Float, p3:Float, t:Float):Float; };
	static function create(constructorFunc:haxe.Constraints.Function, getPointFunc:haxe.Constraints.Function):haxe.Constraints.Function;
}
typedef BoundingBox = {
	var minX : Float;
	var minY : Float;
	@:optional
	var minZ : Float;
	var maxX : Float;
	var maxY : Float;
	@:optional
	var maxZ : Float;
};
extern class CurvePath<T:(Vector)> extends Curve<T> {
	function new():Void;
	var curves : Array<Curve<T>>;
	var bends : Array<Path>;
	var autoClose : Bool;
	function add(curve:Curve<T>):Void;
	function checkConnection():Bool;
	function closePath():Void;
	function getLength():Float;
	function getCurveLengths():Array<Float>;
	function getBoundingBox():BoundingBox;
	function createPointsGeometry(divisions:Float):Geometry;
	function createSpacedPointsGeometry(divisions:Float):Geometry;
	function createGeometry(points:Array<T>):Geometry;
	function addWrapPath(bendpath:Path):Void;
	function getTransformedPoints(segments:Float, ?bends:Array<Path>):Array<T>;
	function getTransformedSpacedPoints(segments:Float, ?bends:Array<Path>):Array<T>;
	function getWrapPoints(oldPts:Array<T>, path:Path):Array<T>;
}
extern class Gyroscope extends Object3D {
	function new():Void;
	function updateMatrixWorld(?force:Bool):Void;
}
@:enum abstract PathActions(Int) {
	var MOVE_TO = 0;
	var LINE_TO = 1;
	var QUADRATIC_CURVE_TO = 2;
	var BEZIER_CURVE_TO = 3;
	var CSPLINE_THRU = 4;
	var ARC = 5;
	var ELLIPSE = 6;
}
typedef PathAction = {
	var action : PathActions;
	var args : Dynamic;
};
extern class Path extends CurvePath<Vector2> {
	function new(?points:Array<Vector2>):Void;
	var actions : Array<PathAction>;
	function fromPoints(vectors:Array<Vector2>):Void;
	function moveTo(x:Float, y:Float):Void;
	function lineTo(x:Float, y:Float):Void;
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float):Void;
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float):Void;
	function splineThru(pts:Array<Vector2>):Void;
	function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function getSpacedPoints(?divisions:Float, ?closedPath:Bool):Array<Vector2>;
	function getPoints(?divisions:Float, ?closedPath:Bool):Array<Vector2>;
	function toShapes():Array<Shape>;
}
extern class Shape extends Path {
	function new(?points:Array<Vector2>):Void;
	var holes : Array<Path>;
	function extrude(?options:Dynamic):ExtrudeGeometry;
	function makeGeometry(?options:Dynamic):ShapeGeometry;
	function getPointsHoles(divisions:Float):Array<Array<Vector2>>;
	function getSpacedPointsHoles(divisions:Float):Array<Array<Vector2>>;
	function extractAllPoints(divisions:Float):{ var shape : Array<Vector2>; var holes : Array<Array<Vector2>>; };
	function extractPoints(divisions:Float):Array<Vector2>;
	function extractAllSpacedPoints(divisions:Vector2):{ var shape : Array<Vector2>; var holes : Array<Array<Vector2>>; };
}
extern class ArcCurve extends EllipseCurve {
	function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
}
extern class ClosedSplineCurve3 extends Curve<Vector3> {
	function new(?points:Array<Vector3>):Void;
	var points : Array<Vector3>;
}
extern class CubicBezierCurve extends Curve<Vector2> {
	function new(v0:Vector2, v1:Vector2, v2:Vector2, v3:Vector2):Void;
	var v0 : Vector2;
	var v1 : Vector2;
	var v2 : Vector2;
	var v3 : Vector2;
}
extern class CubicBezierCurve3 extends Curve<Vector3> {
	function new(v0:Vector3, v1:Vector3, v2:Vector3, v3:Vector3):Void;
	var v0 : Vector3;
	var v1 : Vector3;
	var v2 : Vector3;
	var v3 : Vector3;
}
extern class EllipseCurve extends Curve<Vector2> {
	function new(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	var aX : Float;
	var aY : Float;
	var xRadius : Float;
	var yRadius : Float;
	var aStartAngle : Float;
	var aEndAngle : Float;
	var aClockwise : Bool;
}
extern class LineCurve extends Curve<Vector2> {
	function new(v1:Vector2, v2:Vector2):Void;
	var v1 : Vector2;
	var v2 : Vector2;
}
extern class LineCurve3 extends Curve<Vector3> {
	function new(v1:Vector3, v2:Vector3):Void;
	var v1 : Vector3;
	var v2 : Vector3;
}
extern class QuadraticBezierCurve extends Curve<Vector2> {
	function new(v0:Vector2, v1:Vector2, v2:Vector2):Void;
	var v0 : Vector2;
	var v1 : Vector2;
	var v2 : Vector2;
}
extern class QuadraticBezierCurve3 extends Curve<Vector3> {
	function new(v0:Vector3, v1:Vector3, v2:Vector3):Void;
	var v0 : Vector3;
	var v1 : Vector3;
	var v2 : Vector3;
}
extern class SplineCurve extends Curve<Vector2> {
	function new(?points:Array<Vector2>):Void;
	var points : Array<Vector2>;
}
extern class SplineCurve3 extends Curve<Vector3> {
	function new(?points:Array<Vector3>):Void;
	var points : Array<Vector3>;
}
extern class BoxGeometry extends Geometry {
	function new(width:Float, height:Float, depth:Float, ?widthSegments:Float, ?heightSegments:Float, ?depthSegments:Float):Void;
	var parameters : { var width : Float; var height : Float; var depth : Float; var widthSegments : Float; var heightSegments : Float; var depthSegments : Float; };
}
extern class CircleGeometry extends Geometry {
	function new(?radius:Float, ?segments:Float, ?thetaStart:Float, ?thetaLength:Float):Void;
	var parameters : { var radius : Float; var segments : Float; var thetaStart : Float; var thetaLength : Float; };
}
extern class CubeGeometry extends BoxGeometry {

}
extern class CylinderGeometry extends Geometry {
	function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?radiusSegments:Float, ?heightSegments:Float, ?openEnded:Bool, ?thetaStart:Float, ?thetaLength:Float):Void;
	var parameters : { var radiusTop : Float; var radiusBottom : Float; var height : Float; var radialSegments : Float; var heightSegments : Float; var openEnded : Bool; var thetaStart : Float; var thetaLength : Float; };
}
extern class DodecahedronGeometry extends Geometry {
	function new(radius:Float, detail:Float):Void;
	var parameters : { var radius : Float; var detail : Float; };
}
extern class ExtrudeGeometry extends Geometry {
	@:overload(function(?shapes:Array<Shape>, ?options:Dynamic):Void { })
	function new(?shape:Shape, ?options:Dynamic):Void;
	var WorldUVGenerator : { function generateTopUV(geometry:Geometry, indexA:Float, indexB:Float, indexC:Float):Array<Vector2>; function generateSideWallUV(geometry:Geometry, indexA:Float, indexB:Float, indexC:Float, indexD:Float):Array<Vector2>; };
	function addShapeList(shapes:Array<Shape>, ?options:Dynamic):Void;
	function addShape(shape:Shape, ?options:Dynamic):Void;
}
extern class IcosahedronGeometry extends PolyhedronGeometry {
	function new(radius:Float, detail:Float):Void;
}
extern class LatheGeometry extends Geometry {
	function new(points:Array<Vector3>, ?segments:Float, ?phiStart:Float, ?phiLength:Float):Void;
	var parameters : { var points : Array<Vector3>; var segments : Float; var phiStart : Float; var phiLength : Float; };
}
extern class OctahedronGeometry extends PolyhedronGeometry {
	function new(radius:Float, detail:Float):Void;
}
extern class ParametricGeometry extends Geometry {
	function new(func:Float -> Float -> Vector3, slices:Float, stacks:Float):Void;
	var parameters : { var func : Float -> Float -> Vector3; var slices : Float; var stacks : Float; };
}
extern class PlaneBufferGeometry extends BufferGeometry {
	function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Float):Void;
	var parameters : { var width : Float; var height : Float; var widthSegments : Float; var heightSegments : Float; };
}
extern class PlaneGeometry extends Geometry {
	function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Float):Void;
	var parameters : { var width : Float; var height : Float; var widthSegments : Float; var heightSegments : Float; };
}
extern class PolyhedronGeometry extends Geometry {
	function new(vertices:Array<Vector3>, faces:Array<Face3>, ?radius:Float, ?detail:Float):Void;
	var parameters : { var vertices : Array<Vector3>; var faces : Array<Face3>; var radius : Float; var detail : Float; };
}
extern class RingGeometry extends Geometry {
	function new(?innerRadius:Float, ?outerRadius:Float, ?thetaSegments:Float, ?phiSegments:Float, ?thetaStart:Float, ?thetaLength:Float):Void;
	var parameters : { var innerRadius : Float; var outerRadius : Float; var thetaSegments : Float; var phiSegments : Float; var thetaStart : Float; var thetaLength : Float; };
}
extern class ShapeGeometry extends Geometry {
	@:overload(function(shapes:Array<Shape>, ?options:Dynamic):Void { })
	function new(shape:Shape, ?options:Dynamic):Void;
	function addShapeList(shapes:Array<Shape>, options:Dynamic):ShapeGeometry;
	function addShape(shape:Shape, ?options:Dynamic):Void;
}
extern class SphereGeometry extends Geometry {
	function new(radius:Float, ?widthSegments:Float, ?heightSegments:Float, ?phiStart:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float):Void;
	var parameters : { var radius : Float; var widthSegments : Float; var heightSegments : Float; var phiStart : Float; var phiLength : Float; var thetaStart : Float; var thetaLength : Float; };
}
extern class TetrahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float):Void;
}
typedef TextGeometryParameters = {
	@:optional
	var size : Float;
	@:optional
	var height : Float;
	@:optional
	var curveSegments : Float;
	@:optional
	var font : String;
	@:optional
	var weight : String;
	@:optional
	var style : String;
	@:optional
	var bevelEnabled : Bool;
	@:optional
	var bevelThickness : Float;
	@:optional
	var bevelSize : Float;
};
extern class TextGeometry extends ExtrudeGeometry {
	function new(text:String, ?TextGeometryParameters:TextGeometryParameters):Void;
}
extern class TorusGeometry extends Geometry {
	function new(?radius:Float, ?tube:Float, ?radialSegments:Float, ?tubularSegments:Float, ?arc:Float):Void;
	var parameters : { var radius : Float; var tube : Float; var radialSegments : Float; var tubularSegments : Float; var arc : Float; };
}
extern class TorusKnotGeometry extends Geometry {
	function new(?radius:Float, ?tube:Float, ?radialSegments:Float, ?tubularSegments:Float, ?p:Float, ?q:Float, ?heightScale:Float):Void;
	var parameters : { var radius : Float; var tube : Float; var radialSegments : Float; var tubularSegments : Float; var p : Float; var q : Float; var heightScale : Float; };
}
extern class TubeGeometry extends Geometry {
	function new(path:Path, ?segments:Float, ?radius:Float, ?radiusSegments:Float, ?closed:Bool, ?taper:Float -> Float):Void;
	var parameters : { var path : Path; var segments : Float; var radius : Float; var radialSegments : Float; var closed : Bool; var taper : Float -> Float; };
	var tangents : Array<Vector3>;
	var normals : Array<Vector3>;
	var binormals : Array<Vector3>;
	static function NoTaper(?u:Float):Float;
	static function SinusoidalTaper(u:Float):Float;
	static function FrenetFrames(path:Path, segments:Float, closed:Bool):Void;
}
extern class ArrowHelper extends Object3D {
	function new(dir:Vector3, ?origin:Vector3, ?length:Float, ?hex:Float, ?headLength:Float, ?headWidth:Float):Void;
	var line : Line;
	var cone : Mesh;
	function setDirection(dir:Vector3):Void;
	function setLength(length:Float, ?headLength:Float, ?headWidth:Float):Void;
	function setColor(hex:Float):Void;
}
extern class AxisHelper extends Line {
	function new(?size:Float):Void;
}
extern class BoundingBoxHelper extends Mesh {
	function new(object:Object3D, ?hex:Float):Void;
	var object : Object3D;
	var box : Box3;
	function update():Void;
}
extern class BoxHelper extends Line {
	function new(?object:Object3D):Void;
	function update(?object:Object3D):Void;
}
extern class CameraHelper extends Line {
	function new(camera:Camera):Void;
	var camera : Camera;
	var pointMap : { };
	function update():Void;
}
extern class DirectionalLightHelper extends Object3D {
	function new(light:Light, ?size:Float):Void;
	var light : Light;
	var lightPlane : Line;
	var targetLine : Line;
	function dispose():Void;
	function update():Void;
}
extern class EdgesHelper extends Line {
	function new(object:Object3D, ?hex:Float, ?thresholdAngle:Float):Void;
}
extern class FaceNormalsHelper extends Line {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float):Void;
	var object : Object3D;
	var size : Float;
	var normalMatrix : Matrix3;
	function update(?object:Object3D):Void;
}
extern class GridHelper extends Line {
	function new(size:Float, step:Float):Void;
	var color1 : Color;
	var color2 : Color;
	function setColors(colorCenterLine:Float, colorGrid:Float):Void;
}
extern class HemisphereLightHelper extends Object3D {
	function new(light:Light, sphereSize:Float):Void;
	var light : Light;
	var colors : Array<Color>;
	var lightSphere : Mesh;
	function dispose():Void;
	function update():Void;
}
extern class PointLightHelper extends Object3D {
	function new(light:Light, sphereSize:Float):Void;
	var light : Light;
	function dispose():Void;
	function update():Void;
}
extern class SkeletonHelper extends Line {
	function new(bone:Object3D):Void;
	var bones : Array<Bone>;
	var root : Object3D;
	function getBoneList(object:Object3D):Array<Bone>;
	function update():Void;
}
extern class SpotLightHelper extends Object3D {
	function new(light:Light, sphereSize:Float, arrowLength:Float):Void;
	var light : Light;
	var cone : Mesh;
	function dispose():Void;
	function update():Void;
}
extern class VertexNormalsHelper extends Line {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float):Void;
	var object : Object3D;
	var size : Float;
	var normalMatrix : Matrix3;
	function update(?object:Object3D):Void;
}
extern class VertexTangentsHelper extends Line {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float):Void;
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
}
extern class WireframeHelper extends Line {
	function new(object:Object3D, ?hex:Float):Void;
}
extern class ImmediateRenderObject extends Object3D {
	function new():Void;
	function render(renderCallback:haxe.Constraints.Function):Void;
}
typedef MorphBlendMeshAnimation = {
	var startFrame : Float;
	var endFrame : Float;
	var length : Float;
	var fps : Float;
	var duration : Float;
	var lastFrame : Float;
	var currentFrame : Float;
	var active : Bool;
	var time : Float;
	var direction : Float;
	var weight : Float;
	var directionBackwards : Bool;
	var mirroredLoop : Bool;
};
extern class MorphBlendMesh extends Mesh {
	function new(geometry:Geometry, material:Material):Void;
	var animationsMap : { };
	var animationsList : Array<MorphBlendMeshAnimation>;
	function createAnimation(name:String, start:Float, end:Float, fps:Float):Void;
	function autoCreateAnimations(fps:Float):Void;
	function setAnimationDirectionForward(name:String):Void;
	function setAnimationDirectionBackward(name:String):Void;
	function setAnimationFPS(name:String, fps:Float):Void;
	function setAnimationDuration(name:String, duration:Float):Void;
	function setAnimationWeight(name:String, weight:Float):Void;
	function setAnimationTime(name:String, time:Float):Void;
	function getAnimationTime(name:String):Float;
	function getAnimationDuration(name:String):Float;
	function playAnimation(name:String):Void;
	function stopAnimation(name:String):Void;
	function update(delta:Float):Void;
}
extern class THREETopLevel {
	static var REVISION : String;
	static var LEFT : MOUSE;
	static var MIDDLE : MOUSE;
	static var RIGHT : MOUSE;
	static var CullFaceNone : CullFace;
	static var CullFaceBack : CullFace;
	static var CullFaceFront : CullFace;
	static var CullFaceFrontBack : CullFace;
	static var FrontFaceDirectionCW : FrontFaceDirection;
	static var FrontFaceDirectionCCW : FrontFaceDirection;
	static var BasicShadowMap : ShadowMapType;
	static var PCFShadowMap : ShadowMapType;
	static var PCFSoftShadowMap : ShadowMapType;
	static var FrontSide : Side;
	static var BackSide : Side;
	static var DoubleSide : Side;
	static var NoShading : Shading;
	static var FlatShading : Shading;
	static var SmoothShading : Shading;
	static var NoColors : Colors;
	static var FaceColors : Colors;
	static var VertexColors : Colors;
	static var NoBlending : Blending;
	static var NormalBlending : Blending;
	static var AdditiveBlending : Blending;
	static var SubtractiveBlending : Blending;
	static var MultiplyBlending : Blending;
	static var CustomBlending : Blending;
	static var AddEquation : BlendingEquation;
	static var SubtractEquation : BlendingEquation;
	static var ReverseSubtractEquation : BlendingEquation;
	static var MinEquation : BlendingEquation;
	static var MaxEquation : BlendingEquation;
	static var ZeroFactor : BlendingDstFactor;
	static var OneFactor : BlendingDstFactor;
	static var SrcColorFactor : BlendingDstFactor;
	static var OneMinusSrcColorFactor : BlendingDstFactor;
	static var SrcAlphaFactor : BlendingDstFactor;
	static var OneMinusSrcAlphaFactor : BlendingDstFactor;
	static var DstAlphaFactor : BlendingDstFactor;
	static var OneMinusDstAlphaFactor : BlendingDstFactor;
	static var DstColorFactor : BlendingSrcFactor;
	static var OneMinusDstColorFactor : BlendingSrcFactor;
	static var SrcAlphaSaturateFactor : BlendingSrcFactor;
	static var MultiplyOperation : Combine;
	static var MixOperation : Combine;
	static var AddOperation : Combine;
	static var UVMapping : Mapping;
	static var CubeReflectionMapping : Mapping;
	static var CubeRefractionMapping : Mapping;
	static var EquirectangularReflectionMapping : Mapping;
	static var EquirectangularRefractionMapping : Mapping;
	static var SphericalReflectionMapping : Mapping;
	static var RepeatWrapping : Wrapping;
	static var ClampToEdgeWrapping : Wrapping;
	static var MirroredRepeatWrapping : Wrapping;
	static var NearestFilter : TextureFilter;
	static var NearestMipMapNearestFilter : TextureFilter;
	static var NearestMipMapLinearFilter : TextureFilter;
	static var LinearFilter : TextureFilter;
	static var LinearMipMapNearestFilter : TextureFilter;
	static var LinearMipMapLinearFilter : TextureFilter;
	static var UnsignedByteType : TextureDataType;
	static var ByteType : TextureDataType;
	static var ShortType : TextureDataType;
	static var UnsignedShortType : TextureDataType;
	static var IntType : TextureDataType;
	static var UnsignedIntType : TextureDataType;
	static var FloatType : TextureDataType;
	static var HalfFloatType : TextureDataType;
	static var UnsignedShort4444Type : PixelType;
	static var UnsignedShort5551Type : PixelType;
	static var UnsignedShort565Type : PixelType;
	static var AlphaFormat : PixelFormat;
	static var RGBFormat : PixelFormat;
	static var RGBAFormat : PixelFormat;
	static var LuminanceFormat : PixelFormat;
	static var LuminanceAlphaFormat : PixelFormat;
	static var RGBEFormat : PixelFormat;
	static var RGB_S3TC_DXT1_Format : CompressedPixelFormat;
	static var RGBA_S3TC_DXT1_Format : CompressedPixelFormat;
	static var RGBA_S3TC_DXT3_Format : CompressedPixelFormat;
	static var RGBA_S3TC_DXT5_Format : CompressedPixelFormat;
	static var RGB_PVRTC_4BPPV1_Format : CompressedPixelFormat;
	static var RGB_PVRTC_2BPPV1_Format : CompressedPixelFormat;
	static var RGBA_PVRTC_4BPPV1_Format : CompressedPixelFormat;
	static var RGBA_PVRTC_2BPPV1_Format : CompressedPixelFormat;
	static function warn(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function error(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static var Cache : Cache;
	static var Math : Math;
	static var LineStrip : LineMode;
	static var LinePieces : LineMode;
	static var ShaderChunk : ShaderChunk;
	static var ShaderLib : { var basic : Shader; var lambert : Shader; var phong : Shader; var particle_basic : Shader; var dashed : Shader; var depth : Shader; var normal : Shader; var normalmap : Shader; var cube : Shader; var equirect : Shader; var depthRGBA : Shader; };
	static var UniformsLib : { var common : Dynamic; var bump : Dynamic; var normalmap : Dynamic; var fog : Dynamic; var lights : Dynamic; var particle : Dynamic; var shadowmap : Dynamic; };
	static var UniformsUtils : { function merge(uniforms:Array<Dynamic>):Dynamic; function clone(uniforms_src:Dynamic):Dynamic; };
	static var WebGLState : WebGLStateStatic;
	static var WebGLTextures : WebGLTexturesStatic;
	static var FontUtils : { var faces : { }; var face : String; var weight : String; var style : String; var size : Float; var divisions : Float; function getFace():Face3; function loadFace(data:TypefaceData):TypefaceData; function drawText(text:String):{ var paths : Array<Path>; var offset : Float; }; function extractGlyphPoints(c:String, face:Face3, scale:Float, offset:Float, path:Path):{ var offset : Float; var path : Path; }; function generateShapes(text:String, ?parameters:{ @:optional
	var size : Float; @:optional
	var curveSegments : Float; @:optional
	var font : String; @:optional
	var weight : String; @:optional
	var style : String; }):Array<Shape>; var Triangulate : { function area(contour:Array<Vector2>):Float; }; };
	static var GeometryUtils : { @:overload(function(geometry1:Geometry, object2:Geometry, ?materialIndexOffset:Float):Void { })
	function merge(geometry1:Geometry, object2:Mesh, ?materialIndexOffset:Float):Void; function center(geometry:Geometry):Vector3; };
	static var ImageUtils : { var crossOrigin : String; function loadTexture(url:String, ?mapping:Mapping, ?onLoad:Texture -> Void, ?onError:String -> Void):Texture; function loadTextureCube(array:Array<String>, ?mapping:Mapping, ?onLoad:Texture -> Void, ?onError:String -> Void):Texture; function getNormalMap(image:HTMLImageElement, ?depth:Float):HTMLCanvasElement; function generateDataTexture(width:Float, height:Float, color:Color):DataTexture; };
	static var SceneUtils : { function createMultiMaterialObject(geometry:Geometry, materials:Array<Material>):Object3D; function detach(child:Object3D, parent:Object3D, scene:Scene):Void; function attach(child:Object3D, scene:Scene, parent:Object3D):Void; };
	static var AnimationHandler : { var LINEAR : Float; var CATMULLROM : Float; var CATMULLROM_FORWARD : Float; var animations : Array<Dynamic>; function init(data:AnimationData):AnimationData; function parse(root:Mesh):Array<Object3D>; function play(animation:Animation):Void; function stop(animation:Animation):Void; function update(deltaTimeMS:Float):Void; };
}
