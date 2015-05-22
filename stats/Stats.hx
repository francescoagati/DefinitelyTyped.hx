extern class Stats {
	var REVISION : Float;
	var domElement : HTMLDivElement;
	function setMode(value:Float):Void;
	function begin():Void;
	function end():Float;
	function update():Void;
}
