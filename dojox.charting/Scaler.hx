typedef Common = {
	function doIfLoaded(moduleName:Dynamic, ifloaded:Dynamic, ifnotloaded:Dynamic):Dynamic;
	function getNumericLabel(number:Float, precision:Float, kwArgs:Dynamic):Dynamic;
};
typedef Linear = {
	function buildScaler(min:Float, max:Float, span:Float, kwArgs:Dynamic, delta:Float, minorDelta:Float):Dynamic;
	function buildTicks(scaler:Dynamic, kwArgs:Dynamic):Dynamic;
	function getTransformerFromModel(scaler:Dynamic):haxe.Constraints.Function;
	function getTransformerFromPlot(scaler:Dynamic):haxe.Constraints.Function;
};
typedef Primitive = {
	function buildScaler(min:Float, max:Float, span:Float, kwArgs:Dynamic):Dynamic;
	function buildTicks(scaler:Dynamic, kwArgs:Dynamic):Dynamic;
	function getTransformerFromModel(scaler:Dynamic):haxe.Constraints.Function;
	function getTransformerFromPlot(scaler:Dynamic):haxe.Constraints.Function;
};
