typedef KnockoutUtils = {
	function uniqueId(prefix:String):String;
	function unwrapProperties(wrappedProperies:Dynamic):Dynamic;
};
typedef KnockoutTemplateSources = {
	var stringTemplate : { var prototype : KnockstrapStringTemplate; function new(template:String):KnockstrapStringTemplate; };
};
typedef KnockstrapStringTemplate = {
	>KnockoutTemplateSourcesDomElement,
	var templateName : String;
};
typedef KnockoutStatic = {
	var stringTemplateEngine : { var prototype : KnockstrapStringTemplateEngine; function new():KnockstrapStringTemplateEngine; var instance : KnockstrapStringTemplateEngine; };
};
typedef KnockstrapStringTemplateEngine = {
	>KnockoutNativeTemplateEngine,
	var allowTemplateRewriting : Bool;
	function makeTemplateSource(template:String):KnockstrapStringTemplate;
	function addTemplate(name:String, template:Dynamic):Void;
	function removeTemplate(name:String):Void;
	function isTemplateExist(name:String):Bool;
	function getTemplate(name:String):Dynamic;
};
typedef KnockoutBindingHandlers = {
	var alert : AlertKnockoutBindingHandler;
	var carousel : CarouselKnockoutBindingHandler;
	var checkbox : KnockoutBindingHandler;
	var modal : ModalKnockoutBindingHandler;
	var popover : PopoverKnockoutBindingHandler;
	var progress : ProgressKnockoutBindingHandler;
	var radio : KnockoutBindingHandler;
	var toggle : KnockoutBindingHandler;
	var tooltip : KnockoutBindingHandler;
};
typedef KnockoutControlsDescendantBindings = {
	var controlsDescendantBindings : Bool;
};
typedef AlertKnockoutBindingHandler = {
	>KnockoutBindingHandler,
	@:optional
	function init(element:Dynamic, valueAccessor:Void -> Dynamic, allBindingsAccessor:KnockoutAllBindingsAccessor, viewModel:Dynamic, bindingContext:KnockoutBindingContext):KnockoutControlsDescendantBindings;
};
typedef CarouselKnockoutBindingHandler = {
	>KnockoutBindingHandler,
	@:optional
	function init(element:Dynamic, valueAccessor:Void -> Dynamic, allBindingsAccessor:KnockoutAllBindingsAccessor, viewModel:Dynamic, bindingContext:KnockoutBindingContext):KnockoutControlsDescendantBindings;
	var defaults : KnockstrapCarouselDefaults;
};
typedef KnockstrapCarouselDefaults = {
	var css : String;
	var controlsTemplate : KnockstrapCarouselDefaultsControlsTemplate;
	var indicatorsTemplate : KnockstrapCarouselDefaultsIndicatorsTemplate;
	var itemTemplate : KnockstrapCarouselDefaultsItemTemplate;
};
typedef KnockstrapDefaultsTemplateBase = {
	var name : String;
	var templateEngine : KnockstrapStringTemplateEngine;
};
typedef KnockstrapCarouselDefaultsControlsTemplate = {
	>KnockstrapDefaultsTemplateBase,
	function dataConverter(value:Dynamic):KnockstrapCarouselDefaultsIdDataConverted;
};
typedef KnockstrapCarouselDefaultsIdDataConverted = {
	var id : KnockoutComputed<String>;
};
typedef KnockstrapCarouselDefaultsIndicatorsTemplate = {
	>KnockstrapDefaultsTemplateBase,
	function dataConverter(value:Dynamic):KnockstrapCarouselDefaultsIdItemsDataConverted;
};
typedef KnockstrapCarouselDefaultsIdItemsDataConverted = {
	>KnockstrapCarouselDefaultsIdDataConverted,
	var items : Dynamic;
};
typedef KnockstrapCarouselDefaultsItemTemplate = {
	>KnockstrapDefaultsTemplateBase,
	function converter(value:Dynamic):Dynamic;
};
typedef ModalKnockoutBindingHandler = {
	>KnockoutBindingHandler,
	@:optional
	function init(element:Dynamic, valueAccessor:Void -> Dynamic, allBindingsAccessor:KnockoutAllBindingsAccessor, viewModel:Dynamic, bindingContext:KnockoutBindingContext):KnockoutControlsDescendantBindings;
	var defaults : KnockstrapModalDefaults;
};
typedef KnockstrapModalDefaults = {
	var css : String;
	var attributes : KnockstrapModalDefaultsAttributes;
	var headerTemplate : KnockstrapDefaultsTemplateBase;
	var bodyTemplate : KnockstrapDefaultsTemplateBase;
	var footerTemplate : KnockstrapModalDefaultsFooterTemplate;
};
typedef KnockstrapModalDefaultsAttributes = {
	var role : String;
};
typedef KnockstrapModalDefaultsFooterTemplate = {
	>KnockstrapDefaultsTemplateBase,
	var data : KnockstrapModalDefaultsFooterData;
};
typedef KnockstrapModalDefaultsFooterData = {
	var closeLabel : String;
	var primaryLabel : String;
};
typedef PopoverKnockoutBindingHandler = {
	>KnockoutBindingHandler,
	@:optional
	function init(element:Dynamic, valueAccessor:Void -> Dynamic, allBindingsAccessor:KnockoutAllBindingsAccessor, viewModel:Dynamic, bindingContext:KnockoutBindingContext):KnockoutControlsDescendantBindings;
};
typedef ProgressKnockoutBindingHandler = {
	>KnockoutBindingHandler,
	@:optional
	function init(element:Dynamic, valueAccessor:Void -> Dynamic, allBindingsAccessor:KnockoutAllBindingsAccessor, viewModel:Dynamic, bindingContext:KnockoutBindingContext):KnockoutControlsDescendantBindings;
	var defaults : KnockstrapProgressDefaults;
};
typedef KnockstrapProgressDefaults = {
	var css : String;
	var text : String;
	var textHidden : Bool;
	var striped : Bool;
	var type : String;
	var animated : Bool;
};
