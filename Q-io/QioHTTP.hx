typedef Request = {
	var url : String;
	var path : String;
	var scriptName : String;
	var pathInfo : String;
	var version : Array<String>;
	var method : String;
	var scheme : String;
	var host : String;
	var port : Float;
	var remoteHost : String;
	var remotePort : Float;
	var headers : Headers;
	var agent : Dynamic;
	var body : Dynamic;
	var node : Dynamic;
};
typedef Response = {
	var status : Float;
	var headers : Headers;
	var body : Qio.Reader;
	var onclose : Void -> Void;
	var node : Dynamic;
};
typedef Headers = { };
typedef Body = {
	>Qio.Stream,
};
typedef Application = { };
extern class QioHTTPTopLevel {
	static function request(request:Request):Q.Promise<Response>;
	static function request(url:String):Q.Promise<Response>;
	static function read(request:Request):Q.Promise<String>;
	static function read(url:String):Q.Promise<String>;
	static function normalizeRequest(request:Request):Request;
	static function normalizeRequest(url:String):Request;
	static function normalizeResponse(response:Response):Response;
}
