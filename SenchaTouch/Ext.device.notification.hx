typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function show(?config:Dynamic):Void;
	@:optional
	function vibrate():Void;
};
typedef ICordova = {
	>Ext.device.notification.IAbstract,
	@:optional
	function show(?config:Dynamic):Void;
	@:optional
	function vibrate(?time:Dynamic):Void;
};
typedef IPhoneGap = {
	>Ext.device.notification.IAbstract,
	@:optional
	function show(?config:Dynamic):Void;
	@:optional
	function vibrate(?time:Dynamic):Void;
};
typedef ISencha = {
	>Ext.device.notification.IAbstract,
	@:optional
	function show():Void;
	@:optional
	function vibrate():Void;
};
typedef ISimulator = {
	>Ext.device.notification.IAbstract,
	@:optional
	function show():Void;
	@:optional
	function vibrate():Void;
};
