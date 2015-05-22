typedef ICombineDuplicate = {
	>Ext.chart.axis.layout.IDiscrete,
};
typedef IContinuous = {
	>Ext.chart.axis.layout.ILayout,
	@:optional
	function getAdjustMaximumByMajorUnit():Bool;
	@:optional
	function getAdjustMinimumByMajorUnit():Bool;
	@:optional
	function setAdjustMaximumByMajorUnit(?adjustMaximumByMajorUnit:Bool):Void;
	@:optional
	function setAdjustMinimumByMajorUnit(?adjustMinimumByMajorUnit:Bool):Void;
	@:optional
	function snapEnds(?context:Dynamic, ?min:Dynamic, ?max:Dynamic, ?estStepSize:Dynamic):Void;
};
typedef IDiscrete = {
	>Ext.chart.axis.layout.ILayout,
	@:optional
	function calculateLayout(?context:Dynamic):Dynamic;
	@:optional
	function calculateMajorTicks(?context:Dynamic):Void;
	@:optional
	function processData():Void;
	@:optional
	function snapEnds(?context:Dynamic, ?min:Dynamic, ?max:Dynamic, ?estStepSize:Dynamic):Void;
	@:optional
	function trimByRange(?context:Dynamic, ?out:Dynamic, ?trimMin:Dynamic, ?trimMax:Dynamic):Void;
};
typedef ILayout = {
	>Ext.IBase,
	@:optional
	var axis : Ext.chart.axis.IAxis;
	@:optional
	function calculateLayout(?context:Dynamic):Dynamic;
	@:optional
	function calculateMajorTicks(?context:Dynamic):Void;
	@:optional
	function calculateMinorTicks(?context:Dynamic):Void;
	@:optional
	function getAxis():Ext.chart.axis.IAxis;
	@:optional
	function processData(?series:Dynamic):Void;
	@:optional
	function setAxis(?axis:Ext.chart.axis.IAxis):Void;
	@:optional
	function snapEnds(?context:Dynamic, ?min:Dynamic, ?max:Dynamic, ?estStepSize:Dynamic):Void;
	@:optional
	function trimByRange(?context:Dynamic, ?out:Dynamic, ?trimMin:Dynamic, ?trimMax:Dynamic):Void;
};
