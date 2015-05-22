typedef Route = {
	function new(path:String, name:String):Void;
	function addHandler(fn:haxe.Constraints.Function):Void;
	function removeHandler(fn:haxe.Constraints.Function):Void;
	function run(params:Dynamic):Void;
	function match(path:String, params:Dynamic):Bool;
	function toURL(params:Dynamic):String;
};
extern class RoutieTopLevel {
	static function routie(path:String):Void;
	static function routie(path:String, fn:haxe.Constraints.Function):Void;
	static function routie(routes:{ }):Void;
}
