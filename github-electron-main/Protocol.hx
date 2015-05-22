extern class RequestFileJob {
	function new(path:String):Void;
}
extern class RequestStringJob {
	function new(?options:{ @:optional
	var mimeType : String; @:optional
	var charset : String; @:optional
	var data : String; }):Void;
}
extern class RequestBufferJob {
	function new(?options:{ @:optional
	var mimeType : String; @:optional
	var encoding : String; @:optional
	var data : Buffer; }):Void;
}
extern class ProtocolTopLevel {
	static function registerProtocol(scheme:String, handler:Dynamic -> Void):Void;
	static function unregisterProtocol(scheme:String):Void;
	static function isHandledProtocol(scheme:String):Bool;
	static function interceptProtocol(scheme:String, handler:Dynamic -> Void):Void;
	static function uninterceptProtocol(scheme:String):Void;
}
