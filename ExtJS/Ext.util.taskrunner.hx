typedef ITask = {
	@:optional
	var fireOnStart : Bool;
	@:optional
	function destroy():Void;
	@:optional
	function restart(?interval:Float):Void;
	@:optional
	function start(?interval:Float):Void;
	@:optional
	function stop():Void;
};
