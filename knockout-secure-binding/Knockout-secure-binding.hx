typedef KnockoutSecureBindingOptions = {
	@:optional
	var attribute : String;
	@:optional
	var globals : Dynamic;
	@:optional
	var bindings : KnockoutBindingHandlers;
	@:optional
	var noVirtualElements : Bool;
};
typedef KnockoutSecureBindingProvider = {
	>KnockoutBindingProvider,
	function new(?options:KnockoutSecureBindingOptions):KnockoutBindingProvider;
};
typedef KnockoutStatic = {
	var secureBindingsProvider : { function new(?options:KnockoutSecureBindingOptions):KnockoutBindingProvider; };
};
extern class Knockout-secure-bindingTopLevel {
	static var klass : { function new(?options:KnockoutSecureBindingOptions):KnockoutBindingProvider; };
}
extern class Knockout-secure-bindingTopLevel {
	static var klass : { function new(?options:KnockoutSecureBindingOptions):KnockoutBindingProvider; };
}
