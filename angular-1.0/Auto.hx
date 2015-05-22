typedef IInjectorService = {
	@:overload(function(inlineAnnotadedFunction:Array<Dynamic>):Array<String> { })
	function annotate(fn:haxe.Constraints.Function):Array<String>;
	function get(name:String):Dynamic;
	function instantiate(typeConstructor:haxe.Constraints.Function, ?locals:Dynamic):Dynamic;
	function invoke(func:haxe.Constraints.Function, ?context:Dynamic, ?locals:Dynamic):Dynamic;
};
typedef IProvideService = {
	function constant(name:String, value:Dynamic):Void;
	@:overload(function(name:String, decoratorInline:Array<Dynamic>):Void { })
	function decorator(name:String, decorator:haxe.Constraints.Function):Void;
	function factory(name:String, serviceFactoryFunction:haxe.Constraints.Function):ng.IServiceProvider;
	@:overload(function(name:String, serviceProviderConstructor:haxe.Constraints.Function):ng.IServiceProvider { })
	function provider(name:String, provider:ng.IServiceProvider):ng.IServiceProvider;
	function service(name:String, constructor:haxe.Constraints.Function):ng.IServiceProvider;
	function value(name:String, value:Dynamic):ng.IServiceProvider;
};
