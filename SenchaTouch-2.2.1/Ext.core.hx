typedef IDomQuery = {
	>Ext.dom.IQuery,
};
extern class DomQuery {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function is(?el:Dynamic, ?selector:String):Bool;
	static function select(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function selectNode(?selector:String, ?root:Dynamic):HTMLElement;
	static function statics():Ext.IClass;
}
