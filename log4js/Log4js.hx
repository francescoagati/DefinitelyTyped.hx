typedef Logger = {
	@:overload(function(level:Level):Void { })
	function setLevel(level:String):Void;
	function isLevelEnabled(level:Level):Bool;
	function isTraceEnabled():Bool;
	function isDebugEnabled():Bool;
	function isInfoEnabled():Bool;
	function isWarnEnabled():Bool;
	function isErrorEnabled():Bool;
	function isFatalEnabled():Bool;
	function trace(message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function debug(message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function info(message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function warn(message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function error(message:String, args:haxe.extern.Rest<Dynamic>):Void;
	function fatal(message:String, args:haxe.extern.Rest<Dynamic>):Void;
};
typedef Level = {
	@:overload(function(otherLevel:Level):Bool { })
	function isEqualTo(other:String):Bool;
	@:overload(function(otherLevel:Level):Bool { })
	function isLessThanOrEqualTo(other:String):Bool;
	@:overload(function(otherLevel:Level):Bool { })
	function isGreaterThanOrEqualTo(other:String):Bool;
};
typedef IConfig = {
	var appenders : Array<IAppenderConfig>;
	@:optional
	var levels : { };
	@:optional
	var replaceConsole : Bool;
};
typedef IAppenderConfig = {
	var type : String;
	@:optional
	var category : Array<String>;
};
extern class Log4jsTopLevel {
	static function getLogger(?categoryName:String):Logger;
	static function getBufferedLogger(?categoryName:String):Logger;
	static function hasLogger(categoryName:String):Bool;
	static function getDefaultLogger():Logger;
	static function addAppender(appenders:haxe.extern.Rest<Dynamic>):Void;
	static function clearAppenders():Void;
	static function shutdown(cb:haxe.Constraints.Function):Void;
	static function configure(config:IConfig, ?options:Dynamic):Void;
	static function configure(filename:String, ?options:Dynamic):Void;
	static function setGlobalLogLevel(level:String):Void;
	static function setGlobalLogLevel(level:Level):Void;
	static function connectLogger(logger:Logger, options:{ @:optional
	var format : String; @:optional
	var level : String; @:optional
	var nolog : Dynamic; }):express.Handler;
	static function connectLogger(logger:Logger, options:{ @:optional
	var format : String; @:optional
	var level : Level; @:optional
	var nolog : Dynamic; }):express.Handler;
	static var appenders : Dynamic;
	static var levels : { var ALL : Level; var TRACE : Level; var DEBUG : Level; var INFO : Level; var WARN : Level; var ERROR : Level; var FATAL : Level; var OFF : Level; @:overload(function(level:Level, ?defaultLevel:Level):Level { })
	function toLevel(level:String, ?defaultLevel:Level):Level; };
}
extern class Log4jsTopLevel {
	static function getLogger(?categoryName:String):Logger;
	static function getBufferedLogger(?categoryName:String):Logger;
	static function hasLogger(categoryName:String):Bool;
	static function getDefaultLogger():Logger;
	static function addAppender(appenders:haxe.extern.Rest<Dynamic>):Void;
	static function clearAppenders():Void;
	static function shutdown(cb:haxe.Constraints.Function):Void;
	static function configure(config:IConfig, ?options:Dynamic):Void;
	static function configure(filename:String, ?options:Dynamic):Void;
	static function setGlobalLogLevel(level:String):Void;
	static function setGlobalLogLevel(level:Level):Void;
	static function connectLogger(logger:Logger, options:{ @:optional
	var format : String; @:optional
	var level : String; @:optional
	var nolog : Dynamic; }):express.Handler;
	static function connectLogger(logger:Logger, options:{ @:optional
	var format : String; @:optional
	var level : Level; @:optional
	var nolog : Dynamic; }):express.Handler;
	static var appenders : Dynamic;
	static var levels : { var ALL : Level; var TRACE : Level; var DEBUG : Level; var INFO : Level; var WARN : Level; var ERROR : Level; var FATAL : Level; var OFF : Level; @:overload(function(level:Level, ?defaultLevel:Level):Level { })
	function toLevel(level:String, ?defaultLevel:Level):Level; };
}
