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
	>Ext.device.compass.IAbstract,
};
typedef IPhoneGap = {
	>Ext.device.compass.IAbstract,
};
typedef ISimulator = {
	>Ext.device.compass.IAbstract,
};
