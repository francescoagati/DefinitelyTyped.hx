typedef IContext = {
	function new():IContext;
	var bindings : Array<IBinding>;
	function has(binding:IBinding):Bool;
	function push(binding:IBinding):Void;
	function pop():IBinding;
	function toString(indent:Float):String;
};
typedef IType = {
	function new(args:haxe.extern.Rest<Dynamic>):Dynamic;
};
typedef IBindingArguments = { };
typedef IBinding = {
	var forge : Forge;
	var name : String;
	var to : IBinding;
	var as : IBinding;
	var isResolving : Bool;
	var resolver : IResolver;
	var lifecycle : ILifecycle;
	var predicate : IPredicate;
	var arguments : IBindingArguments;
	function matches(hint:String):Bool;
	function type<T:(IType)>(target:T):IBinding;
	function function<T:({ })>(target:T):IBinding;
	function instance<T:(Dynamic)>(target:T):IBinding;
	function singleton():IBinding;
	function transient():IBinding;
	@:overload(function(hint:String):IBinding { })
	function when(predicate:IPredicate):IBinding;
	function with(args:IBindingArguments):IBinding;
	function toString():String;
};
typedef IBindingMap = { };
typedef IPredicate = { };
typedef IResolver = {
	function resolve<T>():T;
};
typedef ILifecycle = {
	function getInstance<T>(resolver:IResolver):T;
};
