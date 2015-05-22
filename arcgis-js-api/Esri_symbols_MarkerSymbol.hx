extern class MarkerSymbol extends Symbol {
	var angle : Float;
	var size : Float;
	var xoffset : Float;
	var yoffset : Float;
	function setAngle(angle:Float):MarkerSymbol;
	function setOffset(x:Float, y:Float):MarkerSymbol;
	function setSize(size:Float):MarkerSymbol;
	function toJson():Dynamic;
}
