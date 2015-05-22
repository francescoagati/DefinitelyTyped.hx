extern class Prng4TopLevel {
	static var size : Float;
}
extern class Secure {
	function new(prng:haxe.Constraints.Function, ?noEvents:Bool):Void;
	function destroy():Void;
	function nextBytes(byteArray:Array<Dynamic>):Void;
	function seedTime():Void;
}
extern class Simple {
	function new():Void;
	function destroy():Void;
	function nextBytes(byteArray:Array<Dynamic>):Void;
}
