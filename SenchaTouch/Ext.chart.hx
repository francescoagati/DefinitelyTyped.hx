typedef IAbstractChart = {
	>Ext.draw.IComponent,
	@:optional
	var animate : Dynamic;
	@:optional
	var axes : Dynamic;
	@:optional
	var background : Dynamic;
	@:optional
	var colors : Dynamic;
	@:optional
	var highlightItem : Dynamic;
	@:optional
	var innerPadding : Dynamic;
	@:optional
	var insetPadding : Dynamic;
	@:optional
	var interactions : Array<Dynamic>;
	@:optional
	var legend : Dynamic;
	@:optional
	var series : Dynamic;
	@:optional
	var shadow : Dynamic;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var version : String;
	@:optional
	function bindStore(?store:Ext.data.IStore):Void;
	@:optional
	function cancelLayout():Void;
	@:optional
	function flatten(?surfaces:Array<Dynamic>, ?format:String):Dynamic;
	@:optional
	function getAxes():Dynamic;
	@:optional
	function getBackground():Dynamic;
	@:optional
	function getColors():Dynamic;
	@:optional
	function getHighlightItem():Dynamic;
	@:optional
	function getInnerPadding():Dynamic;
	@:optional
	function getInsetPadding():Dynamic;
	@:optional
	function getInteractions():Array<Dynamic>;
	@:optional
	function getItemForPoint(?x:Float, ?y:Float):Dynamic;
	@:optional
	function getItemsForPoint(?x:Float, ?y:Float):Array<Dynamic>;
	@:optional
	function getLegend():Dynamic;
	@:optional
	function getLegendStore():Ext.data.IStore;
	@:optional
	function getSeries():Dynamic;
	@:optional
	function getShadow():Dynamic;
	@:optional
	function getStore():Ext.data.IStore;
	@:optional
	function getSurface(?name:Dynamic, ?type:Dynamic):Ext.draw.ISurface;
	@:optional
	function initialize():Void;
	@:optional
	function redraw():Void;
	@:optional
	function resumeThicknessChanged():Void;
	@:optional
	function scheduleLayout():Void;
	@:optional
	function setAnimate(?animate:Dynamic):Void;
	@:optional
	function setAxes(?axes:Dynamic):Void;
	@:optional
	function setBackground(?background:Dynamic):Void;
	@:optional
	function setColors(?colors:Dynamic):Void;
	@:optional
	function setHighlightItem(?highlightItem:Dynamic):Void;
	@:optional
	function setInnerPadding(?innerPadding:Dynamic):Void;
	@:optional
	function setInsetPadding(?insetPadding:Dynamic):Void;
	@:optional
	function setInteractions(?interactions:Array<Dynamic>):Void;
	@:optional
	function setLegend(?legend:Dynamic):Void;
	@:optional
	function setSeries(?series:Dynamic):Void;
	@:optional
	function setShadow(?shadow:Dynamic):Void;
	@:optional
	function setStore(?store:Ext.data.IStore):Void;
	@:optional
	function suspendThicknessChanged():Void;
};
typedef ICartesianChart = {
	>Ext.chart.IAbstractChart,
	@:optional
	var flipXY : Bool;
	@:optional
	function getFlipXY():Bool;
	@:optional
	function getInnerRegion():Array<Dynamic>;
	@:optional
	function onPlaceWatermark():Void;
	@:optional
	function performLayout():Void;
	@:optional
	function redraw():Void;
	@:optional
	function setFlipXY(?flipXY:Bool):Void;
	@:optional
	function setInnerRegion(?innerRegion:Array<Dynamic>):Void;
};
typedef IChart = {
	>Ext.chart.IAbstractChart,
	@:optional
	var flipXY : Bool;
	@:optional
	function getFlipXY():Bool;
	@:optional
	function getInnerRegion():Array<Dynamic>;
	@:optional
	function onPlaceWatermark():Void;
	@:optional
	function performLayout():Void;
	@:optional
	function redraw():Void;
	@:optional
	function setFlipXY(?flipXY:Bool):Void;
	@:optional
	function setInnerRegion(?innerRegion:Array<Dynamic>):Void;
};
typedef ILegend = {
	>Ext.dataview.IDataView,
	@:optional
	var baseCls : String;
	@:optional
	var disableSelection : Bool;
	@:optional
	var docked : String;
	@:optional
	var inline : Dynamic;
	@:optional
	var itemTpl : Dynamic;
	@:optional
	var padding : Dynamic;
	@:optional
	var position : String;
	@:optional
	var toggleable : Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDisableSelection():Bool;
	@:optional
	function getDocked():String;
	@:optional
	function getHorizontalHeight():Float;
	@:optional
	function getInline():Bool;
	@:optional
	function getItemTpl():Array<Dynamic>;
	@:optional
	function getPadding():Float;
	@:optional
	function getToggleable():Bool;
	@:optional
	function getVerticalWidth():Float;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDisableSelection(?disableSelection:Bool):Void;
	@:optional
	function setDocked(?docked:String):Void;
	@:optional
	function setHorizontalHeight(?horizontalHeight:Float):Void;
	@:optional
	function setInline(?inline:Bool):Void;
	@:optional
	function setItemTpl(?itemTpl:Array<Dynamic>):Void;
	@:optional
	function setPadding(?padding:Float):Void;
	@:optional
	function setToggleable(?toggleable:Bool):Void;
	@:optional
	function setVerticalWidth(?verticalWidth:Float):Void;
};
typedef IMarkerHolder = {
	>Ext.mixin.IMixin,
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
};
typedef IMarkers = {
	>Ext.draw.sprite.IInstancing,
	@:optional
	function clear(?category:String):Void;
	@:optional
	function getBBox():Dynamic;
	@:optional
	function getMarkerBBoxFor(?category:String, ?index:Dynamic, ?isWithoutTransform:Bool):Void;
	@:optional
	function putMarkerFor(?category:String, ?markerAttr:Dynamic, ?index:Dynamic, ?canonical:Bool, ?keepRevision:Bool):Void;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic):Dynamic;
};
typedef IPolarChart = {
	>Ext.chart.IAbstractChart,
	@:optional
	var center : Array<Dynamic>;
	@:optional
	var radius : Float;
	@:optional
	function getCenter():Array<Dynamic>;
	@:optional
	function getRadius():Float;
	@:optional
	function redraw():Void;
	@:optional
	function setCenter(?center:Array<Dynamic>):Void;
	@:optional
	function setRadius(?radius:Float):Void;
};
typedef ISpaceFillingChart = {
	>Ext.chart.IAbstractChart,
	@:optional
	function redraw():Void;
};
