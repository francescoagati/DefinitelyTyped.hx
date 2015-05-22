typedef Hash = { };
typedef Has = { };
typedef Has = { };
typedef Has = {
	var cache : String;
	@:overload(function(name:Float, test:haxe.Constraints.Function, now:Bool, force:Bool):Dynamic { })
	function add(name:String, test:haxe.Constraints.Function, now:Bool, force:Bool):Dynamic;
	function clearElement(element:Dynamic):Void;
	function load(id:String, parentRequire:haxe.Constraints.Function, loaded:haxe.Constraints.Function):Void;
	function normalize(id:Dynamic, toAbsMid:haxe.Constraints.Function):Void;
};
