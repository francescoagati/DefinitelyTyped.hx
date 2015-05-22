typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function getDatabaseDisplayName():String;
	@:optional
	function getDatabaseName():String;
	@:optional
	function getDatabaseSize():Dynamic;
	@:optional
	function getDatabaseVersion():String;
	@:optional
	function setDatabaseDisplayName(?databaseDisplayName:String):Void;
	@:optional
	function setDatabaseName(?databaseName:String):Void;
	@:optional
	function setDatabaseSize(?databaseSize:Dynamic):Void;
	@:optional
	function setDatabaseVersion(?databaseVersion:String):Void;
};
typedef ICordova = {
	>Ext.device.storage.html5.IHTML5,
};
typedef IPhoneGap = {
	>Ext.device.storage.html5.IHTML5,
};
typedef ISimulator = {
	>Ext.device.storage.html5.IHTML5,
};
