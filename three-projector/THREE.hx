extern class RenderableObject {
	function new():Void;
	var id : Float;
	var object : Dynamic;
	var z : Float;
}
extern class RenderableFace {
	function new():Void;
	var id : Float;
	var v1 : RenderableVertex;
	var v2 : RenderableVertex;
	var v3 : RenderableVertex;
	var normalModel : Vector3;
	var vertexNormalsModel : Array<Vector3>;
	var vertexNormalsLength : Float;
	var color : Color;
	var material : Material;
	var uvs : Array<Array<Vector2>>;
	var z : Float;
}
extern class RenderableVertex {
	function new():Void;
	var position : Vector3;
	var positionWorld : Vector3;
	var positionScreen : Vector4;
	var visible : Bool;
	function copy(vertex:RenderableVertex):Void;
}
extern class RenderableLine {
	function new():Void;
	var id : Float;
	var v1 : RenderableVertex;
	var v2 : RenderableVertex;
	var vertexColors : Array<Color>;
	var material : Material;
	var z : Float;
}
extern class RenderableSprite {
	function new():Void;
	var id : Float;
	var object : Dynamic;
	var x : Float;
	var y : Float;
	var z : Float;
	var rotation : Float;
	var scale : Vector2;
	var material : Material;
}
extern class Projector {
	function new():Void;
	function projectVector(vector:Vector3, camera:Camera):Vector3;
	function unprojectVector(vector:Vector3, camera:Camera):Vector3;
	function projectScene(scene:Scene, camera:Camera, sortObjects:Bool, ?sortElements:Bool):{ var objects : Array<Object3D>; var sprites : Array<Object3D>; var lights : Array<Light>; var elements : Array<Face3>; };
}
