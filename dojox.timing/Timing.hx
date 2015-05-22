extern class Sequence {
	function new():Void;
	@:overload(function(defs:Array<Dynamic>, doneFunction:Array<Dynamic>):Void { })
	function go(defs:Array<Dynamic>, doneFunction:haxe.Constraints.Function):Void;
	function goOn():Void;
	function stop():Void;
}
typedef DoLater = { };
typedef Streamer = { };
