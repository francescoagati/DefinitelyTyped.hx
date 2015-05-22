extern class SpatialIndex extends Processor {
	function new(?options:esri.SpatialIndexOptions):Void;
	@:overload(function(test:Graphic, ?layerId:String, ?getRects:Bool):Dynamic { })
	@:overload(function(test:Extent, ?layerId:String, ?getRects:Bool):Dynamic { })
	@:overload(function(test:Array<Float>, ?layerId:String, ?getRects:Bool):Dynamic { })
	function intersects(test:Point, ?layerId:String, ?getRects:Bool):Dynamic;
	function nearest(criteria:Dynamic, ?layerId:String):Dynamic;
}
