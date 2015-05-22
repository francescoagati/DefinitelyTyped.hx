extern class ScreenPoint {
	var x : Float;
	var y : Float;
	@:overload(function(coords:Array<Float>):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new(x:Float, y:Float):Void;
	function offset(dx:Float, dy:Float):ScreenPoint;
	function setX(x:Float):ScreenPoint;
	function setY(y:Float):ScreenPoint;
	function toJson():Dynamic;
	function update(x:Float, y:Float):ScreenPoint;
}
