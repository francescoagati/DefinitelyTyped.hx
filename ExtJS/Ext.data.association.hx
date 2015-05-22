typedef IAssociation = {
	>Ext.IBase,
	@:optional
	var associatedModel : String;
	@:optional
	var associationKey : String;
	@:optional
	var model : String;
	@:optional
	var ownerModel : String;
	@:optional
	var primaryKey : String;
	@:optional
	var reader : Ext.data.reader.IReader;
	@:optional
	var associatedName : String;
	@:optional
	var ownerName : String;
	@:optional
	function getReader():Ext.data.reader.IReader;
};
typedef IBelongsTo = {
	>Ext.data.association.IAssociation,
	@:optional
	var foreignKey : String;
	@:optional
	var getterName : String;
	@:optional
	var setterName : String;
	@:optional
	var type : String;
};
typedef IHasMany = {
	>Ext.data.association.IAssociation,
	@:optional
	var autoLoad : Bool;
	@:optional
	var filterProperty : String;
	@:optional
	var foreignKey : String;
	@:optional
	var name : String;
	@:optional
	var storeConfig : Dynamic;
	@:optional
	var type : String;
};
typedef IHasOne = {
	>Ext.data.association.IAssociation,
	@:optional
	var foreignKey : String;
	@:optional
	var getterName : String;
	@:optional
	var setterName : String;
	@:optional
	var type : String;
};
