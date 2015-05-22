typedef IAssociation = {
	>Ext.IBase,
	@:optional
	var associatedModel : String;
	@:optional
	var associatedName : String;
	@:optional
	var associationKey : String;
	@:optional
	var ownerModel : Dynamic;
	@:optional
	var primaryKey : String;
	@:optional
	var reader : Ext.data.reader.IReader;
	@:optional
	var type : String;
	@:optional
	function getAssociatedModel():String;
	@:optional
	function getAssociatedName():String;
	@:optional
	function getAssociationKey():String;
	@:optional
	function getName():Dynamic;
	@:optional
	function getOwnerModel():Dynamic;
	@:optional
	function getOwnerName():String;
	@:optional
	function getPrimaryKey():String;
	@:optional
	function getReader():Ext.data.reader.IReader;
	@:optional
	function getType():String;
	@:optional
	function setAssociatedModel(?associatedModel:String):Void;
	@:optional
	function setAssociatedName(?associatedName:String):Void;
	@:optional
	function setAssociationKey(?associationKey:String):Void;
	@:optional
	function setName(?name:Dynamic):Void;
	@:optional
	function setOwnerModel(?ownerModel:Dynamic):Void;
	@:optional
	function setOwnerName(?ownerName:String):Void;
	@:optional
	function setPrimaryKey(?primaryKey:String):Void;
	@:optional
	function setReader(?reader:Ext.data.reader.IReader):Void;
	@:optional
	function setType(?type:String):Void;
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
	function getForeignKey():String;
	@:optional
	function getGetterName():String;
	@:optional
	function getInstanceName():Dynamic;
	@:optional
	function getSetterName():String;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setGetterName(?getterName:String):Void;
	@:optional
	function setInstanceName(?instanceName:Dynamic):Void;
	@:optional
	function setSetterName(?setterName:String):Void;
};
typedef IHasMany = {
	>Ext.data.association.IAssociation,
	@:optional
	var autoLoad : Bool;
	@:optional
	var autoSync : Bool;
	@:optional
	var filterProperty : String;
	@:optional
	var foreignKey : String;
	@:optional
	var name : String;
	@:optional
	var store : Dynamic;
	@:optional
	var storeConfig : Dynamic;
	@:optional
	var storeName : String;
	@:optional
	function getAutoLoad():Bool;
	@:optional
	function getAutoSync():Bool;
	@:optional
	function getFilterProperty():String;
	@:optional
	function getForeignKey():String;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getStoreName():String;
	@:optional
	function setAutoLoad(?autoLoad:Bool):Void;
	@:optional
	function setAutoSync(?autoSync:Bool):Void;
	@:optional
	function setFilterProperty(?filterProperty:String):Void;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setStoreName(?storeName:String):Void;
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
	function getForeignKey():String;
	@:optional
	function getGetterName():String;
	@:optional
	function getInstanceName():Dynamic;
	@:optional
	function getSetterName():String;
	@:optional
	function setForeignKey(?foreignKey:String):Void;
	@:optional
	function setGetterName(?getterName:String):Void;
	@:optional
	function setInstanceName(?instanceName:Dynamic):Void;
	@:optional
	function setSetterName(?setterName:String):Void;
};
