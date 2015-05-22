typedef AddressInterface = {
	var port : Float;
	var family : String;
	var address : String;
};
typedef Request = {
	>http.ServerRequest,
	var header : String -> ?String -> Dynamic;
	var accepts : String -> Bool;
	var is : String -> Bool;
	var getLogger : String -> Dynamic;
	var contentLength : Float;
	var contentType : String;
	var href : Void -> String;
	var log : bunyan.Logger;
	var id : String;
	var path : Void -> String;
	var query : Dynamic;
	var secure : Bool;
	var time : Float;
	var params : Dynamic;
	@:optional
	var body : Dynamic;
	var isSecure : Void -> Bool;
};
typedef Response = {
	>http.ServerResponse,
	var header : String -> ?Dynamic -> Dynamic;
	var cache : ?Dynamic -> ?Dynamic -> Dynamic;
	var status : Float -> Dynamic;
	var send : ?Dynamic -> ?Dynamic -> Dynamic;
	var json : ?Dynamic -> ?Dynamic -> Dynamic;
	var code : Float;
	var contentLength : Float;
	function charSet(value:String):Void;
	var contentType : String;
	var headers : Dynamic;
	var id : String;
};
typedef Server = {
	>http.Server,
	@:overload(function(handler:Array<RequestHandler>, handlers:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(handler:RequestHandler, handlers:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(handler:Array<RequestHandler>, handlers:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function use(handler:RequestHandler, handlers:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function post(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function patch(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function put(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function del(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function get(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	@:overload(function(route:Dynamic, routeCallBack:Array<RequestHandler>, routeCallBacks:haxe.extern.Rest<Array<RequestHandler>>):Dynamic { })
	function head(route:Dynamic, routeCallBack:RequestHandler, routeCallBacks:haxe.extern.Rest<RequestHandler>):Dynamic;
	var name : String;
	var version : String;
	var log : Dynamic;
	var acceptable : Array<String>;
	var url : String;
	var address : Void -> AddressInterface;
	function listen(args:haxe.extern.Rest<Dynamic>):Dynamic;
	function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	function pre(routeCallBack:RequestHandler):Dynamic;
	var server : http.Server;
};
typedef ServerOptions = {
	@:optional
	var certificate : String;
	@:optional
	var key : String;
	@:optional
	var formatters : Dynamic;
	@:optional
	var log : Dynamic;
	@:optional
	var name : String;
	@:optional
	var spdy : Dynamic;
	@:optional
	var version : String;
	@:optional
	var responseTimeHeader : String;
	@:optional
	var responseTimeFormatter : Float -> Dynamic;
};
typedef ClientOptions = {
	@:optional
	var accept : String;
	@:optional
	var connectTimeout : Float;
	@:optional
	var dtrace : Dynamic;
	@:optional
	var gzip : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var log : Dynamic;
	@:optional
	var retry : Dynamic;
	@:optional
	var signRequest : haxe.Constraints.Function;
	@:optional
	var url : String;
	@:optional
	var userAgent : String;
	@:optional
	var version : String;
};
typedef Client = {
	var get : String -> ?Dynamic -> Request -> Response -> Dynamic -> Dynamic -> Dynamic;
	var head : String -> ?Dynamic -> Request -> Response -> Dynamic -> Dynamic;
	var post : String -> Dynamic -> ?Dynamic -> Request -> Response -> Dynamic -> Dynamic -> Dynamic;
	var put : String -> Dynamic -> ?Dynamic -> Request -> Response -> Dynamic -> Dynamic -> Dynamic;
	var del : String -> ?Dynamic -> Request -> Response -> Dynamic -> Dynamic;
	var basicAuth : String -> String -> Dynamic;
};
typedef HttpClient = {
	>Client,
	var get : ?Dynamic -> ?haxe.Constraints.Function -> Dynamic;
	var head : ?Dynamic -> ?haxe.Constraints.Function -> Dynamic;
	var post : ?Dynamic -> ?haxe.Constraints.Function -> Dynamic;
	var put : ?Dynamic -> ?haxe.Constraints.Function -> Dynamic;
	var del : ?Dynamic -> ?haxe.Constraints.Function -> Dynamic;
};
typedef ThrottleOptions = {
	@:optional
	var burst : Float;
	@:optional
	var rate : Float;
	@:optional
	var ip : Bool;
	@:optional
	var xff : Bool;
	@:optional
	var username : Bool;
	@:optional
	var tokensTable : Dynamic;
	@:optional
	var maxKeys : Float;
	@:optional
	var overrides : Dynamic;
};
typedef Next = { };
typedef RequestHandler = { };
typedef CORS = {
	var origins : Array<String>;
	var ALLOW_HEADERS : Array<String>;
	var credentials : Bool;
};
extern class HttpError {
	function new(cause:Dynamic, ?message:Dynamic):Void;
}
extern class DefiniteHttpError {
	@:overload(function(cause:Dynamic, ?message:Dynamic):Void { })
	function new(?message:Dynamic):Void;
}
extern class BadRequestError extends DefiniteHttpError {

}
extern class UnauthorizedError extends DefiniteHttpError {

}
extern class PaymentRequiredError extends DefiniteHttpError {

}
extern class ForbiddenError extends DefiniteHttpError {

}
extern class NotFoundError extends DefiniteHttpError {

}
extern class MethodNotAllowedError extends DefiniteHttpError {

}
extern class NotAcceptableError extends DefiniteHttpError {

}
extern class ProxyAuthenticationRequiredError extends DefiniteHttpError {

}
extern class RequestTimeoutError extends DefiniteHttpError {

}
extern class ConflictError extends DefiniteHttpError {

}
extern class GoneError extends DefiniteHttpError {

}
extern class LengthRequiredError extends DefiniteHttpError {

}
extern class RequestEntityTooLargeError extends DefiniteHttpError {

}
extern class RequesturiTooLargeError extends DefiniteHttpError {

}
extern class UnsupportedMediaTypeError extends DefiniteHttpError {

}
extern class RequestedRangeNotSatisfiableError extends DefiniteHttpError {

}
extern class ExpectationFailedError extends DefiniteHttpError {

}
extern class ImATeapotError extends DefiniteHttpError {

}
extern class UnprocessableEntityError extends DefiniteHttpError {

}
extern class LockedError extends DefiniteHttpError {

}
extern class FailedDependencyError extends DefiniteHttpError {

}
extern class UnorderedCollectionError extends DefiniteHttpError {

}
extern class UpgradeRequiredError extends DefiniteHttpError {

}
extern class PreconditionRequiredError extends DefiniteHttpError {

}
extern class TooManyRequestsError extends DefiniteHttpError {

}
extern class RequestHeaderFieldsTooLargeError extends DefiniteHttpError {

}
extern class InternalServerError extends DefiniteHttpError {

}
extern class NotImplementedError extends DefiniteHttpError {

}
extern class BadGatewayError extends DefiniteHttpError {

}
extern class ServiceUnavailableError extends DefiniteHttpError {

}
extern class GatewayTimeoutError extends DefiniteHttpError {

}
extern class HttpVersionNotSupportedError extends DefiniteHttpError {

}
extern class VariantAlsoNegotiatesError extends DefiniteHttpError {

}
extern class InsufficientStorageError extends DefiniteHttpError {

}
extern class BandwidthLimitExceededError extends DefiniteHttpError {

}
extern class NotExtendedError extends DefiniteHttpError {

}
extern class NetworkAuthenticationRequiredError extends DefiniteHttpError {

}
extern class RestError extends DefiniteHttpError {

}
extern class PreconditionFailedError extends RestError {

}
extern class BadDigestError extends RestError {

}
extern class BadMethodError extends RestError {

}
extern class InternalError extends RestError {

}
extern class InvalidArgumentError extends RestError {

}
extern class InvalidContentError extends RestError {

}
extern class InvalidCredentialsError extends RestError {

}
extern class InvalidHeaderError extends RestError {

}
extern class InvalidVersionError extends RestError {

}
extern class MissingParameterError extends RestError {

}
extern class NotAuthorizedError extends RestError {

}
extern class RequestExpiredError extends RestError {

}
extern class RequestThrottledError extends RestError {

}
extern class ResourceNotFoundError extends RestError {

}
extern class WrongAcceptError extends RestError {

}
extern class RestifyTopLevel {
	static function createServer(?options:ServerOptions):Server;
	static function createJsonClient(?options:ClientOptions):Client;
	static function createStringClient(?options:ClientOptions):Client;
	static function createClient(?options:ClientOptions):HttpClient;
	static function acceptParser(parser:Dynamic):RequestHandler;
	static function authorizationParser():RequestHandler;
	static function dateParser(?skew:Float):RequestHandler;
	static function queryParser(?options:Dynamic):RequestHandler;
	static function urlEncodedBodyParser(?options:Dynamic):Array<RequestHandler>;
	static function jsonp():RequestHandler;
	static function gzipResponse(?options:Dynamic):RequestHandler;
	static function bodyParser(?options:Dynamic):Array<RequestHandler>;
	static function requestLogger(?options:Dynamic):RequestHandler;
	static function serveStatic(?options:Dynamic):RequestHandler;
	static function throttle(?options:ThrottleOptions):RequestHandler;
	static function conditionalRequest():Array<RequestHandler>;
	static function auditLogger(?options:Dynamic):haxe.Constraints.Function;
	static function fullResponse():RequestHandler;
	static var defaultResponseHeaders : Dynamic;
	static var CORS : CORS;
}
extern class RestifyTopLevel {
	static function createServer(?options:ServerOptions):Server;
	static function createJsonClient(?options:ClientOptions):Client;
	static function createStringClient(?options:ClientOptions):Client;
	static function createClient(?options:ClientOptions):HttpClient;
	static function acceptParser(parser:Dynamic):RequestHandler;
	static function authorizationParser():RequestHandler;
	static function dateParser(?skew:Float):RequestHandler;
	static function queryParser(?options:Dynamic):RequestHandler;
	static function urlEncodedBodyParser(?options:Dynamic):Array<RequestHandler>;
	static function jsonp():RequestHandler;
	static function gzipResponse(?options:Dynamic):RequestHandler;
	static function bodyParser(?options:Dynamic):Array<RequestHandler>;
	static function requestLogger(?options:Dynamic):RequestHandler;
	static function serveStatic(?options:Dynamic):RequestHandler;
	static function throttle(?options:ThrottleOptions):RequestHandler;
	static function conditionalRequest():Array<RequestHandler>;
	static function auditLogger(?options:Dynamic):haxe.Constraints.Function;
	static function fullResponse():RequestHandler;
	static var defaultResponseHeaders : Dynamic;
	static var CORS : CORS;
}
