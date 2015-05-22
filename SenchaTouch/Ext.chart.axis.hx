typedef IAxis = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var background : Dynamic;
	@:optional
	var chart : Ext.chart.IAbstractChart;
	@:optional
	var fields : Array<Dynamic>;
	@:optional
	var grid : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var increment : Float;
	@:optional
	var label : Dynamic;
	@:optional
	var labelInSpan : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var majorTickSteps : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var maximum : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var minimum : Float;
	@:optional
	var minorTickSteps : Float;
	@:optional
	var needHighPrecision : Bool;
	@:optional
	var position : String;
	@:optional
	var renderer : Dynamic;
	@:optional
	var segmenter : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var title : Dynamic;
	@:optional
	var titleMargin : Float;
	@:optional
	var visibleRange : Array<Dynamic>;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBackground():Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getChart():Ext.chart.IAbstractChart;
	@:optional
	function getCoordFor(?value:Dynamic, ?field:String, ?idx:Float, ?items:Ext.util.IMixedCollection):Float;
	@:optional
	function getFields():Array<Dynamic>;
	@:optional
	function getGrid():Dynamic;
	@:optional
	function getHidden():Bool;
	@:optional
	function getIncrement():Float;
	@:optional
	function getLabel():Dynamic;
	@:optional
	function getLabelInSpan():Bool;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getMajorTickSteps():Float;
	@:optional
	function getMaxZoom():Float;
	@:optional
	function getMaximum():Float;
	@:optional
	function getMinZoom():Float;
	@:optional
	function getMinimum():Float;
	@:optional
	function getMinorTickSteps():Float;
	@:optional
	function getNeedHighPrecision():Bool;
	@:optional
	function getPosition():String;
	@:optional
	function getRange():Array<Dynamic>;
	@:optional
	function getRenderer():Dynamic;
	@:optional
	function getSegmenter():Dynamic;
	@:optional
	function getStyle():Dynamic;
	@:optional
	function getTitle():Dynamic;
	@:optional
	function getTitleMargin():Float;
	@:optional
	function getVisibleRange():Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function processData():Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function renderFrame():Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setBackground(?background:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setChart(?chart:Ext.chart.IAbstractChart):Void;
	@:optional
	function setFields(?fields:Array<Dynamic>):Void;
	@:optional
	function setGrid(?grid:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Bool):Void;
	@:optional
	function setIncrement(?increment:Float):Void;
	@:optional
	function setLabel(?label:Dynamic):Void;
	@:optional
	function setLabelInSpan(?labelInSpan:Bool):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setMajorTickSteps(?majorTickSteps:Float):Void;
	@:optional
	function setMaxZoom(?maxZoom:Float):Void;
	@:optional
	function setMaximum(?maximum:Float):Void;
	@:optional
	function setMinZoom(?minZoom:Float):Void;
	@:optional
	function setMinimum(?minimum:Float):Void;
	@:optional
	function setMinorTickSteps(?minorTickSteps:Float):Void;
	@:optional
	function setNeedHighPrecision(?needHighPrecision:Bool):Void;
	@:optional
	function setPosition(?position:String):Void;
	@:optional
	function setRenderer(?renderer:Dynamic):String;
	@:optional
	function setSegmenter(?segmenter:Dynamic):Void;
	@:optional
	function setStyle(?style:Dynamic):Void;
	@:optional
	function setTitle(?title:Dynamic):Void;
	@:optional
	function setTitleMargin(?titleMargin:Float):Void;
	@:optional
	function setVisibleRange(?visibleRange:Array<Dynamic>):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef ICategory = {
	>Ext.chart.axis.IAxis,
	@:optional
	var layout : Dynamic;
	@:optional
	var segmenter : Dynamic;
	@:optional
	function getLayout():String;
	@:optional
	function getSegmenter():String;
	@:optional
	function setLayout(?layout:String):Void;
	@:optional
	function setSegmenter(?segmenter:String):Void;
};
typedef INumeric = {
	>Ext.chart.axis.IAxis,
	@:optional
	var layout : Dynamic;
	@:optional
	var segmenter : Dynamic;
	@:optional
	function getAggregator():String;
	@:optional
	function getLayout():String;
	@:optional
	function getSegmenter():String;
	@:optional
	function setAggregator(?aggregator:String):Void;
	@:optional
	function setLayout(?layout:String):Void;
	@:optional
	function setSegmenter(?segmenter:String):Void;
};
typedef ITime = {
	>Ext.chart.axis.INumeric,
	@:optional
	var calculateByLabelSize : Bool;
	@:optional
	var dateFormat : Dynamic;
	@:optional
	var fromDate : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var segmenter : Dynamic;
	@:optional
	var step : Array<Dynamic>;
	@:optional
	var toDate : Dynamic;
	@:optional
	function getAggregator():String;
	@:optional
	function getCalculateByLabelSize():Bool;
	@:optional
	function getCoordFor(?value:Dynamic):Float;
	@:optional
	function getDateFormat():Dynamic;
	@:optional
	function getFromDate():Dynamic;
	@:optional
	function getLayout():String;
	@:optional
	function getSegmenter():String;
	@:optional
	function getStep():Array<Dynamic>;
	@:optional
	function getToDate():Dynamic;
	@:optional
	function setAggregator(?aggregator:String):Void;
	@:optional
	function setCalculateByLabelSize(?calculateByLabelSize:Bool):Void;
	@:optional
	function setDateFormat(?dateFormat:Dynamic):Void;
	@:optional
	function setFromDate(?fromDate:Dynamic):Void;
	@:optional
	function setLayout(?layout:String):Void;
	@:optional
	function setSegmenter(?segmenter:String):Void;
	@:optional
	function setStep(?step:Array<Dynamic>):Void;
	@:optional
	function setToDate(?toDate:Dynamic):Void;
};
