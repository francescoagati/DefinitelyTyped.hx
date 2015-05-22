typedef IAbstract = {
	>Ext.IBase,
	@:optional
	var frequency : Float;
	@:optional
	function getFrequency():Float;
	@:optional
	function setFrequency(?frequency:Float):Void;
};
typedef ICordova = {
	>Ext.device.accelerometer.IAbstract,
};
typedef IPhoneGap = {
	>Ext.device.accelerometer.IAbstract,
};
typedef ISimulator = {
	>Ext.device.accelerometer.IAbstract,
};
