typedef Handle = {
	var bindDirection : Float;
	var converter : Dynamic;
	var target : Dynamic;
	var targetProp : String;
	function direction(bindDirection:Float):Void;
	function equals(equals:haxe.Constraints.Function):Void;
	function transform(converter:Dynamic):Void;
};
extern class AtTopLevel {
	static var both : Float;
	static var from : Float;
	static var handle : Dynamic;
	static var to : Float;
}
typedef Equals = { };
