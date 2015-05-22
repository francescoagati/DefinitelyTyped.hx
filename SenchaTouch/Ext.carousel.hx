typedef ICarousel = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var direction : String;
	@:optional
	var indicator : Bool;
	@:optional
	var ui : String;
	@:optional
	function destroy():Void;
	@:optional
	function getActiveIndex():Float;
	@:optional
	function getAnimation():Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBufferSize():Float;
	@:optional
	function getDirection():String;
	@:optional
	function getDirectionLock():Bool;
	@:optional
	function getIndicator():Dynamic;
	@:optional
	function getItemConfig():Dynamic;
	@:optional
	function getItemLength():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function isHorizontal():Bool;
	@:optional
	function isVertical():Bool;
	@:optional
	function next():Ext.carousel.ICarousel;
	@:optional
	function prev():Ext.carousel.ICarousel;
	@:optional
	function previous():Ext.carousel.ICarousel;
	@:optional
	function setAnimation(?animation:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBufferSize(?bufferSize:Float):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDirectionLock(?directionLock:Bool):Void;
	@:optional
	function setIndicator(?indicator:Bool):Void;
	@:optional
	function setItemConfig(?itemConfig:Dynamic):Void;
	@:optional
	function setItemLength(?itemLength:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef IIndicator = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDirection():String;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDirection(?direction:String):Void;
};
typedef IInfinite = {
	>Ext.carousel.ICarousel,
	@:optional
	var indicator : Bool;
	@:optional
	function getIndicator():Dynamic;
	@:optional
	function getInnerItemConfig():Dynamic;
	@:optional
	function getMaxItemIndex():Dynamic;
	@:optional
	function setIndicator(?indicator:Dynamic):Void;
	@:optional
	function setInnerItemConfig(?innerItemConfig:Dynamic):Void;
	@:optional
	function setMaxItemIndex(?maxItemIndex:Dynamic):Void;
};
typedef IItem = {
	>Ext.IDecorator,
	@:optional
	var baseCls : String;
	@:optional
	var component : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getTranslatable():Bool;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setTranslatable(?translatable:Bool):Void;
};
