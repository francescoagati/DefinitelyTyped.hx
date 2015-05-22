typedef Request = {
	@:optional
	var method : String;
	@:optional
	var path : String;
	@:optional
	var params : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var entity : Dynamic;
};
typedef Status = {
	var code : Float;
	@:optional
	var text : String;
};
typedef Headers = { };
typedef Response = {
	var request : Request;
	var raw : Dynamic;
	var status : Status;
	var headers : Headers;
	var entity : Dynamic;
};
typedef ResponsePromise = {
	>when.Promise<Response>,
	function entity():when.Promise<Dynamic>;
	function status():when.Promise<Float>;
	function headers():when.Promise<Headers>;
	function header(headerName:String):when.Promise<Dynamic>;
};
typedef Interceptor<T> = { };
typedef Client = {
	function skip():Client;
	function wrap<T>(interceptor:Interceptor<T>, ?config:T):Client;
};
typedef Meta = {
	var client : Client;
	var arguments : Dynamic;
};
extern class RestTopLevel {
	static function rest(path:String):rest.ResponsePromise;
	static function rest(request:rest.Request):rest.ResponsePromise;
	static function setDefaultClient(client:Client):Void;
	static function getDefaultClient():Client;
	static function resetDefaultClient():Void;
	static function wrap<T>(interceptor:Interceptor<T>, ?config:T):Client;
}
extern class RestTopLevel {
	static function rest(path:String):rest.ResponsePromise;
	static function rest(request:rest.Request):rest.ResponsePromise;
	static function setDefaultClient(client:Client):Void;
	static function getDefaultClient():Client;
	static function resetDefaultClient():Void;
	static function wrap<T>(interceptor:Interceptor<T>, ?config:T):Client;
}
extern class RestTopLevel {
	static function rest(path:String):rest.ResponsePromise;
	static function rest(request:rest.Request):rest.ResponsePromise;
	static function setDefaultClient(client:Client):Void;
	static function getDefaultClient():Client;
	static function resetDefaultClient():Void;
	static function wrap<T>(interceptor:Interceptor<T>, ?config:T):Client;
}
