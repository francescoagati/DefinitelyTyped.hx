typedef WMSGetMapParams = {
	@:optional
	var version : String;
	@:optional
	var exceptions : String;
	@:optional
	var transparent : String;
	@:optional
	var format : String;
	@:optional
	var styles : String;
	var layers : String;
	@:optional
	var service : String;
};
typedef WMSOptions = {
	@:optional
	var opacity : Float;
	@:optional
	var singleTile : Bool;
	@:optional
	var isBaseLayer : Bool;
	@:optional
	var encodeBBOX : Bool;
	@:optional
	var noMagic : Bool;
	@:optional
	var yx : Dynamic;
};
typedef TileOptions = {
	@:optional
	var crossOriginKeyword : String;
};
extern class ArcGIS93Rest {

}
extern class ArcGISCache {

}
extern class ArcIMS {

}
extern class Bing {

}
extern class Boxes {

}
extern class EventPane {

}
extern class FixedZoomLevels {

}
extern class GeoRSS {

}
extern class Google {

}
extern class Grid extends HTTPRequest {
	var tileSize : Size;
	var tileOriginCorner : String;
	var tileOrigin : LonLat;
	var tileOptions : Dynamic;
	var tileClass : OpenLayers.Tile;
	var grid : Array<Array<OpenLayers.Tile>>;
	var singleTile : Bool;
	var ratio : Float;
	var buffer : Float;
	var transitionEffect : String;
	var numLoadingTiles : Float;
	var serverResolutions : Array<Float>;
	var loading : Bool;
	var backBuffer : HTMLElement;
	var gridResolution : Float;
	var backBufferResolution : Float;
	var backBufferLonLat : { var lon : Float; var lat : Float; };
	var backBufferTimerId : Float;
	var removeBackBufferDelay : Float;
	var className : String;
	var gridLayout : { var tilelon : Float; var tilelat : Float; var startcol : Float; var startrow : Float; };
	var rowSign : Float;
	var transitionendEvents : Array<String>;
	function new(name:String, url:String, params:{ }, options:{ }):Void;
	function initProperties():Void;
	function setMap(map:Map):Void;
	function removeMap(map:Map):Void;
	function destroy():Void;
	function clearGrid():Void;
	function addOptions(newOptions:{ }, reinitialize:Bool):Void;
	function clone(?obj:Dynamic):Layer.Grid;
	function moveTo(bounds:Bounds, zoomChanged:Bool, dragging:Bool):Void;
	function getTileData(loc:LonLat):{ var tile : Tile; var i : Float; var j : Float; };
	function destroyTile(tile:Tile):Void;
	function getServerResolution(resolution:Float):Float;
	function getServerZoom():Float;
	function applyBackBuffer(resolution:Float):Void;
	function createBackBuffer():HTMLElement;
	function removeBackBuffer():Void;
	function moveByPx(dx:Float, dy:Float):Void;
	function setTileSize(size:Size):Void;
	function getTilesBounds():Bounds;
	function initSingleTile(bounds:Bounds):Dynamic;
	function calculateGridLayout(bounds:Bounds, origin:LonLat, resolution:Float):{ var tilelon : Float; var tilelat : Float; var startcol : Float; var startrow : Float; };
	function getImageSize():Size;
	function getTileOrigin():LonLat;
	function getTileBoundsForGridIndex(row:Float, col:Float):Bounds;
	function initGriddedTiles(bounds:Bounds):Void;
	function getMaxExtent():Bounds;
	function addTile(bounds:Bounds, position:Float):Tile;
	function addTileMonitoringHooks(tile:Tile):Void;
	function removeTileMonitoringHooks(tile:Tile):Void;
	function moveGriddedTiles():Void;
	function shiftRow(prepend:Bool, tileSize:{ var w : Float; var h : Float; }):Void;
	function shiftColumn(prepend:Bool, tileSize:{ var w : Float; var h : Float; }):Void;
	function removeExcessTiles(rows:Float, columns:Float):Void;
	function onMapResize():Void;
	function getTileBounds(viewPortPx:Pixel):Bounds;
}
extern class HTTPRequest extends Layer {
	static var URL_HASH_FACTOR : Float;
	var url : Array<String>;
	var params : Dynamic;
	var reproject : Bool;
	@:overload(function(name:String, url:Array<String>, params:Dynamic, options:Dynamic):Void { })
	function new(name:String, url:String, params:Dynamic, options:Dynamic):Void;
	function destroy():Void;
	function clone(?obj:Dynamic):HTTPRequest;
	function setUrl(newUrl:String):Void;
	function mergeNewParams(newParams:Dynamic):Bool;
	function redraw(?force:Bool):Bool;
	function selectUrl(paramString:String, urls:Array<String>):String;
	function getFullRequestString(newParams:Dynamic, altUrl:String):String;
}
extern class Image extends Layer {
	var isBaseLayer : Bool;
	var url : String;
	var extent : OpenLayers.Bounds;
	var size : OpenLayers.Size;
	var tile : OpenLayers.Tile.Image;
	var aspectRatio : Float;
	function new(name:String, url:String, extent:OpenLayers.Bounds, size:OpenLayers.Size, options:Dynamic):Void;
	function destroy():Void;
	function clone(?obj:Dynamic):OpenLayers.Layer.Image;
	function setMap(map:OpenLayers.Map):Void;
	function moveTo(bounds:OpenLayers.Bounds, zoomChanged:Bool, dragging:Bool):Void;
	function setTileSize():Void;
	function addTileMonitoringHooks(tile:OpenLayers.Tile):Void;
	function removeTileMonitoringHooks(tile:OpenLayers.Tile):Void;
	function setUrl(newUrl:String):Void;
	function getURL(bounds:OpenLayers.Bounds):String;
	var CLASS_NAME : String;
}
extern class KaMap {

}
extern class KaMapCache {

}
extern class MapGuide {

}
extern class MapServer {

}
extern class Markers {

}
extern class OSM extends Layer.XYZ {
	var name : String;
	var url : Array<String>;
	var attribution : String;
	var sphericalMercator : Bool;
	var wrapDateLine : Bool;
	var tileOptions : TileOptions;
	@:overload(function(name:String, url:String, options:TileOptions):Void { })
	function new():Void;
	function clone(?obj:Dynamic):Layer.OSM;
	static var CLASS_NAME : String;
}
extern class PointGrid {

}
extern class PointTrack {

}
extern class SphericalMercator {

}
extern class TMS {

}
extern class Text {

}
extern class TileCache {

}
extern class UTFGrid {

}
extern class Vector {

}
extern class WMS extends Layer.Grid {
	var isBaseLayer : Bool;
	var encodeBBOX : Bool;
	var noMagic : Bool;
	var yx : Dynamic;
	function new(name:String, url:String, params:WMSGetMapParams, options:WMSOptions):Void;
	function clone():Layer.WMS;
	function reverseAxisOrder():Bool;
	function getURL(bounds:Bounds):String;
	function mergeNewParams(newParams:Dynamic):Bool;
	function getFullRequestString(newParams:Dynamic, altUrl:String):String;
	static var CLASS_NAME : String;
}
extern class WMTS {

}
extern class WorldWind {

}
extern class XYZ extends Layer.Grid {
	var isBaseLayer : Bool;
	var sphericalMercator : Bool;
	var zoomOffset : Float;
	var serverResolutions : Array<Float>;
	function new(name:String, url:String, ?options:Dynamic):Void;
	function clone(?obj:Dynamic):Layer.XYZ;
	function getURL(bounds:Bounds):String;
	function getXYZ(bounds:Bounds):{ var x : Float; var y : Float; var z : Float; };
	function setMap(map:Map):Void;
}
extern class Zoomify {

}
