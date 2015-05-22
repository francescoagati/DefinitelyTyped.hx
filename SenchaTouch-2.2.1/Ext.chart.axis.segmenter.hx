typedef INames = {
	>Ext.chart.axis.segmenter.ISegmenter,
	@:optional
	function add(?value:Dynamic, ?step:Dynamic, ?unit:Dynamic):Void;
	@:optional
	function align(?value:Dynamic, ?step:Dynamic, ?unit:Dynamic):Dynamic;
	@:optional
	function diff(?min:Dynamic, ?max:Dynamic, ?unit:Dynamic):Float;
	@:optional
	function preferredStep(?min:Dynamic, ?estStepSize:Dynamic, ?minIdx:Dynamic, ?data:Dynamic):Dynamic;
	@:optional
	function renderer(?value:Dynamic, ?context:Dynamic):String;
};
typedef INumeric = {
	>Ext.chart.axis.segmenter.ISegmenter,
	@:optional
	function add(?value:Dynamic, ?step:Dynamic, ?unit:Dynamic):Void;
	@:optional
	function align(?value:Dynamic, ?step:Dynamic, ?unit:Dynamic):Dynamic;
	@:optional
	function diff(?min:Dynamic, ?max:Dynamic, ?unit:Dynamic):Float;
	@:optional
	function preferredStep(?min:Dynamic, ?estStepSize:Dynamic):Dynamic;
	@:optional
	function renderer(?value:Dynamic, ?context:Dynamic):String;
};
typedef ISegmenter = {
	>Ext.IBase,
	@:optional
	var axis : Ext.chart.axis.IAxis;
	@:optional
	function add(?value:Dynamic, ?step:Float, ?unit:Dynamic):Void;
	@:optional
	function align(?value:Dynamic, ?step:Float, ?unit:Dynamic):Dynamic;
	@:optional
	function diff(?min:Dynamic, ?max:Dynamic, ?unit:Dynamic):Float;
	@:optional
	function from(?value:Dynamic):Dynamic;
	@:optional
	function getAxis():Ext.chart.axis.IAxis;
	@:optional
	function preferredStep(?start:Dynamic, ?estStepSize:Dynamic):Dynamic;
	@:optional
	function renderer(?value:Dynamic, ?context:Dynamic):String;
	@:optional
	function setAxis(?axis:Ext.chart.axis.IAxis):Void;
};
typedef ITime = {
	>Ext.chart.axis.segmenter.ISegmenter,
	@:optional
	var step : Dynamic;
	@:optional
	function add(?value:Dynamic, ?step:Dynamic, ?unit:Dynamic):Void;
	@:optional
	function align(?date:Dynamic, ?step:Dynamic, ?unit:Dynamic):Dynamic;
	@:optional
	function diff(?min:Dynamic, ?max:Dynamic, ?unit:Dynamic):Float;
	@:optional
	function from(?value:Dynamic):Dynamic;
	@:optional
	function getStep():Dynamic;
	@:optional
	function preferredStep(?min:Dynamic, ?estStepSize:Dynamic):Dynamic;
	@:optional
	function renderer(?value:Dynamic, ?context:Dynamic):String;
	@:optional
	function setStep(?step:Dynamic):Void;
};
