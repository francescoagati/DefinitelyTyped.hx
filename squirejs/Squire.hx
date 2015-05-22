extern class Squire {
	@:overload(function(context:String):Void { })
	function new():Void;
	@:overload(function(mocks:{ }):Squire { })
	function mock(name:String, mock:Dynamic):Squire;
	function require(dependencies:Array<String>, callback:haxe.Constraints.Function, errback:haxe.Constraints.Function):Squire;
	function store(name:haxe.extern.EitherType<String, Array<String>>):Squire;
	@:overload(function(name:haxe.extern.EitherType<String, Array<String>>):Squire { })
	function clean():Squire;
	function remove():String;
	function run(dependencies:Array<String>, test:haxe.Constraints.Function):haxe.Constraints.Function -> Void;
}
