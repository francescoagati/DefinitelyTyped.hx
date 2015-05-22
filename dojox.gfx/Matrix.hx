extern class Matrix2D {
	function new(arg:Dynamic):Void;
}
typedef Pattern = {
	var height : Float;
	var src : String;
	var type : String;
	var width : Float;
	var x : Float;
	var y : Float;
};
typedef RadialGradient = {
	var colors : Array<Dynamic>;
	var cx : Float;
	var cy : Float;
	var r : Float;
	var type : String;
};
typedef Shape = {
	function byId(id:String):dojox.gfx.shape.Shape;
	function dispose(s:dojox.gfx.shape.Shape, recurse:Bool):Void;
	function register(s:dojox.gfx.shape.Shape):Float;
};
