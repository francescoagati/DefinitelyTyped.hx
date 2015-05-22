typedef SpriteCanvasMaterialParameters = {
	>MaterialParameters,
	@:optional
	var color : Float;
};
extern class SpriteCanvasMaterial extends Material {
	function new(?parameters:SpriteCanvasMaterialParameters):Void;
	var color : Color;
	function program(context:Dynamic, color:Color):Void;
	function clone():SpriteCanvasMaterial;
}
typedef CanvasRendererParameters = {
	@:optional
	var canvas : HTMLCanvasElement;
	@:optional
	var devicePixelRatio : Float;
};
extern class CanvasRenderer {
	function new(?parameters:CanvasRendererParameters):Void;
	var domElement : HTMLCanvasElement;
	var autoClear : Bool;
	var sortObjects : Bool;
	var sortElements : Bool;
	var info : { var render : { var vertices : Float; var faces : Float; }; };
	function supportsVertexTextures():Void;
	function setFaceCulling():Void;
	function getPixelRatio():Float;
	function setPixelRatio(value:Float):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
	function setViewport(x:Float, y:Float, width:Float, height:Float):Void;
	function setScissor():Void;
	function enableScissorTest():Void;
	@:overload(function(color:String, ?opacity:Float):Void { })
	@:overload(function(color:Float, ?opacity:Float):Void { })
	function setClearColor(color:Color, ?opacity:Float):Void;
	function setClearColorHex(hex:Float, ?alpha:Float):Void;
	function getClearColor():Color;
	function getClearAlpha():Float;
	function getMaxAnisotropy():Float;
	function clear():Void;
	function clearColor():Void;
	function clearDepth():Void;
	function clearStencil():Void;
	function render(scene:Scene, camera:Camera):Void;
}
