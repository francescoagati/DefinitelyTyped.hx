typedef HumaneOptions = {
	@:optional
	var queue : Array<String>;
	@:optional
	var baseCls : String;
	@:optional
	var addnCls : String;
	@:optional
	var timeout : Float;
	@:optional
	var waitForMove : Bool;
	@:optional
	var clickToClose : Bool;
	@:optional
	var forceNew : Bool;
};
typedef Humane = {
	var queue : Array<String>;
	var baseCls : String;
	var addnCls : String;
	var timeout : Float;
	var waitForMove : Bool;
	var clickToClose : Bool;
	var forceNew : Bool;
	function create(?options:HumaneOptions):Humane;
	var info : haxe.Constraints.Function;
	var error : haxe.Constraints.Function;
	function spawn(options:HumaneOptions):haxe.Constraints.Function;
	function remove(any:Dynamic):Void;
	@:overload(function(message:String, callback:haxe.Constraints.Function):Humane { })
	@:overload(function(message:String, options:HumaneOptions):Humane { })
	@:overload(function(message:String, callback:haxe.Constraints.Function, options:HumaneOptions):Humane { })
	@:overload(function(listOfMessages:Array<Dynamic>):Humane { })
	function log(message:String):Humane;
};
extern class HumaneTopLevel {
	static var humane : Humane;
}
