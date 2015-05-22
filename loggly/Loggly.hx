typedef LogglyOptions = {
	var token : String;
	var subdomain : String;
	@:optional
	var tags : Array<String>;
	@:optional
	var json : Bool;
	@:optional
	var host : String;
	@:optional
	var auth : { var username : String; var password : String; };
};
typedef Loggly = {
	@:overload(function(message:Dynamic, ?callback:Dynamic -> Dynamic -> Void):Void { })
	function log(message:Dynamic, ?tags:Array<String>, ?callback:Dynamic -> Dynamic -> Void):Void;
};
extern class LogglyTopLevel {
	static function createClient(options:LogglyOptions):Loggly;
}
extern class LogglyTopLevel {
	static function createClient(options:LogglyOptions):Loggly;
}
