extern class SnappingManager {
	function new(?options:esri.SnappingManagerOptions):Void;
	function destroy():Void;
	function getSnappingPoint(screenPoint:Point):Dynamic;
	function setLayerInfos(layerInfos:Array<Dynamic>):Void;
}
