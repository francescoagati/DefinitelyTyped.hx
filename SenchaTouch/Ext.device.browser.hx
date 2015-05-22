typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function close():Void;
	@:optional
	function open(?options:Dynamic):Void;
};
typedef ICordova = {
	>Ext.device.browser.IAbstract,
	@:optional
	function close():Void;
	@:optional
	function open(?config:Dynamic):Void;
};
typedef ISimulator = {
	>Ext.IBase,
};
typedef IWindow = {
	>Ext.IEvented,
};
