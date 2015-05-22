extern class RasterFunction {
	var arguments : Dynamic;
	var functionArguments : Dynamic;
	var functionName : String;
	var variableName : String;
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	function toJson():Dynamic;
}
