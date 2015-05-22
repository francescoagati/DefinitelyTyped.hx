typedef IAggregative = {
	>Ext.chart.series.sprite.ICartesian,
	@:optional
	var dataClose : Dynamic;
	@:optional
	var dataHigh : Dynamic;
	@:optional
	var dataLow : Dynamic;
	@:optional
	var dataOpen : Dynamic;
	@:optional
	function getAggregator():Dynamic;
	@:optional
	function renderClipped(?surface:Dynamic, ?ctx:Dynamic, ?clip:Dynamic, ?region:Dynamic):Void;
	@:optional
	function setAggregator(?aggregator:Dynamic):Void;
};
typedef IArea = {
	>Ext.chart.series.sprite.IStackedCartesian,
	@:optional
	var step : Bool;
	@:optional
	function renderClipped(?surface:Dynamic, ?ctx:Dynamic, ?clip:Dynamic, ?clipRegion:Dynamic):Void;
};
typedef IBar = {
	>Ext.chart.series.sprite.IStackedCartesian,
	@:optional
	var inGroupGapWidth : Float;
	@:optional
	var maxBarWidth : Float;
	@:optional
	var minBarWidth : Float;
	@:optional
	var minGapWidth : Float;
	@:optional
	var radius : Float;
	@:optional
	function getIndexNearPoint(?x:Dynamic, ?y:Dynamic):Float;
	@:optional
	function renderClipped(?surface:Dynamic, ?ctx:Dynamic, ?clip:Dynamic):Void;
};
typedef ICandleStick = {
	>Ext.chart.series.sprite.IAggregative,
	@:optional
	var barWidth : Float;
	@:optional
	var ohlcType : String;
	@:optional
	var padding : Float;
};
typedef ICartesian = {
	>Ext.draw.sprite.ISprite,
	>Ext.chart.IMarkerHolder,
	@:optional
	var Data : Array<Dynamic>;
	@:optional
	var If : Bool;
	@:optional
	var dataMaxX : Float;
	@:optional
	var dataMaxY : Float;
	@:optional
	var dataMinX : Float;
	@:optional
	var dataMinY : Float;
	@:optional
	var dataX : Dynamic;
	@:optional
	var dataY : Dynamic;
	@:optional
	var field : String;
	@:optional
	var labelOverflowPadding : Float;
	@:optional
	var labels : Dynamic;
	@:optional
	var selectionTolerance : Float;
	@:optional
	function binarySearch(?key:String):Dynamic;
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
	@:optional
	function getField():String;
	@:optional
	function getIndexNearPoint(?x:Float, ?y:Float):Float;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?region:Dynamic):Dynamic;
	@:optional
	function renderClipped(?surface:Ext.draw.ISurface, ?ctx:Dynamic, ?clip:Array<Dynamic>, ?region:Array<Dynamic>):Void;
	@:optional
	function setField(?field:String):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
};
typedef ILine = {
	>Ext.chart.series.sprite.IAggregative,
	@:optional
	var fillArea : Bool;
	@:optional
	var preciseStroke : Bool;
	@:optional
	var smooth : Bool;
	@:optional
	var step : Bool;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
};
typedef IPie3DPart = {
	>Ext.draw.sprite.IPath,
	>Ext.chart.IMarkerHolder,
	@:optional
	var baseColor : Dynamic;
	@:optional
	var baseRotation : Float;
	@:optional
	var centerX : Float;
	@:optional
	var centerY : Float;
	@:optional
	var distortion : Float;
	@:optional
	var endAngle : Float;
	@:optional
	var endRho : Float;
	@:optional
	var margin : Float;
	@:optional
	var part : String;
	@:optional
	var startAngle : Float;
	@:optional
	var startRho : Float;
	@:optional
	var thickness : Float;
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
	@:optional
	function updatePath(?path:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic):Void;
};
typedef IPieSlice = {
	>Ext.draw.sprite.ISector,
	>Ext.chart.IMarkerHolder,
	@:optional
	var doCallout : Bool;
	@:optional
	var label : String;
	@:optional
	var labelOverflowPadding : Float;
	@:optional
	var rotateLabels : Bool;
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
	@:optional
	function getRendererIndex():Float;
	@:optional
	function render(?ctx:Dynamic, ?surface:Dynamic, ?clipRegion:Dynamic):Dynamic;
	@:optional
	function setRendererIndex(?rendererIndex:Float):Void;
};
typedef IPolar = {
	>Ext.draw.sprite.ISprite,
	>Ext.chart.IMarkerHolder,
	@:optional
	var Data : Array<Dynamic>;
	@:optional
	var baseRotation : Float;
	@:optional
	var centerX : Float;
	@:optional
	var centerY : Float;
	@:optional
	var dataMaxX : Float;
	@:optional
	var dataMaxY : Float;
	@:optional
	var dataMinX : Float;
	@:optional
	var dataMinY : Float;
	@:optional
	var dataX : Dynamic;
	@:optional
	var dataY : Dynamic;
	@:optional
	var endAngle : Float;
	@:optional
	var endRho : Float;
	@:optional
	var labelOverflowPadding : Float;
	@:optional
	var labels : Dynamic;
	@:optional
	var startAngle : Float;
	@:optional
	var startRho : Float;
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
	@:optional
	function getField():Dynamic;
	@:optional
	function setField(?field:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
};
typedef IRadar = {
	>Ext.chart.series.sprite.IPolar,
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic):Dynamic;
};
typedef IScatter = {
	>Ext.chart.series.sprite.ICartesian,
	@:optional
	function renderClipped(?surface:Dynamic, ?ctx:Dynamic, ?clip:Dynamic, ?clipRegion:Dynamic):Void;
};
typedef IStackedCartesian = {
	>Ext.chart.series.sprite.ICartesian,
	@:optional
	function getIndexNearPoint(?x:Dynamic, ?y:Dynamic):Float;
};
