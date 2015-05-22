typedef Rectangle = {
	var x : Float;
	var y : Float;
	var w : Float;
	var h : Float;
};
typedef RTreeStatic = {
	function insert(bounds:Rectangle, element:Dynamic):Bool;
	function remove(area:Rectangle, ?element:Dynamic):Array<Dynamic>;
	function geoJSON(geoJSON:Dynamic):Void;
	function bbox(arg1:Dynamic, ?arg2:Dynamic, ?arg3:Float, ?arg4:Float):Array<Dynamic>;
	function search(area:Rectangle, ?return_node:Bool, ?return_array:Array<Dynamic>):Array<Dynamic>;
};
typedef RTreeFactory = { };
extern class RtreeTopLevel {
	static var RTree : RTreeFactory;
}
