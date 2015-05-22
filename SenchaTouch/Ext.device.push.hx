typedef IAbstract = {
	>Ext.IBase,
	@:optional
	var ALERT : Float;
	@:optional
	var BADGE : Float;
	@:optional
	var SOUND : Float;
	@:optional
	function register(?config:Dynamic):Void;
};
typedef ICordova = {
	>Ext.device.push.IAbstract,
	@:optional
	function register():Void;
};
typedef ISencha = {
	>Ext.device.push.IAbstract,
	@:optional
	function register():Void;
};
