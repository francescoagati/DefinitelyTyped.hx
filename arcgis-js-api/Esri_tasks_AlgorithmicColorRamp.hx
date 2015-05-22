extern class AlgorithmicColorRamp extends ColorRamp {
	var algorithm : String;
	var fromColor : Color;
	var toColor : Color;
	function new():Void;
	function toJson():Dynamic;
}
