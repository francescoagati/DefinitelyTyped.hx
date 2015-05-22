typedef ConfigurationOptions = {
	var url : String;
	@:optional
	var logLevel : String;
	@:optional
	var maxConnections : Float;
	@:optional
	var backoffIncrement : Float;
	@:optional
	var maxBackoff : Float;
	@:optional
	var reverseIncomingExtensions : Bool;
	@:optional
	var maxNetworkDelay : Float;
	@:optional
	var requestHeaders : Dynamic;
	@:optional
	var appendMessageTypeToURL : Bool;
	@:optional
	var autoBatch : Bool;
};
extern class CometDTopLevel {
	static var onListenerException : Dynamic -> Dynamic -> Bool -> String -> Void;
	static function init(options:ConfigurationOptions):Void;
	static function addListener(channel:String, listener:Dynamic -> Void):Void;
	static function removeListener(listener:Dynamic -> Void):Void;
	static function publish(channel:String, message:Dynamic):Void;
}
