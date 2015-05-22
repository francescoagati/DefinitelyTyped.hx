typedef WMS = {
	>TileLayer,
	function setParams(params:WMS, ?noRedraw:Bool):WMS;
};
typedef Canvas = {
	function drawTile(canvas:HTMLCanvasElement, tilePoint:Point, zoom:Float):Canvas;
	function redraw():Canvas;
};
typedef TileLayerFactory = {
	function wms(baseUrl:String, options:WMSOptions):L.TileLayer.WMS;
	function canvas(?options:TileLayerOptions):L.TileLayer.Canvas;
};
