extern class Preferences {
	function setLevel(type:String, level:ILevel):Void;
	function toJSON():{ };
}
typedef IType = {
	var BROWSER : String;
	var CLIENT : String;
	var DRIVER : String;
	var PERFORMANCE : String;
	var SERVER : String;
};
typedef ILevel = {
	var value : Float;
	var name : String;
};
typedef ILevelValues = {
	var ALL : ILevel;
	var DEBUG : ILevel;
	var INFO : ILevel;
	var WARNING : ILevel;
	var SEVERE : ILevel;
	var OFF : ILevel;
};
typedef IEntryJSON = {
	var level : String;
	var message : String;
	var timestamp : Float;
	var type : String;
};
extern class Entry {
	@:overload(function(level:String, message:String, ?opt_timestamp:Float, ?opt_type:String):Void { })
	function new(level:ILevel, message:String, ?opt_timestamp:Float, ?opt_type:String):Void;
	var level : ILevel;
	var message : String;
	var timestamp : Float;
	var type : String;
	static function fromClosureLogRecord(logRecord:Dynamic, ?opt_type:String):Entry;
	function toJSON():IEntryJSON;
}
extern class LoggingTopLevel {
	static var Type : IType;
	static var Level : ILevelValues;
	static function getLevel(nameOrValue:String):ILevel;
	static function getLevel(nameOrValue:Float):ILevel;
}
