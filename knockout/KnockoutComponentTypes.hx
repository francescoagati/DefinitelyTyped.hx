typedef Config = {
	@:optional
	var viewModel : haxe.extern.EitherType<ViewModelFunction, haxe.extern.EitherType<ViewModelSharedInstance, haxe.extern.EitherType<ViewModelFactoryFunction, AMDModule>>>;
	var template : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<Node>, haxe.extern.EitherType<DocumentFragment, haxe.extern.EitherType<TemplateElement, AMDModule>>>>;
	@:optional
	var synchronous : Bool;
};
typedef ComponentConfig = {
	var template : Dynamic;
	@:optional
	var createViewModel : Dynamic;
};
typedef EmptyConfig = { };
typedef AMDModule = {
	var require : String;
};
typedef ViewModelFunction = { };
typedef ViewModelSharedInstance = {
	var instance : Dynamic;
};
typedef ViewModelFactoryFunction = {
	var createViewModel : ?Dynamic -> ?ComponentInfo -> Dynamic;
};
typedef ComponentInfo = {
	var element : Node;
	var templateNodes : Array<Node>;
};
typedef TemplateElement = {
	var element : haxe.extern.EitherType<String, Node>;
};
typedef Loader = {
	@:optional
	function getConfig(componentName:String, callback:ComponentConfig -> Void):Void;
	@:optional
	function loadComponent(componentName:String, config:ComponentConfig, callback:Definition -> Void):Void;
	@:optional
	function loadTemplate(componentName:String, templateConfig:Dynamic, callback:Array<Node> -> Void):Void;
	@:optional
	function loadViewModel(componentName:String, viewModelConfig:Dynamic, callback:Dynamic -> Void):Void;
	@:optional
	var suppressLoaderExceptions : Bool;
};
typedef Definition = {
	var template : Array<Node>;
	@:optional
	function createViewModel(params:Dynamic, options:{ var element : Node; }):Dynamic;
};
typedef KnockoutComponents = {
	function register(componentName:String, config:haxe.extern.EitherType<KnockoutComponentTypes.Config, KnockoutComponentTypes.EmptyConfig>):Void;
	function isRegistered(componentName:String):Bool;
	function unregister(componentName:String):Void;
	function get(componentName:String, callback:KnockoutComponentTypes.Definition -> Void):Void;
	function clearCachedDefinition(componentName:String):Void;
	var defaultLoader : KnockoutComponentTypes.Loader;
	var loaders : Array<KnockoutComponentTypes.Loader>;
	function getComponentNameForNode(node:Node):String;
};
