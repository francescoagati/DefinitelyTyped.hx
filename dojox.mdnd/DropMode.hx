extern class DefaultDropMode {
	function new():Void;
	function addArea(areas:Array<Dynamic>, object:Dynamic):Dynamic;
	function destroy():Void;
	function getDragPoint(coords:Dynamic, size:Dynamic, mousePosition:Dynamic):Dynamic;
	function getDropIndex(targetArea:Dynamic, coords:Dynamic):Dynamic;
	function getTargetArea(areaList:Array<Dynamic>, coords:Dynamic, currentIndexArea:Float):Dynamic;
	function initItems(area:Dynamic):Void;
	function refreshItems(area:Dynamic, indexItem:Float, size:Dynamic, added:Bool):Void;
	function updateAreas(areaList:Array<Dynamic>):Void;
}
extern class OverDropMode {
	function new():Void;
	function addArea(areas:Array<Dynamic>, object:Dynamic):Dynamic;
	function destroy():Void;
	function getDragPoint(coords:Dynamic, size:Dynamic, mousePosition:Dynamic):Dynamic;
	function getDropIndex(targetArea:Dynamic, coords:Dynamic):Dynamic;
	function getTargetArea(areaList:Array<Dynamic>, coords:Dynamic, currentIndexArea:Float):Dynamic;
	function initItems(area:Dynamic):Void;
	function refreshItems(area:Dynamic, indexItem:Float, size:Dynamic, added:Bool):Void;
	function updateAreas(areaList:Array<Dynamic>):Void;
}
extern class VerticalDropMode {
	function new():Void;
	function addArea(areas:Array<Dynamic>, object:Dynamic):Dynamic;
	function destroy():Void;
	function getDragPoint(coords:Dynamic, size:Dynamic, mousePosition:Dynamic):Dynamic;
	function getDropIndex(targetArea:Dynamic, coords:Dynamic):Dynamic;
	function getTargetArea(areaList:Array<Dynamic>, coords:Dynamic, currentIndexArea:Float):Dynamic;
	function initItems(area:Dynamic):Void;
	function refreshItems(area:Dynamic, indexItem:Float, size:Dynamic, added:Bool):Void;
	function updateAreas(areaList:Array<Dynamic>):Void;
}
