typedef ILazyLoadConfig = {
	var asyncLoader : Dynamic;
	@:optional
	var loadedModules : Array<String>;
	@:optional
	var modules : Array<ILazyLoadModuleConfig>;
};
typedef ILazyLoadModuleConfig = {
	var name : String;
	var files : Array<String>;
};
typedef ILazyLoad = {
	function load(module:Dynamic):ng.IPromise<Dynamic>;
	@:overload(function(urls:Array<String>, config:ILazyLoadModuleConfig):ng.IPromise<Dynamic> { })
	function loadTemplateFile(url:String, config:ILazyLoadModuleConfig):ng.IPromise<Dynamic>;
	function getModuleName(moduleName:String):String;
	function getModules():Array<String>;
	function getModuleConfig(name:String):ILazyLoadModuleConfig;
	function setModuleConfig(config:ILazyLoadModuleConfig):Void;
};
typedef ILazyLoadProvider = {
	function config(config:ILazyLoadConfig):Void;
};
