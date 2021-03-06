extern class MaskPass {
	function new(scene:Scene, camera:Camera):Void;
	var scene : Scene;
	var camera : Camera;
	var enabled : Bool;
	var clear : Bool;
	var needsSwap : Bool;
	var inverse : Bool;
	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float):Void;
}
extern class ClearMaskPass {
	function new():Void;
	var enabled : Bool;
	function render(renderer:WebGLRenderer, writeBuffer:WebGLRenderTarget, readBuffer:WebGLRenderTarget, delta:Float):Void;
}
