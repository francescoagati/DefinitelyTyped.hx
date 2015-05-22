extern class Draw {
	static var ARROW : Dynamic;
	static var CIRCLE : Dynamic;
	static var DOWN_ARROW : Dynamic;
	static var ELLIPSE : Dynamic;
	static var EXTENT : Dynamic;
	static var FREEHAND_POLYGON : Dynamic;
	static var FREEHAND_POLYLINE : Dynamic;
	static var LEFT_ARROW : Dynamic;
	static var LINE : Dynamic;
	static var MULTI_POINT : Dynamic;
	static var POINT : Dynamic;
	static var POLYGON : Dynamic;
	static var POLYLINE : Dynamic;
	static var RECTANGLE : Dynamic;
	static var RIGHT_ARROW : Dynamic;
	static var TRIANGLE : Dynamic;
	static var UP_ARROW : Dynamic;
	var fillSymbol : SimpleFillSymbol;
	var lineSymbol : SimpleLineSymbol;
	var markerSymbol : SimpleMarkerSymbol;
	var respectDrawingVertexOrder : Bool;
	function new(map:Map, ?options:esri.DrawOptions):Void;
	function activate(geometryType:String, ?options:Dynamic):Void;
	function deactivate():Void;
	function finishDrawing():Void;
	function setFillSymbol(fillSymbol:FillSymbol):Void;
	function setLineSymbol(lineSymbol:LineSymbol):Void;
	function setMarkerSymbol(markerSymbol:MarkerSymbol):Void;
	function setRespectDrawingVertexOrder(set:Bool):Void;
	@:overload(function(type:Draw-end, listener:{ var geometry : Geometry; var target : Draw; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Draw-complete, listener:{ var geographicGeometry : Geometry; var geometry : Geometry; var target : Draw; } -> Void):esri.Handle;
}
