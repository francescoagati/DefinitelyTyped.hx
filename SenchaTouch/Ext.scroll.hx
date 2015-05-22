typedef IIndicator = {
	>Ext.IBase,
};
typedef IScroller = {
	>Ext.IEvented,
	@:optional
	var acceleration : Float;
	@:optional
	var direction : String;
	@:optional
	var directionLock : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var friction : Float;
	@:optional
	var initialOffset : Dynamic;
	@:optional
	var momentumEasing : Dynamic;
	@:optional
	var slotSnapSize : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getDirection():String;
	@:optional
	function getDirectionLock():Bool;
	@:optional
	function getDisabled():Bool;
	@:optional
	function getInitialOffset():Dynamic;
	@:optional
	function getMomentumEasing():Dynamic;
	@:optional
	function getSlotSnapEasing():Dynamic;
	@:optional
	function getSlotSnapSize():Dynamic;
	@:optional
	function getTranslatable():Dynamic;
	@:optional
	function isAxisEnabled(?axis:String):Bool;
	@:optional
	function scrollBy(?x:Float, ?y:Float, ?animation:Dynamic):Ext.scroll.IScroller;
	@:optional
	function scrollTo(?x:Float, ?y:Float, ?animation:Dynamic):Ext.scroll.IScroller;
	@:optional
	function scrollToEnd(?animation:Dynamic):Ext.scroll.IScroller;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDirectionLock(?directionLock:Bool):Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setInitialOffset(?initialOffset:Dynamic):Void;
	@:optional
	function setMomentumEasing(?momentumEasing:Dynamic):Void;
	@:optional
	function setOffset(?offset:Dynamic):Ext.scroll.IScroller;
	@:optional
	function setSlotSnapEasing(?slotSnapEasing:Dynamic):Void;
	@:optional
	function setSlotSnapSize(?slotSnapSize:Dynamic):Void;
	@:optional
	function setTranslatable(?translatable:Dynamic):Void;
	@:optional
	function updateBoundary():Ext.scroll.IScroller;
};
typedef IView = {
	>Ext.IEvented,
	@:optional
	var indicatorsUi : String;
	@:optional
	function destroy():Void;
	@:optional
	function getCls():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getIndicators():Dynamic;
	@:optional
	function getIndicatorsHidingDelay():Float;
	@:optional
	function getIndicatorsUi():String;
	@:optional
	function getScroller():Ext.scroll.IView;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setIndicators(?indicators:Dynamic):Void;
	@:optional
	function setIndicatorsHidingDelay(?indicatorsHidingDelay:Float):Void;
	@:optional
	function setIndicatorsUi(?indicatorsUi:String):Void;
	@:optional
	function setScroller(?scroller:Dynamic):Void;
};
