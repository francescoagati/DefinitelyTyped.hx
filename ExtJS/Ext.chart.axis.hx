typedef IAbstract = {
	>Ext.IBase,
	@:optional
	var fields : Array<String>;
	@:optional
	var label : Ext.chart.ILabel;
};
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
typedef ICategory = {
	>Ext.chart.axis.IAxis,
	@:optional
	var calculateCategoryCount : Bool;
	@:optional
	var categoryNames : String;
};
typedef IGauge = {
	>Ext.chart.axis.IAbstract,
	@:optional
	var margin : Float;
	@:optional
	var maximum : Float;
	@:optional
	var minimum : Float;
	@:optional
	var steps : Float;
	@:optional
	var title : String;
	@:optional
	function setTitle(?title:String):Void;
};
typedef INumeric = {
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
typedef IRadial = {
	>Ext.chart.axis.INumeric,
	@:optional
	var maximum : Float;
	@:optional
	var position : String;
	@:optional
	var steps : Float;
	@:optional
	function drawLabel():Void;
};
typedef ITime = {
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
