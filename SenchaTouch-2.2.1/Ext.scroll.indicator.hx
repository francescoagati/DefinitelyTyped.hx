typedef IAbstract = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var hidden : Bool;
	@:optional
	var ui : String;
	@:optional
	function getActive():Bool;
	@:optional
	function getAxis():String;
	@:optional
	function getBarCls():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getHidden():Bool;
	@:optional
	function getLength():Dynamic;
	@:optional
	function getMinLength():Float;
	@:optional
	function getRatio():Float;
	@:optional
	function getUi():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function setActive(?active:Bool):Void;
	@:optional
	function setAxis(?axis:String):Void;
	@:optional
	function setBarCls(?barCls:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setHidden(?hidden:Bool):Void;
	@:optional
	function setLength(?length:Dynamic):Void;
	@:optional
	function setMinLength(?minLength:Float):Void;
	@:optional
	function setRatio(?ratio:Float):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
typedef ICssTransform = {
	>Ext.scroll.indicator.IAbstract,
	@:optional
	var cls : Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function setCls(?cls:String):Void;
};
typedef IRounded = {
	>Ext.scroll.indicator.IAbstract,
	@:optional
	var cls : Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function setCls(?cls:String):Void;
};
typedef IScrollPosition = {
	>Ext.scroll.indicator.IAbstract,
	@:optional
	var cls : Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function setCls(?cls:String):Void;
};
