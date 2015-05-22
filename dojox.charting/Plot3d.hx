extern class Bars extends dojox.charting.plot3d.Base {
	function new(width:Dynamic, height:Dynamic, kwArgs:Dynamic):Void;
	function generate(chart:Dynamic, creator:Dynamic):haxe.Constraints.Function;
	function getDepth():Dynamic;
	function setData(data:Dynamic):haxe.Constraints.Function;
}
extern class Base {
	function new(width:Dynamic, height:Dynamic, kwArgs:Dynamic):Void;
	function generate(chart:Dynamic, creator:Dynamic):Void;
	function getDepth():Dynamic;
	function setData(data:Dynamic):haxe.Constraints.Function;
}
extern class Cylinders extends dojox.charting.plot3d.Base {
	function new(width:Dynamic, height:Dynamic, kwArgs:Dynamic):Void;
	function generate(chart:Dynamic, creator:Dynamic):haxe.Constraints.Function;
	function getDepth():Dynamic;
	function setData(data:Dynamic):haxe.Constraints.Function;
}
