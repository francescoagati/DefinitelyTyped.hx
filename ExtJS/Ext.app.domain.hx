typedef IComponent = {
	>Ext.app.IEventDomain,
};
extern class Component {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function match(?target:Dynamic, ?selector:Dynamic):Bool;
	static function monitor(?observable:Ext.IClass):Void;
	static function statics():Ext.IClass;
}
typedef IController = {
	>Ext.app.IEventDomain,
};
extern class Controller {
	static var idProperty : String;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function match(?target:Dynamic, ?selector:String):Bool;
	static function monitor(?observable:Ext.IClass):Void;
	static function statics():Ext.IClass;
}
typedef IDirect = {
	>Ext.app.IEventDomain,
};
extern class Direct {
	static var idProperty : String;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function match(?target:Dynamic, ?selector:String):Bool;
	static function monitor(?observable:Ext.IClass):Void;
	static function statics():Ext.IClass;
}
typedef IGlobal = {
	>Ext.app.IEventDomain,
};
extern class Global {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function match():Bool;
	static function monitor(?observable:Ext.IClass):Void;
	static function statics():Ext.IClass;
}
typedef IStore = {
	>Ext.app.IEventDomain,
};
extern class Store {
	static var idProperty : String;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function match(?target:Dynamic, ?selector:String):Bool;
	static function monitor(?observable:Ext.IClass):Void;
	static function statics():Ext.IClass;
}
