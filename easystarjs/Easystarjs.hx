extern class Js {
	function new():Js;
	function setGrid(grid:Array<Array<Float>>):Void;
	function setAcceptableTiles(tiles:Array<Float>):Void;
	function findPath(startX:Float, startY:Float, endX:Float, endY:Float, callback:Array<Position> -> Void):Void;
	function calculate():Void;
	function setIterationsPerCalculation(iterations:Float):Void;
	function avoidAdditionalPoint(x:Float, y:Float):Void;
	function stopAvoidingAdditionalPoint(x:Float, y:Float):Void;
	function stopAvoidingAllAdditionalPoints():Void;
	function enableDiagonals():Void;
	function disableDiagonals():Void;
	function setTileCost(tileType:Float, multiplicativeCost:Float):Void;
}
typedef Position = {
	var x : Float;
	var y : Float;
};
