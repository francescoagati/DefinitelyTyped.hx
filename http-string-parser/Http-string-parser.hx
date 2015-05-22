typedef ParseRequestResult = {
	var method : String;
	var uri : String;
	var headers : { };
	var body : String;
};
typedef ParseResponseResult = {
	var statusCode : String;
	var statusMessage : String;
	var headers : { };
	var body : String;
};
typedef ParseRequestLineResult = {
	var method : String;
	var uri : String;
	var protocol : String;
};
typedef ParseStatusLineResult = {
	var protocol : String;
	var statusCode : String;
	var statusMessage : String;
};
extern class Http-string-parserTopLevel {
	static function parseRequest(requestString:String):ParseRequestResult;
	static function parseResponse(responseString:String):ParseResponseResult;
	static function parseRequestLine(requestLineString:String):ParseRequestLineResult;
	static function parseStatusLine(statusLine:String):ParseStatusLineResult;
	static function parseHeaders(headerLines:Array<String>):{ };
}
extern class Http-string-parserTopLevel {
	static function parseRequest(requestString:String):ParseRequestResult;
	static function parseResponse(responseString:String):ParseResponseResult;
	static function parseRequestLine(requestLineString:String):ParseRequestLineResult;
	static function parseStatusLine(statusLine:String):ParseStatusLineResult;
	static function parseHeaders(headerLines:Array<String>):{ };
}
