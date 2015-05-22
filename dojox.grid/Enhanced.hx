extern class _Plugin {
	function new(inGrid:dojox.grid.EnhancedGrid, option:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class _Events {
	function new(inGrid:Dynamic):Void;
	var cellActiveClass : String;
	var headerCellActiveClass : String;
	var rowActiveClass : String;
	function dokeyup(e:Event):Void;
	function domousedown(e:Dynamic):Void;
	function domouseup(e:Dynamic):Void;
	function onCellClick(e:Dynamic):Void;
	function onCellDblClick(e:Dynamic):Void;
	function onCellMouseDown(e:Dynamic):Void;
	function onCellMouseUp(e:Event):Void;
	function onHeaderCellClick(e:Dynamic):Void;
	function onHeaderCellMouseDown(e:Dynamic):Void;
	function onHeaderCellMouseOut(e:Dynamic):Void;
	function onHeaderCellMouseUp(e:Dynamic):Void;
	function onKeyDown(e:Dynamic):Void;
	function onMouseUp(e:Event):Void;
	function onMouseUpRow(e:Dynamic):Void;
	function onRowClick(e:Dynamic):Void;
	function onRowContextMenu(e:Dynamic):Void;
	function onRowMouseUp(e:Dynamic):Void;
	function onRowSelectorMouseDown(e:Dynamic):Void;
	function onRowSelectorMouseUp(e:Dynamic):Void;
	function onSelectedRegionContextMenu(e:Event):Void;
}
extern class _PluginManager {
	function new(inGrid:Dynamic):Void;
	var registry : String;
	function destroy():Void;
	function forEach(func:Dynamic, args:Dynamic):Void;
	function getPlugin(name:String):Dynamic;
	@:overload(function(clazz:String):Dynamic { })
	function getPluginClazz(clazz:haxe.Constraints.Function):Dynamic;
	function isFixedCell(cell:Dynamic):Dynamic;
	function loadPlugin(name:String):Dynamic;
	function pluginExisted(name:String):Dynamic;
	function postInit():Void;
	function preInit():Void;
	function registerPlugin(clazz:String, props:Dynamic):Void;
	function startup():Void;
}
extern class _FocusManager extends dojox.grid._FocusManager {
	function new(grid:Dynamic):Void;
	var focusClass : String;
	var focusView : Dynamic;
	var tabbingOut : Bool;
	function addArea(area:Dynamic):Void;
	function blurHeader():Void;
	function colSizeAdjust(e:Dynamic, colIdx:Dynamic, delta:Dynamic):Void;
	function contentMouseEvent(evt:Dynamic):Void;
	function currentArea(areaName:String, toBlurOld:Dynamic):Dynamic;
	function destroy():Void;
	function doBlur(e:Dynamic):Void;
	function doColHeaderBlur(e:Dynamic):Void;
	function doColHeaderFocus(e:Dynamic):Void;
	function doContextMenu(e:Dynamic):Void;
	function doFocus(e:Dynamic):Void;
	function doLastNodeBlur(e:Dynamic):Void;
	function doLastNodeFocus(e:Dynamic):Void;
	function findAndFocusGridCell():Void;
	@:overload(function(areaId:String, evt:Dynamic):Void { })
	@:overload(function(areaId:Dynamic, evt:Dynamic):Void { })
	function focusArea(?areaId:Float, ?evt:Dynamic):Bool;
	function focusGrid(inSkipFocusCell:Dynamic):Void;
	function focusGridView():Void;
	function focusHeader(?evt:Dynamic, ?step:Dynamic):Bool;
	function getArea(areaName:Dynamic):Dynamic;
	function getHeaderIndex():Dynamic;
	function headerMouseEvent(evt:Dynamic):Void;
	function ignoreArea(name:Dynamic):Void;
	function initFocusView():Void;
	function isFirstFocusCell():Bool;
	function isFocusCell(inCell:Dynamic, inRowIndex:Float):Dynamic;
	function isLastFocusCell():Bool;
	function isNavHeader():Dynamic;
	function isNoFocusCell():Bool;
	function move(inRowDelta:Float, inColDelta:Float):Void;
	function next():Void;
	function nextKey(e:Dynamic):Void;
	function placeArea(name:Dynamic, pos:Dynamic, otherAreaName:Dynamic):Void;
	function previous():Void;
	function previousKey(e:Dynamic):Void;
	function removeArea(areaName:Dynamic):Void;
	function scrollIntoView():Dynamic;
	function setFocusCell(inCell:Dynamic, inRowIndex:Float):Void;
	function setFocusIndex(inRowIndex:Float, inCellIndex:Float):Void;
	function styleRow(inRow:Dynamic):Void;
	function tab(step:Dynamic, evt:Dynamic):Void;
	function tabOut(inFocusNode:Dynamic):Void;
}
