typedef IAnalytics = {
	>Ext.IBase,
	>Ext.ux.device.analytics.IAbstract,
};
extern class Analytics {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getAccountID():Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function registerAccount(?accountID:String):Void;
	static function setAccountID(?accountID:Dynamic):Void;
	static function statics():Ext.IClass;
	static function trackEvent(?config:Dynamic):Void;
	static function trackPageview(?config:String):Void;
}
typedef ITwitter = {
	>Ext.IBase,
	>Ext.ux.device.twitter.IAbstract,
};
extern class Twitter {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function compose(?config:Dynamic):Void;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function getMentions(?config:Dynamic):Void;
	static function getPublicTimeline(?config:Dynamic):Void;
	static function getTwitterRequest(?config:Dynamic):Void;
	static function getTwitterUsername(?config:Dynamic):Void;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
