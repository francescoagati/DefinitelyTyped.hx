typedef IGradient = {
	>Ext.IBase,
	>Ext.mixin.IIdentifiable,
	@:optional
	var Defines : Dynamic;
	@:optional
	function generateGradient(?ctx:Ext.draw.engine.ISvgContext, ?bbox:Dynamic):Dynamic;
	@:optional
	function getId():String;
};
typedef ILinear = {
	>Ext.draw.gradient.IGradient,
	@:optional
	var The : Float;
	@:optional
	function generateGradient(?ctx:Ext.draw.engine.ISvgContext, ?bbox:Dynamic):Dynamic;
};
typedef IRadial = {
	>Ext.draw.gradient.IGradient,
	@:optional
	var end : Dynamic;
	@:optional
	var start : Dynamic;
	@:optional
	function generateGradient(?ctx:Ext.draw.engine.ISvgContext, ?bbox:Dynamic):Dynamic;
	@:optional
	function getEnd():Dynamic;
	@:optional
	function getStart():Dynamic;
	@:optional
	function setEnd(?end:Dynamic):Void;
	@:optional
	function setStart(?start:Dynamic):Void;
};
