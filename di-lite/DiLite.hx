typedef DiLiteStatic = {
	var version : String;
	function createContext():CreateContext;
	function dependencyExpression(depExp:String):String;
	function entry(name:String, ctx:CreateContext):Dynamic;
	var strategy : StrategyEnum;
	var factory : FactoryEnum;
	var utils : Utils;
};
typedef Dictionary<T> = { };
typedef CreateContext = {
	var map : Dictionary<Dynamic>;
	function entry<T>(name:String):T;
	function register<T>(name:String, service:T):Entry;
	function has(name:String):Bool;
	function get(name:String):Dynamic;
	function create<T>(name:String, args:Dynamic):T;
	function initialize():Void;
	function clear():Void;
	function inject<T>(name:String, o:T, dependencies:String):T;
	@:overload(function<T>(o:Dynamic):T { })
	function ready<T>(o:haxe.Constraints.Function):T;
};
typedef Entry = {
	function create(newArgs:Dynamic):Entry;
	@:overload(function<T>():T { })
	function object<T>(o:T):Entry;
	@:overload(function<T>():T { })
	function strategy<T>(s:haxe.Constraints.Function):Entry;
	@:overload(function<T>():T { })
	function type<T>(t:T):Entry;
	@:overload(function<T>():T { })
	function dependencies<T>(d:T):Entry;
	@:overload(function<T>():T { })
	function args<T>(a:T):Entry;
	@:overload(function<T>():T { })
	function factory(f:haxe.Constraints.Function):Entry;
};
typedef StrategyEnum = {
	function proto<TObject, TType>(name:String, object:TObject, type:TType, args:Dynamic, ctx:CreateContext, dependencies:Dynamic):TObject;
	function singleton<TObject, TType>(name:String, object:TObject, type:TType, args:Dynamic, ?ctx:CreateContext, ?dependencies:Dynamic):TObject;
};
typedef FactoryEnum = {
	function new<T>(type:T, args:Dynamic):Void;
	function func<T>(type:T, args:Dynamic):T;
};
typedef Utils = {
	function invokeStmt(args:Dynamic, op:String):String;
};
