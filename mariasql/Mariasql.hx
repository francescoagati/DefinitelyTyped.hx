typedef MariaCallBackError = { };
typedef MariaCallBackResult = { };
typedef MariaCallBackRow = { };
typedef MariaCallBackBoolean = { };
typedef MariaCallBackObject = { };
typedef MariaCallBackVoid = { };
typedef Dictionary = { };
typedef MariaPreparedQuery = { };
typedef ClientConfig = {
	var host : String;
	var user : String;
	var password : String;
	@:optional
	var db : String;
	@:optional
	var port : Float;
	@:optional
	var unixSocket : String;
	@:optional
	var keepQueries : Bool;
	@:optional
	var multiStatements : Bool;
	@:optional
	var connTimeout : Float;
	@:optional
	var pingInterval : Float;
	@:optional
	var secureAuth : Bool;
	@:optional
	var compress : Bool;
	@:optional
	var ssl : Dynamic;
	@:optional
	var local_infile : Bool;
	@:optional
	var read_default_group : String;
	@:optional
	var charset : String;
};
typedef MariaResult = {
	@:overload(function(signal:String, cb:MariaCallBackError):MariaResult { })
	@:overload(function(signal:String, cb:MariaCallBackRow):MariaResult { })
	@:overload(function(signal:String, cb:MariaCallBackVoid):MariaResult { })
	function on(signal:String, cb:MariaCallBackObject):MariaResult;
	function abort():Void;
};
typedef MariaQuery = {
	@:overload(function(signal:String, cb:MariaCallBackVoid):MariaQuery { })
	@:overload(function(signal:String, cb:MariaCallBackVoid):MariaQuery { })
	@:overload(function(signal:String, cb:MariaCallBackError):MariaQuery { })
	function on(signal:String, cb:MariaCallBackResult):MariaQuery;
	function abort():Void;
};
typedef MariaClient = {
	function connect(config:ClientConfig):Void;
	function end():Void;
	function destroy():Void;
	function escape(query:String):String;
	@:overload(function(q:String, ?placeHolders:Array<Dynamic>, ?useArray:Bool):MariaQuery { })
	@:overload(function(q:String, ?useArray:Bool):MariaQuery { })
	function query(q:String, ?placeHolders:Dictionary, ?useArray:Bool):MariaQuery;
	function prepare(query:String):MariaPreparedQuery;
	function isMariaDB():Bool;
	@:overload(function(signal:String, cb:MariaCallBackObject):MariaClient { })
	@:overload(function(signal:String, cb:MariaCallBackVoid):MariaClient { })
	function on(signal:String, cb:MariaCallBackError):MariaClient;
	var connected : Bool;
	var threadId : String;
};
typedef Client = {
	function new():MariaClient;
	var prototype : MariaClient;
};
extern class MariasqlTopLevel {
	static var Client : mariasql.Client;
}
extern class MariasqlTopLevel {
	static var Client : mariasql.Client;
}
