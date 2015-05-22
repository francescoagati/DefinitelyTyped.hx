typedef IAbstract = {
	>Ext.IBase,
	@:optional
	var allowHighAccuracy : Bool;
	@:optional
	var frequency : Float;
	@:optional
	var maximumAge : Float;
	@:optional
	var timeout : Float;
	@:optional
	function clearWatch():Void;
	@:optional
	function getAllowHighAccuracy():Bool;
	@:optional
	function getCurrentPosition(?config:Dynamic):Void;
	@:optional
	function getFrequency():Float;
	@:optional
	function getMaximumAge():Float;
	@:optional
	function getTimeout():Float;
	@:optional
	function setAllowHighAccuracy(?allowHighAccuracy:Bool):Void;
	@:optional
	function setFrequency(?frequency:Float):Void;
	@:optional
	function setMaximumAge(?maximumAge:Float):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function watchPosition(?config:Dynamic):Void;
};
typedef ISencha = {
	>Ext.device.geolocation.IAbstract,
	@:optional
	function clearWatch():Void;
	@:optional
	function getCurrentPosition(?config:Dynamic):Void;
	@:optional
	function watchPosition(?config:Dynamic):Void;
};
typedef ISimulator = {
	>Ext.device.geolocation.IAbstract,
	@:optional
	function clearWatch():Void;
	@:optional
	function getCurrentPosition(?config:Dynamic):Void;
	@:optional
	function watchPosition(?config:Dynamic):Void;
};
