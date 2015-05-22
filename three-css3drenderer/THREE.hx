extern class CSS3DObject extends Object3D {
	function new(element:Dynamic):Void;
	var element : Dynamic;
}
extern class CSS3DSprite extends CSS3DObject {
	function new(element:Dynamic):Void;
}
extern class CSS3DRenderer {
	function new():Void;
	var domElement : HTMLElement;
	function setSize(width:Float, height:Float):Void;
	function render(scene:THREE.Scene, camera:THREE.Camera):Void;
}
