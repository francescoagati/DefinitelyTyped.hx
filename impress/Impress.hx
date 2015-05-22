typedef Impress = {
	function init():Void;
	function getStep(step:Dynamic):Dynamic;
	function goto(element:Dynamic, ?duration:Float):Dynamic;
	function prev():Dynamic;
	function next():Dynamic;
};
extern class ImpressTopLevel {
	static function impress():Impress;
}
