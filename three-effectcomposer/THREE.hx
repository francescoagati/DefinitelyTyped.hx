extern class EffectComposer {
	function new(renderer:WebGLRenderer, ?renderTarget:WebGLRenderTarget):Void;
	var renderTarget1 : WebGLRenderTarget;
	var renderTarget2 : WebGLRenderTarget;
	var writeBuffer : WebGLRenderTarget;
	var readBuffer : WebGLRenderTarget;
	var passes : Array<Dynamic>;
	var copyPass : ShaderPass;
	function swapBuffers():Void;
	function addPass(pass:Dynamic):Void;
	function insertPass(pass:Dynamic, index:Float):Void;
	function render(?delta:Float):Void;
	function reset(?renderTarget:WebGLRenderTarget):Void;
	function setSize(width:Float, height:Float):Void;
}
