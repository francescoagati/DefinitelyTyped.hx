typedef IArea = {
	>Ext.chart.series.ICartesian,
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?item:Dynamic):Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function highlightSeries(?item:Dynamic):Void;
	@:optional
	function unHighlightItem(?item:Dynamic):Void;
	@:optional
	function unHighlightSeries(?item:Dynamic):Void;
};
typedef IBar = {
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
typedef ICartesian = {
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
typedef IColumn = {
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
typedef IGauge = {
	>Ext.chart.series.ISeries,
	@:optional
	var angleField : String;
	@:optional
	var donut : Dynamic;
	@:optional
	var highlightDuration : Float;
	@:optional
	var needle : Bool;
	@:optional
	var showInLegend : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	function drawSeries():Void;
	@:optional
	function getLegendColor(?item:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
typedef ILine = {
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
typedef IPie = {
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
typedef IRadar = {
	>Ext.chart.series.ISeries,
	@:optional
	var markerConfig : Dynamic;
	@:optional
	var showInLegend : Bool;
	@:optional
	var showMarkers : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	var xField : String;
	@:optional
	var yField : String;
	@:optional
	function drawSeries():Void;
};
typedef IScatter = {
	>Ext.chart.series.ICartesian,
	@:optional
	var markerConfig : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var type : String;
	@:optional
	function drawSeries():Void;
};
typedef ISeries = {
	>Ext.IBase,
	>Ext.util.IObservable,
	>Ext.chart.ILabel,
	>Ext.chart.IHighlight,
	>Ext.chart.ITip,
	>Ext.chart.ICallout,
	@:optional
	var highlight : Dynamic;
	@:optional
	var listeners : Dynamic;
	@:optional
	var renderer : Dynamic;
	@:optional
	var shadowAttributes : Array<Dynamic>;
	@:optional
	var showInLegend : Bool;
	@:optional
	var tips : Dynamic;
	@:optional
	var title : String;
	@:optional
	var type : String;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function eachRecord(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getItemForPoint(?x:Float, ?y:Float):Dynamic;
	@:optional
	function getLegendColor(?index:Dynamic):Void;
	@:optional
	function getRecordCount():Void;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hideAll():Void;
	@:optional
	function highlightItem(?item:Dynamic):Void;
	@:optional
	function isExcluded(?index:Dynamic):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function onCreateLabel(?storeItem:Ext.data.IModel, ?item:Dynamic, ?i:Float, ?display:String):Ext.draw.ISprite;
	@:optional
	function onPlaceLabel(?label:Ext.draw.ISprite, ?storeItem:Ext.data.IModel, ?item:Dynamic, ?i:Float, ?display:String, ?animate:Bool, ?index:Float):Void;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function setTitle(?index:Float, ?title:String):Void;
	@:optional
	function showAll():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function unHighlightItem():Void;
};
