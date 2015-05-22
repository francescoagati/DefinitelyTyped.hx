typedef IYeomanGenerator = {
	function argument(name:String, config:IArgumentConfig):Void;
	function composeWith(namespace:String, options:Dynamic, ?settings:IComposeSetting):IYeomanGenerator;
	function defaultFor(name:String):Void;
	function destinationRoot(rootPath:String):String;
	function determineAppname():Void;
	function getCollisionFilter():Dynamic -> Void;
	function hookFor(name:String, config:IHookConfig):Void;
	function option(name:String, config:IYeomanGeneratorOption):Void;
	function rootGeneratorName():String;
	@:overload(function(args:Dynamic, ?callback:haxe.Constraints.Function):Void { })
	function run(?args:Dynamic):Void;
	function runHooks(?callback:haxe.Constraints.Function):Void;
	function sourceRoot(rootPath:String):String;
};
extern class YeomanGeneratorBase {
	function argument(name:String, config:IArgumentConfig):Void;
	function composeWith(namespace:String, options:Dynamic, ?settings:IComposeSetting):IYeomanGenerator;
	function defaultFor(name:String):Void;
	function destinationRoot(rootPath:String):String;
	function determineAppname():Void;
	function getCollisionFilter():Dynamic -> Void;
	function hookFor(name:String, config:IHookConfig):Void;
	function option(name:String, config:IYeomanGeneratorOption):Void;
	function rootGeneratorName():String;
	@:overload(function(args:Dynamic, ?callback:haxe.Constraints.Function):Void { })
	function run(?args:Dynamic):Void;
	function runHooks(?callback:haxe.Constraints.Function):Void;
	function sourceRoot(rootPath:String):String;
	function addListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeAllListeners(?event:String):NodeJS.EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
typedef IArgumentConfig = {
	var desc : String;
	var required : Bool;
	var optional : Bool;
	var type : Dynamic;
	var defaults : Dynamic;
};
typedef IComposeSetting = {
	@:optional
	var local : String;
	@:optional
	var link : String;
};
typedef IHookConfig = {
	var as : String;
	var args : Dynamic;
	var options : Dynamic;
};
typedef IYeomanGeneratorOption = {
	var alias : String;
	var defaults : Dynamic;
	var desc : String;
	var hide : Bool;
	var type : Dynamic;
};
typedef IQueueProps = {
	var initializing : Void -> Void;
	@:optional
	var prompting : Void -> Void;
	@:optional
	var configuring : Void -> Void;
	@:optional
	var default : Void -> Void;
	var writing : { };
	@:optional
	var conflicts : Void -> Void;
	@:optional
	var install : Void -> Void;
	var end : Void -> Void;
};
typedef INamedBase = {
	>IYeomanGenerator,
};
typedef IBase = {
	>INamedBase,
};
typedef IAssert = {
	@:overload(function(paths:Array<String>):Void { })
	function file(path:String):Void;
	@:overload(function(pairs:Array<Array<Dynamic>>):Void { })
	function fileContent(file:String, reg:js.RegExp):Void;
	function files(pairs:Array<Dynamic>):Void;
	function implement(subject:Dynamic, methods:Dynamic):Void;
	function noFile(file:String):Void;
	@:overload(function(pairs:Array<Array<Dynamic>>):Void { })
	function noFileContent(file:String, reg:js.RegExp):Void;
	function noImplement(subject:Dynamic, methods:Dynamic):Void;
	function textEqual(value:String, expected:String):Void;
};
typedef ITestHelper = {
	function createDummyGenerator():IYeomanGenerator;
	function createGenerator(name:String, dependencies:Array<Dynamic>, args:Dynamic, options:Dynamic):IYeomanGenerator;
	function decorate(context:Dynamic, method:String, replacement:haxe.Constraints.Function, options:Dynamic):Void;
	function gruntfile(options:Dynamic, done:haxe.Constraints.Function):Void;
	function mockPrompt(generator:IYeomanGenerator, answers:Dynamic):Void;
	function registerDependencies(dependencies:Array<String>):Void;
	function restore():Void;
	function run(generator:Dynamic):IRunContext;
};
typedef IRunContext = {
	function async():haxe.Constraints.Function;
	function inDir(dirPath:String):IRunContext;
	function withArguments(args:Dynamic):IRunContext;
	function withGenerators(dependencies:Array<String>):IRunContext;
	function withOptions(options:Dynamic):IRunContext;
	function withPrompts(answers:Dynamic):IRunContext;
};
extern class YoTopLevel {
	static var file : Dynamic;
	static var assert : IAssert;
	static var test : ITestHelper;
}
