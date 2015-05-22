typedef TypeBindingInterface<TServiceType> = {
	var runtimeIdentifier : String;
	var implementationType : { function new():TServiceType; };
	var cache : TServiceType;
	var scope : Float;
};
typedef KernelInterface = {
	function bind(typeBinding:TypeBindingInterface<Dynamic>):Void;
	function unbind(runtimeIdentifier:String):Void;
	function unbindAll():Void;
	function resolve<TImplementationType>(runtimeIdentifier:String):TImplementationType;
};
@:enum abstract TypeBindingScopeEnum(Int) {
	var Transient = 0;
	var Singleton = 1;
}
extern class TypeBinding<TServiceType> {
	var runtimeIdentifier : String;
	var implementationType : { function new():TServiceType; };
	var cache : TServiceType;
	var scope : TypeBindingScopeEnum;
	function new(runtimeIdentifier:String, implementationType:{ function new(args:haxe.extern.Rest<Dynamic>):TServiceType; }, ?scopeType:TypeBindingScopeEnum):Void;
}
extern class Kernel {
	var _bindings : Dynamic;
	function bind(typeBinding:TypeBindingInterface<Dynamic>):Void;
	function unbind(runtimeIdentifier:String):Void;
	function unbindAll():Void;
	function resolve<TImplementationType>(runtimeIdentifier:String):TImplementationType;
	function _validateBinding(typeBinding:Dynamic):Dynamic;
	function _getConstructorArguments(func:Dynamic):Dynamic;
	function _injectDependencies<TImplementationType>(func:Dynamic):Dynamic;
	function _construct<TImplementationType>(constr:Dynamic, args:Dynamic):Dynamic;
	function new():Void;
}
