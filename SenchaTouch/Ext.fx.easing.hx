typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function getStartTime():Float;
	@:optional
	function getStartValue():Float;
	@:optional
	function setStartTime(?startTime:Float):Void;
	@:optional
	function setStartValue(?startValue:Float):Void;
};
typedef IBounce = {
	>Ext.fx.easing.IAbstract,
	@:optional
	function getAcceleration():Float;
	@:optional
	function getSpringTension():Float;
	@:optional
	function getStartVelocity():Float;
	@:optional
	function setAcceleration(?acceleration:Float):Void;
	@:optional
	function setSpringTension(?springTension:Float):Void;
	@:optional
	function setStartVelocity(?startVelocity:Float):Void;
};
typedef IBoundMomentum = {
	>Ext.fx.easing.IAbstract,
	@:optional
	var bounce : Dynamic;
	@:optional
	var minVelocity : Float;
	@:optional
	var momentum : Dynamic;
	@:optional
	var startVelocity : Float;
	@:optional
	function getBounce():Dynamic;
	@:optional
	function getMaxMomentumValue():Float;
	@:optional
	function getMinMomentumValue():Float;
	@:optional
	function getMinVelocity():Float;
	@:optional
	function getMomentum():Dynamic;
	@:optional
	function getStartVelocity():Float;
	@:optional
	function setBounce(?bounce:Dynamic):Void;
	@:optional
	function setMaxMomentumValue(?maxMomentumValue:Float):Void;
	@:optional
	function setMinMomentumValue(?minMomentumValue:Float):Void;
	@:optional
	function setMinVelocity(?minVelocity:Float):Void;
	@:optional
	function setMomentum(?momentum:Dynamic):Void;
	@:optional
	function setStartVelocity(?startVelocity:Float):Void;
};
typedef IEaseIn = {
	>Ext.fx.easing.ILinear,
	@:optional
	function getDuration():Float;
	@:optional
	function getExponent():Float;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setExponent(?exponent:Float):Void;
};
typedef IEaseOut = {
	>Ext.fx.easing.ILinear,
	@:optional
	function getDuration():Float;
	@:optional
	function getExponent():Float;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setExponent(?exponent:Float):Void;
};
typedef ILinear = {
	>Ext.fx.easing.IAbstract,
	@:optional
	function getDuration():Float;
	@:optional
	function getEndValue():Float;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setEndValue(?endValue:Float):Void;
};
typedef IMomentum = {
	>Ext.fx.easing.IAbstract,
	@:optional
	function getAcceleration():Float;
	@:optional
	function getFriction():Float;
	@:optional
	function getStartVelocity():Float;
	@:optional
	function setAcceleration(?acceleration:Float):Void;
	@:optional
	function setFriction(?friction:Float):Void;
	@:optional
	function setStartVelocity(?startVelocity:Float):Void;
};
