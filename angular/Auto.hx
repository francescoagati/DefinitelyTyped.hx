typedef IInjectorService = {
	@:overload(function(inlineAnnotatedFunction:Array<Dynamic>):Array<String> { })
	function annotate(fn:haxe.Constraints.Function):Array<String>;
	function get(name:String):Dynamic;
	function has(name:String):Bool;
	function instantiate(typeConstructor:haxe.Constraints.Function, ?locals:Dynamic):Dynamic;
	@:overload(function(func:haxe.Constraints.Function, ?context:Dynamic, ?locals:Dynamic):Dynamic { })
	function invoke(inlineAnnotatedFunction:Array<Dynamic>):Dynamic;
};
typedef IProvideService = {
	function constant(name:String, value:Dynamic):Void;
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):Void { })
	function decorator(name:String, decorator:haxe.Constraints.Function):Void;
	@:overload(function(name:String, inlineAnnotatedFunction:Array<Dynamic>):IServiceProvider { })
	function factory(name:String, serviceFactoryFunction:haxe.Constraints.Function):IServiceProvider;
	@:overload(function(name:String, serviceProviderConstructor:haxe.Constraints.Function):IServiceProvider { })
	function provider(name:String, provider:IServiceProvider):IServiceProvider;
	function service(name:String, constructor:haxe.Constraints.Function):IServiceProvider;
	function value(name:String, value:Dynamic):IServiceProvider;
};
