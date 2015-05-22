typedef IAxis = {
	>Ext.draw.sprite.ISprite,
	>Ext.chart.IMarkerHolder,
	@:optional
	var The : Float;
	@:optional
	var axis : Ext.chart.axis.IAxis;
	@:optional
	var axisLine : Bool;
	@:optional
	var centerX : Float;
	@:optional
	var centerY : Float;
	@:optional
	var dataMax : Float;
	@:optional
	var dataMin : Float;
	@:optional
	var enlargeEstStepSizeByText : Bool;
	@:optional
	var grid : Bool;
	@:optional
	var label : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var length : Float;
	@:optional
	var majorTickSize : Float;
	@:optional
	var majorTicks : Bool;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var minStepSize : Float;
	@:optional
	var minorTickSize : Float;
	@:optional
	var minorTricks : Bool;
	@:optional
	var position : String;
	@:optional
	var renderer : Dynamic;
	@:optional
	var segmenter : Dynamic;
	@:optional
	var textPadding : Float;
	@:optional
	var visibleMax : Float;
	@:optional
	var visibleMin : Float;
	@:optional
	function bindMarker(?name:String, ?marker:Ext.chart.IMarkers):Void;
	@:optional
	function getAxis():Ext.chart.axis.IAxis;
	@:optional
	function getBBox():Void;
	@:optional
	function getLabel():Dynamic;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getRenderer():Dynamic;
	@:optional
	function getSegmenter():Dynamic;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic):Dynamic;
	@:optional
	function setAxis(?axis:Ext.chart.axis.IAxis):Void;
	@:optional
	function setLabel(?label:Dynamic):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setRenderer(?renderer:Dynamic):Void;
	@:optional
	function setSegmenter(?segmenter:Dynamic):Void;
};
