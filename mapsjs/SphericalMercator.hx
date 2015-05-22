extern class SphericalMercatorTopLevel {
	static function getEpsg():Float;
	static function getMinZoomLevel():Float;
	static function setMinZoomLevel(minZ:Float):Void;
	static function getMaxZoomLevel():Float;
	static function setMaxZoomLevel(maxZ:Float):Void;
	static function getTileSizePix():Float;
	static function getDpi():Float;
	static function setDpi(dpi:Float):Void;
	static function getRadius():Float;
	static function getCircumference():Float;
	static function getHalfCircumference():Float;
	static function getQuadTreeNodeToMapEnvelope(x:Float, y:Float, z:Float):Envelope;
	static function getQuadTreeNodeRangeFromEnvelope(env:Envelope, z:Float):Envelope;
	static function getProjectionUnitsPerPixel(zoomLevel:Float):Float;
	static function getActualShapeScaleTransform(mapPtY:Float):Float;
	static function getActualUnitsPerPixel(mapPt:Point, zoomLevel:Float):Float;
	static function getBestFitZoomLevelByExtents(envelopeMap:Envelope, envelopeDevice:Envelope):Float;
	static function getQuadKeyFromXYZ(x:Float, y:Float, z:Float):String;
	static function getXYZFromQuadKey(key:String):{ var x : Float; var y : Float; var z : Float; };
	static function projectFromLatLon(lonLat:Point):Point;
	static function deprojectToLatLon(mapPt:Point):Point;
	static var version : String;
}
extern class StyledGeometry {
	function new(geom:Geometry, ?gStyle:GeometryStyle):Void;
	function setGeometry(g:Geometry):Void;
	function setGeometryStyle(gs:GeometryStyle):Void;
	function getGeometry():Geometry;
	function getGeometryStyle():GeometryStyle;
	function getOutlineThicknessPix():Float;
	function setOutlineThicknessPix(t:Float):Void;
	function getOutlineColor():String;
	function setOutlineColor(c:String):Void;
	function getOutlineOpacity():Float;
	function setOutlineOpacity(o:Float):Void;
	function getFillColor():String;
	function setFillColor(c:String):Void;
	function getFillOpacity():Float;
	function setFillOpacity(o:Float):Void;
	function getDashArray():String;
	function setDashArray(da:String):Void;
	function getAnimation():HTMLElement -> Void -> Void -> Void;
	function setAnimation(action:HTMLElement -> Void -> Void -> Void):Void;
	function createSvgPathElement(key:String, mapUnitsPerPix:Float):HTMLElement;
	function renderPathToCanvasContext(ctx:CanvasRenderingContext2D):Void;
}
