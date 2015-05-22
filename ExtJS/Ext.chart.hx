typedef IAxis = {
	>Ext.chart.axis.IAbstract,
	@:optional
	var adjustEnd : Bool;
	@:optional
	var dashSize : Float;
	@:optional
	var grid : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var length : Float;
	@:optional
	var majorTickSteps : Float;
	@:optional
	var minorTickSteps : Float;
	@:optional
	var position : String;
	@:optional
	var title : String;
	@:optional
	var width : Float;
	@:optional
	function drawAxis(?init:Dynamic):Void;
	@:optional
	function drawGrid():Void;
	@:optional
	function drawLabel():Void;
	@:optional
	function setTitle(?title:String):Void;
};
typedef ICategoryAxis = {
	>Ext.chart.axis.IAxis,
	@:optional
	var calculateCategoryCount : Bool;
	@:optional
	var categoryNames : String;
};
typedef INumericAxis = {
	>Ext.chart.axis.IAxis,
	@:optional
	var adjustMaximumByMajorUnit : Bool;
	@:optional
	var adjustMinimumByMajorUnit : Bool;
	@:optional
	var constrain : Bool;
	@:optional
	var decimals : Float;
	@:optional
	var maximum : Float;
	@:optional
	var minimum : Float;
	@:optional
	var position : String;
};
typedef ITimeAxis = {
	>Ext.chart.axis.INumeric,
	@:optional
	var constrain : Bool;
	@:optional
	var dateFormat : Dynamic;
	@:optional
	var fromDate : Dynamic;
	@:optional
	var step : Array<Dynamic>;
	@:optional
	var toDate : Dynamic;
};
typedef ICallout = {
	>Ext.IBase,
};
typedef IChart = {
	>Ext.draw.IComponent,
	>Ext.chart.theme.ITheme,
	>Ext.chart.IMask,
	>Ext.chart.INavigation,
	>Ext.util.IBindable,
	>Ext.util.IObservable,
	@:optional
	var animate : Dynamic;
	@:optional
	var axes : Array<Ext.chart.axis.IAxis>;
	@:optional
	var background : Dynamic;
	@:optional
	var gradients : Array<Dynamic>;
	@:optional
	var insetPadding : Float;
	@:optional
	var legend : Dynamic;
	@:optional
	var series : Array<Ext.chart.series.ISeries>;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var theme : String;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function initComponent():Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onShow():Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function redraw(?resize:Bool):Void;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function restoreZoom():Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function save(?config:Dynamic):Dynamic;
	@:optional
	function setZoom(?zoomConfig:Dynamic):Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef IHighlight = {
	>Ext.IBase,
	@:optional
	var highlight : Dynamic;
	@:optional
	var highlightCfg : Dynamic;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem():Void;
};
typedef ILabel = {
	>Ext.IBase,
	@:optional
	var label : Dynamic;
	@:optional
	function onCreateLabel(?storeItem:Ext.data.IModel, ?item:Dynamic, ?i:Float, ?display:String):Ext.draw.ISprite;
	@:optional
	function onPlaceLabel(?label:Ext.draw.ISprite, ?storeItem:Ext.data.IModel, ?item:Dynamic, ?i:Float, ?display:String, ?animate:Bool, ?index:Float):Void;
};
typedef ILegend = {
	>Ext.IBase,
	@:optional
	var boxFill : String;
	@:optional
	var boxStroke : String;
	@:optional
	var boxStrokeWidth : String;
	@:optional
	var boxZIndex : Float;
	@:optional
	var itemSpacing : Float;
	@:optional
	var labelColor : String;
	@:optional
	var labelFont : String;
	@:optional
	var padding : Float;
	@:optional
	var position : String;
	@:optional
	var update : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var isVertical : Bool;
	@:optional
	function toggle(?show:Bool):Void;
};
typedef ILegendItem = {
	>Ext.draw.ICompositeSprite,
	@:optional
	function createLegend(?config:Dynamic):Void;
	@:optional
	function updatePosition(?relativeTo:Dynamic):Void;
};
typedef IMask = {
	>Ext.IBase,
	@:optional
	var mask : Dynamic;
};
typedef IMaskLayer = {
	>Ext.IComponent,
	@:optional
	function initComponent():Void;
};
typedef INavigation = {
	>Ext.IBase,
	@:optional
	function restoreZoom():Void;
	@:optional
	function setZoom(?zoomConfig:Dynamic):Void;
};
typedef IBarSeries = {
	>Ext.chart.series.ICartesian,
	@:optional
	var column : Bool;
	@:optional
	var groupGutter : Float;
	@:optional
	var gutter : Float;
	@:optional
	var stacked : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?index:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem():Void;
};
typedef IBarChart = {
	>Ext.chart.series.ICartesian,
	@:optional
	var column : Bool;
	@:optional
	var groupGutter : Float;
	@:optional
	var gutter : Float;
	@:optional
	var stacked : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?index:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem():Void;
};
typedef IStackedBarChart = {
	>Ext.chart.series.ICartesian,
	@:optional
	var column : Bool;
	@:optional
	var groupGutter : Float;
	@:optional
	var gutter : Float;
	@:optional
	var stacked : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?index:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem():Void;
};
typedef ICartesianSeries = {
	>Ext.chart.series.ISeries,
	@:optional
	var axis : Dynamic;
	@:optional
	var xField : String;
	@:optional
	var yField : Dynamic;
	@:optional
	function eachYValue(?record:Ext.data.IModel, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getMinMaxXValues():Array<Dynamic>;
	@:optional
	function getMinMaxYValues():Array<Dynamic>;
	@:optional
	function getYValueAccessors():Array<Dynamic>;
	@:optional
	function getYValueCount():Float;
};
typedef ICartesianChart = {
	>Ext.chart.series.ISeries,
	@:optional
	var axis : Dynamic;
	@:optional
	var xField : String;
	@:optional
	var yField : Dynamic;
	@:optional
	function eachYValue(?record:Ext.data.IModel, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getMinMaxXValues():Array<Dynamic>;
	@:optional
	function getMinMaxYValues():Array<Dynamic>;
	@:optional
	function getYValueAccessors():Array<Dynamic>;
	@:optional
	function getYValueCount():Float;
};
typedef IColumnSeries = {
	>Ext.chart.series.IBar,
	@:optional
	var axis : String;
	@:optional
	var column : Bool;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
};
typedef IColumnChart = {
	>Ext.chart.series.IBar,
	@:optional
	var axis : String;
	@:optional
	var column : Bool;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
};
typedef IStackedColumnChart = {
	>Ext.chart.series.IBar,
	@:optional
	var axis : String;
	@:optional
	var column : Bool;
	@:optional
	var type : String;
	@:optional
	var xPadding : Dynamic;
	@:optional
	var yPadding : Dynamic;
};
typedef ILineSeries = {
	>Ext.chart.series.ICartesian,
	@:optional
	var fill : Bool;
	@:optional
	var markerConfig : Dynamic;
	@:optional
	var selectionTolerance : Float;
	@:optional
	var showMarkers : Bool;
	@:optional
	var smooth : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	function drawSeries():Void;
};
typedef ILineChart = {
	>Ext.chart.series.ICartesian,
	@:optional
	var fill : Bool;
	@:optional
	var markerConfig : Dynamic;
	@:optional
	var selectionTolerance : Float;
	@:optional
	var showMarkers : Bool;
	@:optional
	var smooth : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	function drawSeries():Void;
};
typedef IPieSeries = {
	>Ext.chart.series.ISeries,
	@:optional
	var angleField : String;
	@:optional
	var colorSet : Array<Dynamic>;
	@:optional
	var donut : Dynamic;
	@:optional
	var field : String;
	@:optional
	var highlightDuration : Float;
	@:optional
	var lengthField : String;
	@:optional
	var showInLegend : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xField : String;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?item:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem(?item:Dynamic):Void;
};
typedef IPieChart = {
	>Ext.chart.series.ISeries,
	@:optional
	var angleField : String;
	@:optional
	var colorSet : Array<Dynamic>;
	@:optional
	var donut : Dynamic;
	@:optional
	var field : String;
	@:optional
	var highlightDuration : Float;
	@:optional
	var lengthField : String;
	@:optional
	var showInLegend : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xField : String;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?item:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightItem(?item:Dynamic):Void;
};
typedef IShape = {
	>Ext.IBase,
};
extern class Shape {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef ITip = {
	>Ext.IBase,
};
typedef ITipSurface = {
	>Ext.draw.IComponent,
};
