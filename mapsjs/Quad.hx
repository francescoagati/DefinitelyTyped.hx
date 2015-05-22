extern class QuadTopLevel {
	static function factoryQuadFromKey(key:String):Quad;
}
extern class Renderer {
	function new(?options:{ @:optional
	var renderPoint : Point -> CanvasRenderingContext2D -> Void; @:optional
	var renderGeometry : Geometry -> CanvasRenderingContext2D -> Void; @:optional
	var renderBitmap : HTMLElement -> CanvasRenderingContext2D -> Float -> Float -> Void; }):Void;
	function setRenderPoint(func:Point -> CanvasRenderingContext2D -> Void):Void;
	function setRenderGeometry(func:Geometry -> CanvasRenderingContext2D -> Void):Void;
	function setRenderBitmap(func:HTMLElement -> CanvasRenderingContext2D -> Float -> Float -> Void):Void;
}
extern class RendererDensityMap {
	function new():Void;
	function setBleed(bleed:Float):Void;
	function setGridSize(gridSize:Float):Void;
	function setFilterStdDevRadius(filterStdDevRadius:Float):Void;
	function setColorMatrix(matrix:Array<Array<Float>>):Void;
	function setMinCellValue(min:Float):Void;
	function setRowAction(action:Dynamic -> Float):Void;
	function notifyRecompute(?extents:Envelope):Void;
}
extern class Requestor {
	function new():Void;
	function getFormattedEndpoint(quad:Quad, descriptor:Dynamic):String;
	function getLocalData(quad:Quad, descriptor:Dynamic):String;
	function hash(descriptor:Dynamic):String;
	function getIsRestImage():Bool;
	function setIsRestImage(flag:Bool):Void;
	function getUsesEndpoint():Bool;
	function setUsesEndpoint(flag:Bool):Void;
	function getDataFormat():String;
	function setDataFormat(df:String):Void;
	function getCacheEnabled():Bool;
	function setCacheEnabled(flag:Bool):Void;
	function getTimeoutMs():Float;
	function setTimeoutMs(ms:Float):Void;
	function getKeyVals():Array<{ }>;
	function setKeyVals(options:Array<{ }>):Void;
	function getMaxAvailableZoomLevel():Float;
	function setMaxAvailableZoomLevel(max:Float):Void;
}
extern class RequestorBing extends Requestor {
	function new(?options:{ @:optional
	var dataFormat : String; @:optional
	var timeoutMs : Float; @:optional
	var maxAvailableZoomLevel : Float; }):Void;
	function getEndpoint():String;
	function getScheme():String;
	function setScheme(s:String):Void;
	function getGeneration():String;
	function setGeneration(g:String):Void;
	function getMarket():String;
	function setMarket(m:String):Void;
	function getBingKey():String;
	function setBingKey(key:String):Void;
}
extern class RequestorMDNRest extends Requestor {
	function new(endpoint:String, ?options:{ @:optional
	var dataFormat : String; @:optional
	var timeoutMs : Float; @:optional
	var maxAvailableZoomLevel : Float; }):Void;
	function getEndpoint():String;
}
extern class DescriptorMDNRestMap {
	function new(mapId:String, ?options:{ @:optional
	var version : String; @:optional
	var imageType : String; @:optional
	var bleedRatio : Float; @:optional
	var mapCacheOption : String; @:optional
	var mapCacheName : String; @:optional
	var useQuadKeyForMapCacheName : Bool; @:optional
	var backgroundColorStr : String; @:optional
	var layerVisibility : { }; @:optional
	var layerOutline : { }; @:optional
	var layerFill : { }; @:optional
	var layerWhere : { }; @:optional
	var tag : String; }):Void;
	function setSuspendDescriptorChangeNotifications(flag:Bool):Void;
	function getMapId():String;
	function getVersion():String;
	function setVersion(v:String):Void;
	function getImageType():String;
	function setImageType(t:String):Void;
	function getBleedRatio():Float;
	function setBleedRatio(br:Float):Void;
	function getMapCacheOption():String;
	function setMapCacheOption(mco:String):Void;
	function getMapCacheName():String;
	function setMapCacheName(mcn:String):Void;
	function getUseQuadKeyForMapCacheName():Bool;
	function setUseQuadKeyForMapCacheName(flag:Bool):Void;
	function getBackgroundColorStr():String;
	function setBackgroundColor(a:Float, r:Float, g:Float, b:Float):Void;
	function getIsBackgroundTransparent():Bool;
	function setLayerVisibility(layerId:String, isVisible:Bool):Void;
	function getLayerVisibility(layerId:String):Bool;
	function setLayerOutline(layerId:String, a:Float, r:Float, g:Float, b:Float, thk:Float):Void;
	function getLayerOutline(layerId:String):{ var color : String; var thickness : Float; };
	function setLayerFill(layerId:String, a:Float, r:Float, g:Float, b:Float):Void;
	function setLayerFillAsExpression(layerId:String, exp:String):Void;
	function getLayerFill(layerId:String):String;
	function setLayerWhere(layerId:String, where:String, merge:Bool):Void;
	function setLayerWhereSep(sep:String):Void;
	function getLayerWhereSep():String;
	function getLayerWhere(layerId:String):String;
	function getTag():String;
	function setTag(tag:String):Void;
}
extern class DescriptorMDNRestFeature {
	function new(mapId:String, layerId:String, ?options:{ @:optional
	var version : String; @:optional
	var bleedRatio : Float; @:optional
	var fieldNames : Array<String>; @:optional
	var clipToRenderBounds : Bool; @:optional
	var simplifyEnabled : Bool; }):Void;
	function getMapId():String;
	function getLayerId():String;
	function getVersion():String;
	function setVersion(v:String):Void;
	function getBleedRatio():Float;
	function setBleedRatio(br:Float):Void;
	function getFieldNames():Array<String>;
	function setFieldNames(names:Array<String>):Void;
	function getClipToRenderBounds():Bool;
	function setClipToRenderBounds(flag:Bool):Void;
	function getSimplifyEnabled():Bool;
	function setSimplifyEnabled(flag:Bool):Void;
	function setNotifyDescriptorChangeAction(action:Void -> Void):Void;
}
extern class RequestorOpen extends Requestor {
	function new(endpoint:String, subdomains:Array<String>, ?options:{ @:optional
	var dataFormat : String; @:optional
	var timeoutMs : Float; @:optional
	var maxAvailableZoomLevel : Float; }):Void;
}
extern class RequestorLocal extends Requestor {
	function new(?options:{ @:optional
	var dataFormat : String; @:optional
	var timeoutMs : Float; @:optional
	var maxAvailableZoomLevel : Float; var data : Array<{ }>; }):Void;
	function getSource():Array<{ }>;
	function setSource(data:Array<{ }>):Void;
	function getParsedData():{ var Shapes : Array<Dynamic>; var Values : Array<Dynamic>; var Bounds : Array<Envelope>; };
}
extern class DescriptorLocal {
	function new(options:{ var valueFieldNames : Array<String>; var geometryFieldName : String; @:optional
	var bleedRatio : Float; }):Void;
}
typedef PointObject = {
	var x : Float;
	var y : Float;
};
typedef EnvObject = {
	var minX : Float;
	var minY : Float;
	var maxX : Float;
	var maxY : Float;
};
typedef ExtentChangeStatsObj = {
	var centerX : Float;
	var centerY : Float;
	var centerLat : Float;
	var centerLon : Float;
	var zoomLevel : Float;
	var mapScale : Float;
	var mapScaleProjected : Float;
	var mapUnitsPerPixel : Float;
	var extents : Envelope;
};
typedef RepositionStatsObj = {
	var centerX : Float;
	var centerY : Float;
	var zoomLevel : Float;
	var mapUnitsPerPixel : Float;
};
typedef BeginDigitizeOptions = {
	@:optional
	var key : String;
	var shapeType : String;
	@:optional
	var geometryStyle : GeometryStyle;
	@:optional
	var styledGeometry : StyledGeometry;
	@:optional
	var nodeTapAndHoldAction : Float -> Float -> Bool;
	@:optional
	var nodeMoveAction : Float -> Float -> String -> Dynamic;
	@:optional
	var shapeChangeAction : Void -> Void;
	@:optional
	var envelopeEndAction : Envelope -> Void;
	@:optional
	var circleEndAction : geometry.Polygon -> Void;
	@:optional
	var suppressNodeAdd : Bool;
	@:optional
	var leavePath : Bool;
};
typedef StyleObj = {
	@:optional
	var fillColor : String;
	@:optional
	var fillOpacity : Float;
	@:optional
	var outlineColor : String;
	@:optional
	var outlineOpacity : Float;
	@:optional
	var outlineThicknessPix : Float;
	@:optional
	var dashArray : String;
};
typedef MapsjsWidget = {
	function getMapCenter():Point;
	function setMapCenter(center:Point):Void;
	function setMapCenterAnimate(center:Point, ?durationMs:Float, ?completeAction:Void -> Void):Void;
	function setMapCenterToGeolocationAnimate(?durationMs:Float, ?completeAction:Void -> Void):Void;
	function offsetMapCenterByPixelDelta(dx:Float, dy:Float):Void;
	function offsetMapCenterByPixelDeltaAnimate(dx:Float, dy:Float, ?durationMs:Float):Void;
	function getZoomLevel():Float;
	function setZoomLevel(zl:Float):Void;
	function setMinZoomLevel(zl:Float):Void;
	function setMaxZoomLevel(zl:Float):Void;
	function setZoomLevelAnimate(zl:Float, ?durationMs:Float, ?completeAction:Void -> Void):Void;
	function zoomDelta(delta:Float):Void;
	function zoomDeltaAnimate(delta:Float, ?durationMs:Float):Void;
	function flyTo(center:Point, zl:Float, ?durationMs:Float, ?completeAction:Void -> Void):Void;
	function getMapExtents():Envelope;
	function getMapUnitsPerPixel():Float;
	function getViewExtentsInPix():{ var w : Float; var h : Float; };
	function getProjectedMapScale():Float;
	function getActualMapScale():Float;
	function getBestFitZoomLevelByExtents(extentsNew:Envelope):Float;
	function redraw():Void;
	function resize():Void;
	function pushTileLayer(tl:tile.Layer):Void;
	function popTileLayer():tile.Layer;
	function removeTileLayer(tl:tile.Layer):Void;
	function removeAllTileLayers():Void;
	function getTileLayerCount():Float;
	function getTileLayer(key:String):tile.Layer;
	function computeMapPointFromPixelLocation(x:Float, y:Float):Point;
	function setSuspendMapExtentChangesByGestures(flag:Bool):Void;
	function setDrawnContentZorderToTop(flag:Bool):Void;
	function addFixedContentElement(element:HTMLElement, mapUnitsX:Float, mapUnitsY:Float, ?addAction:HTMLElement -> Void, ?dragOptions:{ var dragEnabled : Bool; var useElementInsteadOfNewGestureOverlay : Bool; @:optional
	var downAction : Point -> Dynamic; @:optional
	var moveAction : Point -> Void; @:optional
	var upAction : Point -> Void; @:optional
	var wheelAction : Float -> Void; }):Void;
	function moveFixedContentElement(element:HTMLElement, mapUnitsX:Float, mapUnitsY:Float):Void;
	function removeFixedContentElement(element:HTMLElement):Void;
	function addPathGeometry(styledGeom:StyledGeometry, key:String, ?addAction:SVGElement -> Void, ?removeAction:SVGElement -> Void):SVGElement;
	function updatePathGeometryStyle(styleNew:GeometryStyle, key:String):Void;
	function removePathGeometry(?key:String):SVGElement;
	function beginDigitize(options:BeginDigitizeOptions):Void;
	function endDigitize():Void;
	function getDigitizeSnapshot():Geometry;
	function pushSetOnDigitizePath():Void;
	function popSetFromDigitizePath():Array<Float>;
	function deleteNodeOnDigitizePath(setIdx:Float, nodeIdx:Float):Void;
	function isDigitizingEnabled():Bool;
	function setExtentChangeCompleteAction(action:ExtentChangeStatsObj -> Void):Void;
	function setContentRepositionAction(action:RepositionStatsObj -> Void):Void;
	function setPointerClickAction(action:Point -> Void):Void;
	function setPointerHoverAction(action:Point -> Void):Void;
	function setContentExtentsMarginInPixels(cem:Float):Void;
	function setBackground(b:String):Void;
};
typedef JQuery = {
	@:overload(function(command:Dynamic, ?param:Dynamic, ?param2:Dynamic, ?param3:Dynamic, ?param4:Dynamic, ?param5:Dynamic):JQuery { })
	function rimMap():JQuery;
	function getMapsjs():Dynamic;
};
