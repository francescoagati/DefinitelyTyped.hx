typedef BoomError = {
	var data : Dynamic;
	var reformat : Void -> Void;
	var isBoom : Bool;
	var isServer : Bool;
	var message : String;
	var output : Output;
};
typedef Output = {
	var statusCode : Float;
	var headers : Dynamic;
	var payload : Dynamic;
};
extern class BoomTopLevel {
	static function wrap(error:Error, ?statusCode:Float, ?message:String):BoomError;
	static function create(statusCode:Float, ?message:String, ?data:Dynamic):BoomError;
	static function badRequest(?message:String, ?data:Dynamic):BoomError;
	static function unauthorized(?message:String, ?scheme:Dynamic, ?attributes:Dynamic):BoomError;
	static function forbidden(?message:String, ?data:Dynamic):BoomError;
	static function notFound(?message:String, ?data:Dynamic):BoomError;
	static function methodNotAllowed(?message:String, ?data:Dynamic):BoomError;
	static function notAcceptable(?message:String, ?data:Dynamic):BoomError;
	static function proxyAuthRequired(?message:String, ?data:Dynamic):BoomError;
	static function clientTimeout(?message:String, ?data:Dynamic):BoomError;
	static function conflict(?message:String, ?data:Dynamic):BoomError;
	static function resourceGone(?message:String, ?data:Dynamic):BoomError;
	static function lengthRequired(?message:String, ?data:Dynamic):BoomError;
	static function preconditionFailed(?message:String, ?data:Dynamic):BoomError;
	static function entityTooLarge(?message:String, ?data:Dynamic):BoomError;
	static function uriTooLong(?message:String, ?data:Dynamic):BoomError;
	static function unsupportedMediaType(?message:String, ?data:Dynamic):BoomError;
	static function rangeNotSatisfiable(?message:String, ?data:Dynamic):BoomError;
	static function expectationFailed(?message:String, ?data:Dynamic):BoomError;
	static function badData(?message:String, ?data:Dynamic):BoomError;
	static function tooManyRequests(?message:String, ?data:Dynamic):BoomError;
	static function notImplemented(?message:String, ?data:Dynamic):BoomError;
	static function badGateway(?message:String, ?data:Dynamic):BoomError;
	static function serverTimeout(?message:String, ?data:Dynamic):BoomError;
	static function gatewayTimeout(?message:String, ?data:Dynamic):BoomError;
	static function badImplementation(?message:String, ?data:Dynamic):BoomError;
}
