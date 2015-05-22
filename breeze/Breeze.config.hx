extern class Breeze.configTopLevel {
	static var ajax : String;
	static var dataService : String;
	static var functionRegistry : Dynamic;
	static function getAdapter(interfaceName:String, ?adapterName:String):haxe.Constraints.Function;
	static function getAdapterInstance(interfaceName:String, ?adapterName:String):Dynamic;
	static function initializeAdapterInstance(interfaceName:String, adapterName:String, ?isDefault:Bool):Void;
	static function initializeAdapterInstances(config:Dynamic):Array<Dynamic>;
	static var interfaceInitialized : Event;
	static var interfaceRegistry : Dynamic;
	static var objectRegistry : Dynamic;
	static function registerAdapter(interfaceName:String, adapterCtor:haxe.Constraints.Function):Void;
	static function registerFunction(fn:haxe.Constraints.Function, fnName:String):Void;
	static function registerType(ctor:haxe.Constraints.Function, typeName:String):Void;
	static function setQ(q:breeze.promises.IPromiseService):Void;
	static var stringifyPad : String;
	static var typeRegistry : Dynamic;
}
