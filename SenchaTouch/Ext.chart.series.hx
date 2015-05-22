typedef IArea = {
	>Ext.chart.series.IStackedCartesian,
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
};
typedef IBar = {
	>Ext.chart.series.IStackedCartesian,
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getItemForPoint(?x:Dynamic, ?y:Dynamic):Dynamic;
};
typedef ICandleStick = {
	>Ext.chart.series.ICartesian,
	@:optional
	var closeField : String;
	@:optional
	var highField : String;
	@:optional
	var lowField : String;
	@:optional
	var openField : String;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getCloseField():String;
	@:optional
	function getHighField():String;
	@:optional
	function getLowField():String;
	@:optional
	function getOpenField():String;
	@:optional
	function setCloseField(?closeField:String):Void;
	@:optional
	function setHighField(?highField:String):Void;
	@:optional
	function setLowField(?lowField:String):Void;
	@:optional
	function setOpenField(?openField:String):Void;
};
typedef ICartesian = {
	>Ext.chart.series.ISeries,
	@:optional
	var xAxis : Ext.chart.axis.IAxis;
	@:optional
	var xField : String;
	@:optional
	var yAxis : Ext.chart.axis.IAxis;
	@:optional
	var yField : String;
	@:optional
	function getItemForPoint(?x:Dynamic, ?y:Dynamic):Dynamic;
	@:optional
	function getSprites():Void;
	@:optional
	function getXAxis():Ext.chart.axis.IAxis;
	@:optional
	function getXField():String;
	@:optional
	function getYAxis():Ext.chart.axis.IAxis;
	@:optional
	function getYField():String;
	@:optional
	function provideLegendInfo(?target:Dynamic):Void;
	@:optional
	function setXAxis(?xAxis:Ext.chart.axis.IAxis):Void;
	@:optional
	function setXField(?xField:String):Void;
	@:optional
	function setYAxis(?yAxis:Ext.chart.axis.IAxis):Void;
	@:optional
	function setYField(?yField:String):Void;
};
typedef IGauge = {
	>Ext.chart.series.ISeries,
	@:optional
	var angleField : String;
	@:optional
	var colors : Array<Dynamic>;
	@:optional
	var donut : Float;
	@:optional
	var field : String;
	@:optional
	var maximum : Float;
	@:optional
	var minimum : Float;
	@:optional
	var needle : Bool;
	@:optional
	var needleLength : Float;
	@:optional
	var needleLengthRatio : Float;
	@:optional
	var needleWidth : Float;
	@:optional
	var sectors : Array<Dynamic>;
	@:optional
	var showInLegend : Bool;
	@:optional
	var value : Float;
	@:optional
	var wholeDisk : Bool;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getAngleField():String;
	@:optional
	function getCenter():Array<Dynamic>;
	@:optional
	function getColors():Array<Dynamic>;
	@:optional
	function getDonut():Float;
	@:optional
	function getField():String;
	@:optional
	function getMaximum():Float;
	@:optional
	function getMinimum():Float;
	@:optional
	function getNeedle():Bool;
	@:optional
	function getNeedleLength():Float;
	@:optional
	function getNeedleLengthRatio():Float;
	@:optional
	function getNeedleWidth():Float;
	@:optional
	function getRadius():Float;
	@:optional
	function getRegion():Array<Dynamic>;
	@:optional
	function getRotation():Float;
	@:optional
	function getSectors():Array<Dynamic>;
	@:optional
	function getShowInLegend():Bool;
	@:optional
	function getSprites():Void;
	@:optional
	function getTotalAngle():Dynamic;
	@:optional
	function getValue():Float;
	@:optional
	function getWholeDisk():Bool;
	@:optional
	function setAngleField(?angleField:String):Void;
	@:optional
	function setCenter(?center:Array<Dynamic>):Void;
	@:optional
	function setColors(?colors:Array<Dynamic>):Void;
	@:optional
	function setDonut(?donut:Float):Void;
	@:optional
	function setField(?field:String):Void;
	@:optional
	function setMaximum(?maximum:Float):Void;
	@:optional
	function setMinimum(?minimum:Float):Void;
	@:optional
	function setNeedle(?needle:Bool):Void;
	@:optional
	function setNeedleLength(?needleLength:Float):Void;
	@:optional
	function setNeedleLengthRatio(?needleLengthRatio:Float):Void;
	@:optional
	function setNeedleWidth(?needleWidth:Float):Void;
	@:optional
	function setRadius(?radius:Float):Void;
	@:optional
	function setRegion(?region:Array<Dynamic>):Void;
	@:optional
	function setRotation(?rotation:Float):Void;
	@:optional
	function setSectors(?sectors:Array<Dynamic>):Void;
	@:optional
	function setShowInLegend(?showInLegend:Bool):Void;
	@:optional
	function setTotalAngle(?totalAngle:Dynamic):Void;
	@:optional
	function setValue(?value:Float):Void;
	@:optional
	function setWholeDisk(?wholeDisk:Bool):Void;
};
typedef IItemPublisher = {
	>Ext.event.publisher.IPublisher,
};
typedef ILine = {
	>Ext.chart.series.ICartesian,
	@:optional
	var fill : Bool;
	@:optional
	var selectionTolerance : Float;
	@:optional
	var smooth : Dynamic;
	@:optional
	var step : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getAggregator():Dynamic;
	@:optional
	function getFill():Bool;
	@:optional
	function getSelectionTolerance():Float;
	@:optional
	function getSmooth():Dynamic;
	@:optional
	function getStep():Bool;
	@:optional
	function setAggregator(?aggregator:Dynamic):Void;
	@:optional
	function setFill(?fill:Bool):Void;
	@:optional
	function setSelectionTolerance(?selectionTolerance:Float):Void;
	@:optional
	function setSmooth(?smooth:Dynamic):Void;
	@:optional
	function setStep(?step:Bool):Void;
};
typedef IPie = {
	>Ext.chart.series.IPolar,
	@:optional
	var Allows : Float;
	@:optional
	var donut : Dynamic;
	@:optional
	var field : String;
	@:optional
	var hidden : Array<Dynamic>;
	@:optional
	var labelField : String;
	@:optional
	var rotation : Float;
	@:optional
	var style : Dynamic;
	@:optional
	var totalAngle : Float;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getDonut():Dynamic;
	@:optional
	function getItemForAngle(?angle:Float):Dynamic;
	@:optional
	function getItemForPoint(?x:Dynamic, ?y:Dynamic):Dynamic;
	@:optional
	function getLabelField():String;
	@:optional
	function getRotation():Float;
	@:optional
	function getSprites():Void;
	@:optional
	function getStyle():Dynamic;
	@:optional
	function getTotalAngle():Float;
	@:optional
	function provideLegendInfo(?target:Dynamic):Void;
	@:optional
	function setDonut(?donut:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Array<Dynamic>):Void;
	@:optional
	function setLabelField(?labelField:String):Void;
	@:optional
	function setRotation(?rotation:Float):Void;
	@:optional
	function setStyle(?style:Dynamic):Void;
	@:optional
	function setTotalAngle(?totalAngle:Float):Void;
};
typedef IPie3D = {
	>Ext.chart.series.IPolar,
	@:optional
	var donut : Dynamic;
	@:optional
	var field : String;
	@:optional
	var rotation : Float;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getDistortion():Float;
	@:optional
	function getDonut():Dynamic;
	@:optional
	function getField():String;
	@:optional
	function getRegion():Array<Dynamic>;
	@:optional
	function getRotation():Float;
	@:optional
	function getSprites():Void;
	@:optional
	function getThickness():Float;
	@:optional
	function setDistortion(?distortion:Float):Void;
	@:optional
	function setDonut(?donut:Dynamic):Void;
	@:optional
	function setField(?field:String):Void;
	@:optional
	function setRegion(?region:Array<Dynamic>):Void;
	@:optional
	function setRotation(?rotation:Float):Void;
	@:optional
	function setThickness(?thickness:Float):Void;
};
typedef IPolar = {
	>Ext.chart.series.ISeries,
	@:optional
	var center : Array<Dynamic>;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var radius : Float;
	@:optional
	var rotation : Float;
	@:optional
	var showInLegend : Bool;
	@:optional
	var xField : String;
	@:optional
	var yField : String;
	@:optional
	function getCenter():Array<Dynamic>;
	@:optional
	function getOffsetX():Float;
	@:optional
	function getOffsetY():Float;
	@:optional
	function getRadius():Float;
	@:optional
	function getRotation():Float;
	@:optional
	function getShowInLegend():Bool;
	@:optional
	function getXAxis():Dynamic;
	@:optional
	function getXField():String;
	@:optional
	function getYAxis():Dynamic;
	@:optional
	function getYField():String;
	@:optional
	function setCenter(?center:Array<Dynamic>):Void;
	@:optional
	function setOffsetX(?offsetX:Float):Void;
	@:optional
	function setOffsetY(?offsetY:Float):Void;
	@:optional
	function setRadius(?radius:Float):Void;
	@:optional
	function setRotation(?rotation:Float):Void;
	@:optional
	function setShowInLegend(?showInLegend:Bool):Void;
	@:optional
	function setXAxis(?xAxis:Dynamic):Void;
	@:optional
	function setXField(?xField:String):Void;
	@:optional
	function setYAxis(?yAxis:Dynamic):Void;
	@:optional
	function setYField(?yField:String):Void;
};
typedef IRadar = {
	>Ext.chart.series.IPolar,
	@:optional
	var style : Dynamic;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getItemForPoint(?x:Dynamic, ?y:Dynamic):Dynamic;
};
typedef IScatter = {
	>Ext.chart.series.ICartesian,
	@:optional
	var itemInstancing : Dynamic;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
	@:optional
	function getItemInstancing():Dynamic;
	@:optional
	function provideLegendInfo(?target:Dynamic):Void;
	@:optional
	function setItemInstancing(?itemInstancing:Dynamic):Void;
};
typedef ISeries = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var animate : Dynamic;
	@:optional
	var background : Dynamic;
	@:optional
	var colors : Array<Dynamic>;
	@:optional
	var hidden : Dynamic;
	@:optional
	var highlightCfg : Dynamic;
	@:optional
	var highlightItem : Dynamic;
	@:optional
	var itemInstancing : Dynamic;
	@:optional
	var label : Dynamic;
	@:optional
	var labelField : Dynamic;
	@:optional
	var labelOverflowPadding : Float;
	@:optional
	var marker : Dynamic;
	@:optional
	var markerSubStyle : Dynamic;
	@:optional
	var overlaySurface : Dynamic;
	@:optional
	var renderer : Dynamic;
	@:optional
	var showInLegend : Bool;
	@:optional
	var store : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var subStyle : Dynamic;
	@:optional
	var surface : Dynamic;
	@:optional
	var title : String;
	@:optional
	var seriesType : String;
	@:optional
	var type : String;
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
	function getAnimate():Dynamic;
	@:optional
	function getBackground():Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getColors():Array<Dynamic>;
	@:optional
	function getHidden():Dynamic;
	@:optional
	function getHighlightCfg():Dynamic;
	@:optional
	function getHighlightItem():Dynamic;
	@:optional
	function getItemForPoint(?x:Float, ?y:Float, ?target:Dynamic):Dynamic;
	@:optional
	function getItemInstancing():Dynamic;
	@:optional
	function getLabel():Dynamic;
	@:optional
	function getLabelField():Dynamic;
	@:optional
	function getLabelOverflowPadding():Float;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getMarker():Dynamic;
	@:optional
	function getMarkerSubStyle():Dynamic;
	@:optional
	function getOverlaySurface():Dynamic;
	@:optional
	function getRenderer():Dynamic;
	@:optional
	function getShowInLegend():Bool;
	@:optional
	function getSprites():Void;
	@:optional
	function getStyle():Dynamic;
	@:optional
	function getSubStyle():Dynamic;
	@:optional
	function getSurface():Dynamic;
	@:optional
	function getTitle():String;
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
	function provideLegendInfo(?target:Array<Dynamic>):Void;
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
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setAnimate(?animate:Dynamic):Void;
	@:optional
	function setBackground(?background:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setColors(?colors:Array<Dynamic>):Void;
	@:optional
	function setHidden(?hidden:Dynamic):Void;
	@:optional
	function setHiddenByIndex(?index:Float, ?value:Bool):Void;
	@:optional
	function setHighlightCfg(?highlightCfg:Dynamic):Void;
	@:optional
	function setHighlightItem(?highlightItem:Dynamic):Void;
	@:optional
	function setItemInstancing(?itemInstancing:Dynamic):Void;
	@:optional
	function setLabel(?label:Dynamic):Dynamic;
	@:optional
	function setLabelField(?labelField:Dynamic):Void;
	@:optional
	function setLabelOverflowPadding(?labelOverflowPadding:Float):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setMarker(?marker:Dynamic):Void;
	@:optional
	function setMarkerSubStyle(?markerSubStyle:Dynamic):Void;
	@:optional
	function setOverlaySurface(?overlaySurface:Dynamic):Void;
	@:optional
	function setRenderer(?renderer:Dynamic):Dynamic;
	@:optional
	function setShowInLegend(?showInLegend:Bool):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setStyle(?style:Dynamic):Void;
	@:optional
	function setSubStyle(?subStyle:Dynamic):Void;
	@:optional
	function setSurface(?surface:Dynamic):Void;
	@:optional
	function setTitle(?title:String):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IStackedCartesian = {
	>Ext.chart.series.ICartesian,
	@:optional
	var hidden : Array<Dynamic>;
	@:optional
	var stacked : Bool;
	@:optional
	function getItemForPoint(?x:Dynamic, ?y:Dynamic):Dynamic;
	@:optional
	function getSprites():Void;
	@:optional
	function getStacked():Bool;
	@:optional
	function provideLegendInfo(?target:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Array<Dynamic>):Void;
	@:optional
	function setStacked(?stacked:Bool):Void;
};
