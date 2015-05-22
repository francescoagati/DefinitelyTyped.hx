extern class SceneTopLevel {
	static function item(mark:Vega.Node):Vega.Node;
}
extern class Bounds {
	var x1 : Float;
	var y1 : Float;
	var x2 : Float;
	var y2 : Float;
	function clear():Bounds;
	function set(x1:Float, y1:Float, x2:Float, y2:Float):Bounds;
	function add(x:Float, y:Float):Bounds;
	function expand(d:Float):Bounds;
	function round():Bounds;
	function translate(dx:Float, dy:Float):Bounds;
	function rotate(angle:Float, x:Float, y:Float):Bounds;
	function union(b:Bounds):Bounds;
	function encloses(b:Bounds):Bool;
	function intersects(b:Bounds):Bool;
	function contains(x:Float, y:Float):Bool;
	function width():Float;
	function height():Float;
}
