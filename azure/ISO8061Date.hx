extern class ISO8061DateTopLevel {
	static function format(date:Date):String;
	static function parse(stringDateTime:String):Date;
}
extern class Logger {
	var level : String;
	var loggerFunction : String -> String -> Void;
	static var LogLevels : { var EMERGENCY : String; var ALERT : String; var CRITICAL : String; var ERROR : String; var WARNING : String; var NOTICE : String; var INFO : String; var DEBUG : String; };
	static var logPriority : Array<String>;
	function log(level:String, message:String):Void;
	function emergency(message:String):Void;
	function alert(message:String):Void;
	function critical(message:String):Void;
	function error(message:String):Void;
	function warning(message:String):Void;
	function notice(message:String):Void;
	function info(message:String):Void;
	function debug(message:String):Void;
	function defaultLoggerFunction(level:String, message:String):Void;
}
extern class ConnectionStringParser {
	var _value : String;
	var _pos : Float;
	var _state : String;
	function new(connectionString:String):Void;
	function _parse(options:ConnectionStringParseOptions):Dictionary<String>;
	function _extractKey():String;
	function _extractString(quote:String):String;
	function _extractValue():String;
	function _skipWhitespaces():Void;
	function _skipOperator(operator:String):Void;
	static function parse(connectionString:String):Dictionary<String>;
}
