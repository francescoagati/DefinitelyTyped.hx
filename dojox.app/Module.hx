extern class Env {
	function new():Void;
	var mode : String;
	function init():Void;
}
extern class Lifecycle {
	function new():Void;
	var lifecycle : Dynamic;
	function getStatus():Dynamic;
	function setStatus(newStatus:Dynamic):Void;
}
