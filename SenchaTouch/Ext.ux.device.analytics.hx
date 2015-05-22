typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function getAccountID():Dynamic;
	@:optional
	function registerAccount(?accountID:String):Void;
	@:optional
	function setAccountID(?accountID:Dynamic):Void;
	@:optional
	function trackEvent(?config:Dynamic):Void;
	@:optional
	function trackPageview(?config:String):Void;
};
typedef ICordova = {
	>Ext.ux.device.analytics.IAbstract,
	@:optional
	function trackEvent(?config:Dynamic):Void;
	@:optional
	function trackPageview(?page:Dynamic):Void;
};
