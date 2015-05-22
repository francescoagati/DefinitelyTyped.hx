typedef IMulti = {
	>Ext.form.field.IBase,
	@:optional
	var animate : Bool;
	@:optional
	var clickToChange : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var constrainThumbs : Bool;
	@:optional
	var decimalPrecision : Dynamic;
	@:optional
	var increment : Float;
	@:optional
	var keyIncrement : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var tipText : Dynamic;
	@:optional
	var useTips : Dynamic;
	@:optional
	var value : Float;
	@:optional
	var values : Array<Float>;
	@:optional
	var vertical : Bool;
	@:optional
	var zeroBasedSnapping : Bool;
	@:optional
	var dragging : Bool;
	@:optional
	var thumbs : Array<Dynamic>;
	@:optional
	function addThumb(?value:Float):Dynamic;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getValue(?index:Float):Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function initValue():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onRender():Void;
	@:optional
	function reset():Void;
	@:optional
	function setMaxValue(?val:Float):Void;
	@:optional
	function setMinValue(?val:Float):Void;
	@:optional
	function setReadOnly(?readOnly:Dynamic):Void;
	@:optional
	function syncThumbs():Void;
};
typedef IMultiSlider = {
	>Ext.form.field.IBase,
	@:optional
	var animate : Bool;
	@:optional
	var clickToChange : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var constrainThumbs : Bool;
	@:optional
	var decimalPrecision : Dynamic;
	@:optional
	var increment : Float;
	@:optional
	var keyIncrement : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var tipText : Dynamic;
	@:optional
	var useTips : Dynamic;
	@:optional
	var value : Float;
	@:optional
	var values : Array<Float>;
	@:optional
	var vertical : Bool;
	@:optional
	var zeroBasedSnapping : Bool;
	@:optional
	var dragging : Bool;
	@:optional
	var thumbs : Array<Dynamic>;
	@:optional
	function addThumb(?value:Float):Dynamic;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getValue(?index:Float):Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function initValue():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onRender():Void;
	@:optional
	function reset():Void;
	@:optional
	function setMaxValue(?val:Float):Void;
	@:optional
	function setMinValue(?val:Float):Void;
	@:optional
	function setReadOnly(?readOnly:Dynamic):Void;
	@:optional
	function syncThumbs():Void;
};
typedef ISingle = {
	>Ext.slider.IMulti,
	@:optional
	function getValue():Dynamic;
	@:optional
	function setValue(?value:Float, ?animate:Bool):Void;
};
typedef ISingleSlider = {
	>Ext.slider.IMulti,
	@:optional
	function getValue():Dynamic;
	@:optional
	function setValue(?value:Float, ?animate:Bool):Void;
};
typedef ISlider = {
	>Ext.slider.IMulti,
	@:optional
	function getValue():Dynamic;
	@:optional
	function setValue(?value:Float, ?animate:Bool):Void;
};
typedef IThumb = {
	>Ext.IBase,
	@:optional
	var constrain : Bool;
	@:optional
	var slider : Ext.slider.IMultiSlider;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function render():Void;
};
typedef ITip = {
	>Ext.tip.ITip,
	@:optional
	var align : String;
	@:optional
	var minWidth : Float;
	@:optional
	var offsets : Array<Dynamic>;
	@:optional
	var position : String;
	@:optional
	function getText(?thumb:Ext.slider.IThumb):String;
};
