typedef ISlider = {
	>Ext.IContainer,
	@:optional
	var allowThumbsOverlapping : Bool;
	@:optional
	var animation : Dynamic;
	@:optional
	var animationDuration : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var increment : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var readOnly : Bool;
	@:optional
	var thumbConfig : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	var values : Dynamic;
	@:optional
	function applyIncrement(?increment:Float):Float;
	@:optional
	function getAllowThumbsOverlapping():Bool;
	@:optional
	function getAnimation():Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getIncrement():Float;
	@:optional
	function getMaxValue():Float;
	@:optional
	function getMinValue():Float;
	@:optional
	function getReadOnly():Bool;
	@:optional
	function getThumb(?index:Float):Ext.slider.IThumb;
	@:optional
	function getThumbConfig():Dynamic;
	@:optional
	function getThumbs():Array<Ext.slider.IThumb>;
	@:optional
	function getValue():Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function setAllowThumbsOverlapping(?allowThumbsOverlapping:Bool):Void;
	@:optional
	function setAnimation(?animation:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setIncrement(?increment:Float):Void;
	@:optional
	function setMaxValue(?maxValue:Float):Void;
	@:optional
	function setMinValue(?minValue:Float):Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setThumbConfig(?thumbConfig:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
	@:optional
	function setValues(?value:Dynamic):Void;
	@:optional
	function updateValue(?newValue:Dynamic, ?oldValue:Dynamic):Void;
};
typedef IThumb = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var draggable : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDraggable():Dynamic;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDraggable(?draggable:Dynamic):Void;
};
typedef IToggle = {
	>Ext.slider.ISlider,
	@:optional
	var baseCls : String;
	@:optional
	var maxValueCls : String;
	@:optional
	var minValueCls : String;
	@:optional
	function applyIncrement():Float;
	@:optional
	function getBaseCls():String;
	@:optional
	function getMaxValueCls():String;
	@:optional
	function getMinValueCls():String;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setMaxValueCls(?maxValueCls:String):Void;
	@:optional
	function setMinValueCls(?minValueCls:String):Void;
	@:optional
	function setValue(?newValue:Dynamic, ?oldValue:Dynamic):Void;
};
