typedef Logger = {
	var setLogLevel : Float -> Void;
	var getLogLevel : Void -> Float;
	var setParent : Logger -> Void;
	var getParent : Void -> Logger;
	var registerWatcher : String -> Void -> Void;
	var getWatchers : Void -> Array<haxe.Constraints.Function>;
	var log : Float -> haxe.extern.Rest<Dynamic> -> Void;
	var fine : haxe.extern.Rest<Dynamic> -> Void;
	var info : haxe.extern.Rest<Dynamic> -> Void;
	var warn : haxe.extern.Rest<Dynamic> -> Void;
	var error : haxe.extern.Rest<Dynamic> -> Void;
	var isLoggable : Float -> Bool;
};
typedef LoggingLevels = {
	var SEVERE : Float;
	var WARN : Float;
	var INFO : Float;
	var FINE : Float;
	var FINER : Float;
	var FINEST : Float;
	var toString : Float -> String;
};
extern class LoggTopLevel {
	static function getLogger(name:String):Logger;
	static function getTransientLogger(name:String):Logger;
	static var Level : LoggingLevels;
	static var rootLogger : Logger;
	static var registerWatcher : String -> Void -> Void;
}
extern class LoggTopLevel {
	static function getLogger(name:String):Logger;
	static function getTransientLogger(name:String):Logger;
	static var Level : LoggingLevels;
	static var rootLogger : Logger;
	static var registerWatcher : String -> Void -> Void;
}
