typedef LoggerStatic = {
	function new(?options:LoggerOptions):LoggerInstance;
};
typedef LoggerInstance = {
	>NodeJS.EventEmitter,
	function extend(target:Dynamic):LoggerInstance;
	@:overload(function(level:String, msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance { })
	function log(level:String, msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	@:overload(function(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance { })
	function debug(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	@:overload(function(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance { })
	function info(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	@:overload(function(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance { })
	function warn(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	@:overload(function(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance { })
	function error(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	@:overload(function(callback:Error -> Dynamic -> Void):Dynamic { })
	function query(options:QueryOptions, ?callback:Error -> Dynamic -> Void):Dynamic;
	function stream(?options:Dynamic):NodeJS.ReadableStream;
	function close():Void;
	function handleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	function unhandleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	function add(transport:TransportInstance, ?options:TransportOptions, ?created:Bool):LoggerInstance;
	function addRewriter(rewriter:TransportInstance):Array<TransportInstance>;
	function clear():Void;
	function remove(transport:TransportInstance):LoggerInstance;
	function startTimer():ProfileHandler;
	function profile(id:String, ?msg:String, ?meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	function setLevels(target:Dynamic):Dynamic;
	function cli():LoggerInstance;
};
typedef LoggerOptions = {
	@:optional
	var transports : Array<TransportInstance>;
	@:optional
	var rewriters : Array<TransportInstance>;
	@:optional
	var exceptionHandlers : Array<TransportInstance>;
	@:optional
	var handleExceptions : Bool;
	@:optional
	var exitOnError : Dynamic;
};
typedef TransportStatic = {
	function new(?options:TransportOptions):TransportInstance;
};
typedef TransportInstance = {
	>TransportStatic,
	>NodeJS.EventEmitter,
	function formatQuery(query:Dynamic):Dynamic;
	function normalizeQuery(options:QueryOptions):QueryOptions;
	function formatResults(results:Dynamic, options:Dynamic):Dynamic;
	function logException(msg:String, meta:Dynamic, callback:Void -> Void):Void;
};
typedef ContainerStatic = {
	function new(options:LoggerOptions):ContainerInstance;
};
typedef ContainerInstance = {
	>ContainerStatic,
	function get(id:String, ?options:LoggerOptions):LoggerInstance;
	function add(id:String, options:LoggerOptions):LoggerInstance;
	function has(id:String):Bool;
	function close(id:String):Void;
	var options : LoggerOptions;
	var loggers : Dynamic;
	var default : LoggerOptions;
};
typedef Transports = {
	var File : TransportInstance;
	var Console : TransportInstance;
	var Loggly : TransportInstance;
	var DailyRotateFile : TransportInstance;
	var Http : TransportInstance;
	var Memory : TransportInstance;
	var Webhook : TransportInstance;
};
typedef TransportOptions = {
	@:optional
	var level : String;
	@:optional
	var silent : Bool;
	@:optional
	var raw : Bool;
	@:optional
	var name : String;
	@:optional
	var handleExceptions : Bool;
};
typedef QueryOptions = {
	@:optional
	var rows : Float;
	@:optional
	var limit : Float;
	@:optional
	var start : Float;
	@:optional
	var from : Date;
	@:optional
	var until : Date;
	@:optional
	var order : String;
	var fields : Dynamic;
};
typedef ProfileHandler = {
	var logger : LoggerInstance;
	var start : Date;
	var done : String -> LoggerInstance;
};
extern class WinstonTopLevel {
	static var transports : Transports;
	static var Transport : TransportStatic;
	static var Logger : LoggerStatic;
	static var Container : ContainerStatic;
	static var loggers : ContainerInstance;
	static var defaultLogger : LoggerInstance;
	static var exitOnError : Bool;
	static var level : String;
	static function log(level:String, msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function log(level:String, msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function debug(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function debug(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function info(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function info(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function warn(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function warn(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function error(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function error(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function query(options:QueryOptions, ?callback:Error -> Dynamic -> Void):Dynamic;
	static function query(callback:Error -> Dynamic -> Void):Dynamic;
	static function stream(?options:Dynamic):NodeJS.ReadableStream;
	static function handleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	static function unhandleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	static function add(transport:TransportInstance, ?options:TransportOptions, ?created:Bool):LoggerInstance;
	static function clear():Void;
	static function remove(transport:TransportInstance):LoggerInstance;
	static function startTimer():ProfileHandler;
	static function profile(id:String, ?msg:String, ?meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function addColors(target:Dynamic):Dynamic;
	static function setLevels(target:Dynamic):Dynamic;
	static function cli():LoggerInstance;
}
extern class WinstonTopLevel {
	static var transports : Transports;
	static var Transport : TransportStatic;
	static var Logger : LoggerStatic;
	static var Container : ContainerStatic;
	static var loggers : ContainerInstance;
	static var defaultLogger : LoggerInstance;
	static var exitOnError : Bool;
	static var level : String;
	static function log(level:String, msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function log(level:String, msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function debug(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function debug(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function info(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function info(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function warn(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function warn(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function error(msg:String, meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function error(msg:String, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function query(options:QueryOptions, ?callback:Error -> Dynamic -> Void):Dynamic;
	static function query(callback:Error -> Dynamic -> Void):Dynamic;
	static function stream(?options:Dynamic):NodeJS.ReadableStream;
	static function handleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	static function unhandleExceptions(transports:haxe.extern.Rest<TransportInstance>):Void;
	static function add(transport:TransportInstance, ?options:TransportOptions, ?created:Bool):LoggerInstance;
	static function clear():Void;
	static function remove(transport:TransportInstance):LoggerInstance;
	static function startTimer():ProfileHandler;
	static function profile(id:String, ?msg:String, ?meta:Dynamic, ?callback:Error -> String -> String -> Dynamic -> Void):LoggerInstance;
	static function addColors(target:Dynamic):Dynamic;
	static function setLevels(target:Dynamic):Dynamic;
	static function cli():LoggerInstance;
}
