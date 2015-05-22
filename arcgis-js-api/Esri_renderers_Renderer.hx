extern class Renderer {
	var colorInfo : Dynamic;
	var opacityInfo : Dynamic;
	var rotationInfo : Dynamic;
	var sizeInfo : Dynamic;
	function getColor(graphic:Graphic):Color;
	function getOpacity(graphic:Graphic):Float;
	function getRotationAngle(graphic:Graphic):Float;
	function getSize(graphic:Graphic):Float;
	function getSymbol(graphic:Graphic):Symbol;
	function setColorInfo(info:Dynamic):Renderer;
	function setOpacityInfo(info:Dynamic):Renderer;
	function setRotationInfo(info:Dynamic):Renderer;
	function setSizeInfo():Renderer;
	function toJson():Dynamic;
}
