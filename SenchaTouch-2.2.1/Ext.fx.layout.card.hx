typedef IAbstract = {
	>Ext.IEvented,
	@:optional
	function destroy():Void;
	@:optional
	function getDirection():String;
	@:optional
	function getDuration():Dynamic;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDuration(?duration:Dynamic):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef ICover = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef ICube = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef IFade = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef IFlip = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getDuration():Float;
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
};
typedef IPop = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getDuration():Float;
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
};
typedef IReveal = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
};
typedef IScroll = {
	>Ext.fx.layout.card.IAbstract,
	@:optional
	function getDuration():Float;
	@:optional
	function setDuration(?duration:Float):Void;
};
typedef IScrollCover = {
	>Ext.fx.layout.card.IScroll,
};
typedef IScrollReveal = {
	>Ext.fx.layout.card.IScroll,
};
typedef ISlide = {
	>Ext.fx.layout.card.IStyle,
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
};
typedef IStyle = {
	>Ext.fx.layout.card.IAbstract,
	@:optional
	function destroy():Void;
	@:optional
	function getInAnimation():Dynamic;
	@:optional
	function getOutAnimation():Dynamic;
	@:optional
	function setInAnimation(?inAnimation:Dynamic):Void;
	@:optional
	function setOutAnimation(?outAnimation:Dynamic):Void;
};
