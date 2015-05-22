extern class Frame {
	function new(?context:String, ?name:String, ?alias:String, ?path:String):Void;
	function getName():String;
	function getUrl():String;
	function getLine():Float;
	function getColumn():Float;
	function isAnonymous():Bool;
	function toString():String;
}
extern class Snapshot {
	function new(?opt_slice:Float):Void;
	function getStacktrace():Array<Frame>;
}
extern class StacktraceTopLevel {
	static function format(error:Dynamic):Dynamic;
	static function get():Array<Frame>;
	static var BROWSER_SUPPORTED : Bool;
}
