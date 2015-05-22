extern class AssertionError {
	function new(message:String, ?props:Dynamic, ?ssf:haxe.Constraints.Function):Void;
	var name : String;
	var message : String;
	var showDiff : Bool;
	var stack : String;
}
