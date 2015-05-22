typedef Each = {
	var paused : Bool;
	var readable : Bool;
	var started : Bool;
	var done : Bool;
	var total : Bool;
	@:overload(function(eventName:Item, onItem:Dynamic -> ?Error -> Void -> Void):Each { })
	@:overload(function(eventName:Error, onError:Array<Error> -> Void):Each { })
	@:overload(function(eventName:Error, onError:Error -> Void):Each { })
	@:overload(function(eventName:Both, onBoth:?Array<Error> -> Void):Each { })
	@:overload(function(eventName:End, onEnd:Void -> Void):Each { })
	function on(eventName:String, onCallback:haxe.Constraints.Function):Each;
	@:overload(function(mode:Bool):Each { })
	function parallel(mode:Float):Each;
	function shift(items:Array<Dynamic>):Void;
	function write(items:Array<Dynamic>):Void;
	function unshift(items:Array<Dynamic>):Void;
	function end():Each;
	function times():Each;
	function repeat():Each;
	function sync():Each;
	@:overload(function(base:Dynamic, glob:Dynamic):Void { })
	function files(glob:Dynamic):Void;
};
typedef EachStatic = { };
extern class EachTopLevel {
	static var each : EachStatic;
}
extern class EachTopLevel {
	static var each : EachStatic;
}
