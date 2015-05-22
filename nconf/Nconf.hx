typedef IFormat = {
	var stringify : Dynamic -> Dynamic -> ?Dynamic -> String;
	var parse : String -> Dynamic;
};
typedef IOptions = {
	@:optional
	var type : String;
};
typedef IFileOptions = {
	>IOptions,
	@:optional
	var file : String;
	@:optional
	var dir : String;
	@:optional
	var search : Bool;
	@:optional
	var format : IFormat;
	@:optional
	var json_spacing : Float;
};
typedef ICallbackFunction = { };
extern class Provider {
	function new(options:IOptions):Void;
	var stores : Dynamic;
	var sources : Array<Dynamic>;
	function clear(key:String, ?callback:ICallbackFunction):Dynamic;
	function get(key:String, ?callback:ICallbackFunction):Dynamic;
	function merge(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	function set(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	function reset(?callback:ICallbackFunction):Dynamic;
	function load(?callback:ICallbackFunction):Dynamic;
	function mergeSources(data:Dynamic):Void;
	function loadSources():Dynamic;
	function save(value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	function add(name:String, ?options:IOptions):Provider;
	function argv(?options:IOptions):Provider;
	function env(?options:IOptions):Provider;
	@:overload(function(options:IFileOptions):Provider { })
	function file(name:String, ?options:IFileOptions):Provider;
	function use(name:String, ?options:IOptions):Provider;
	function defaults(?options:IOptions):Provider;
	function init(?options:IOptions):Void;
	function overrides(?options:IOptions):Provider;
	function remove(name:String):Void;
	function create(name:String, options:IOptions):IStore;
}
typedef IStore = {
	var type : String;
	function get(key:String):Dynamic;
	function set(key:String, value:Dynamic):Bool;
	function clear(key:String):Bool;
	function merge(key:String, value:Dynamic):Bool;
	function reset(?callback:ICallbackFunction):Bool;
};
extern class NconfTopLevel {
	static var version : Float;
	static var stores : Dynamic;
	static var sources : Array<Dynamic>;
	static function clear(key:String, ?callback:ICallbackFunction):Dynamic;
	static function get(key:String, ?callback:ICallbackFunction):Dynamic;
	static function merge(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function set(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function reset(?callback:ICallbackFunction):Dynamic;
	static function load(?callback:ICallbackFunction):Dynamic;
	static function mergeSources(data:Dynamic):Void;
	static function loadSources():Dynamic;
	static function save(value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function add(name:String, ?options:IOptions):Provider;
	static function argv(?options:IOptions):Provider;
	static function env(?options:IOptions):Provider;
	static function file(name:String, ?options:IFileOptions):Provider;
	static function file(options:IFileOptions):Provider;
	static function use(name:String, ?options:IOptions):Provider;
	static function defaults(?options:IOptions):Provider;
	static function init(?options:IOptions):Void;
	static function overrides(?options:IOptions):Provider;
	static function remove(name:String):Void;
	static function create(name:String, options:IOptions):IStore;
	static function key(values:haxe.extern.Rest<Dynamic>):String;
	static function path(key:Dynamic):Array<Dynamic>;
	static function loadFiles(files:Dynamic, ?callback:ICallbackFunction):Void;
	static function loadFilesSync(files:Dynamic, ?callback:ICallbackFunction):Void;
	static var formats : { var json : IFormat; var ini : IFormat; };
}
extern class NconfTopLevel {
	static var version : Float;
	static var stores : Dynamic;
	static var sources : Array<Dynamic>;
	static function clear(key:String, ?callback:ICallbackFunction):Dynamic;
	static function get(key:String, ?callback:ICallbackFunction):Dynamic;
	static function merge(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function set(key:String, value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function reset(?callback:ICallbackFunction):Dynamic;
	static function load(?callback:ICallbackFunction):Dynamic;
	static function mergeSources(data:Dynamic):Void;
	static function loadSources():Dynamic;
	static function save(value:Dynamic, ?callback:ICallbackFunction):Dynamic;
	static function add(name:String, ?options:IOptions):Provider;
	static function argv(?options:IOptions):Provider;
	static function env(?options:IOptions):Provider;
	static function file(name:String, ?options:IFileOptions):Provider;
	static function file(options:IFileOptions):Provider;
	static function use(name:String, ?options:IOptions):Provider;
	static function defaults(?options:IOptions):Provider;
	static function init(?options:IOptions):Void;
	static function overrides(?options:IOptions):Provider;
	static function remove(name:String):Void;
	static function create(name:String, options:IOptions):IStore;
	static function key(values:haxe.extern.Rest<Dynamic>):String;
	static function path(key:Dynamic):Array<Dynamic>;
	static function loadFiles(files:Dynamic, ?callback:ICallbackFunction):Void;
	static function loadFilesSync(files:Dynamic, ?callback:ICallbackFunction):Void;
	static var formats : { var json : IFormat; var ini : IFormat; };
}
