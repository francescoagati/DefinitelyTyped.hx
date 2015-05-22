typedef IBrowser = {
	>Ext.IBase,
	@:optional
	var engineName : String;
	@:optional
	var engineVersion : Ext.IVersion;
	@:optional
	var isSecure : Bool;
	@:optional
	var isStrict : Bool;
	@:optional
	var name : String;
	@:optional
	var userAgent : String;
	@:optional
	var version : Ext.IVersion;
	@:optional
	function is(?value:String):Bool;
};
typedef IFeature = {
	>Ext.IBase,
};
typedef IOS = {
	>Ext.IBase,
	@:optional
	var name : String;
	@:optional
	var version : Ext.IVersion;
	@:optional
	function is(?value:String):Bool;
};
