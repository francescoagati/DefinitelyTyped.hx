typedef IDatabase = {
	>Ext.IBase,
	@:optional
	function transaction(?sql:Dynamic, ?success:Dynamic, ?failure:Dynamic):Void;
};
typedef IHTML5 = {
	>Ext.device.storage.IAbstract,
};
typedef ISQLStatement = {
	>Ext.IBase,
};
