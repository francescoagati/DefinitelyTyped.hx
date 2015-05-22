typedef CookieOptions = {
	@:optional
	var domain : String;
	@:optional
	var expires : Date;
	@:optional
	var httpOnly : Bool;
	@:optional
	var maxAge : Float;
	@:optional
	var path : String;
	@:optional
	var secure : Bool;
};
typedef HttpResponse = {
	@:optional
	var buffer : Buffer;
	@:optional
	var cookies : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var status : Float;
	@:optional
	var text : String;
};
typedef JobRequest = {
	var params : Dynamic;
};
typedef JobStatus = {
	@:optional
	var error : haxe.Constraints.Function;
	@:optional
	var message : haxe.Constraints.Function;
	@:optional
	var success : haxe.Constraints.Function;
};
typedef FunctionRequest = {
	@:optional
	var installationId : String;
	@:optional
	var master : Bool;
	@:optional
	var params : Dynamic;
	@:optional
	var user : User;
};
typedef FunctionResponse = {
	@:optional
	var success : HttpResponse -> Void;
	@:optional
	var error : HttpResponse -> Void;
};
typedef Cookie = {
	@:optional
	var name : String;
	@:optional
	var options : CookieOptions;
	@:optional
	var value : String;
};
typedef AfterSaveRequest = {
	>FunctionRequest,
};
typedef AfterDeleteRequest = {
	>FunctionRequest,
};
typedef BeforeDeleteRequest = {
	>FunctionRequest,
};
typedef BeforeDeleteResponse = {
	>FunctionResponse,
};
typedef BeforeSaveRequest = {
	>FunctionRequest,
};
typedef BeforeSaveResponse = {
	>FunctionResponse,
};
extern class CloudTopLevel {
	static function afterDelete(arg1:Dynamic, ?func:AfterDeleteRequest -> Void):Void;
	static function afterSave(arg1:Dynamic, ?func:AfterSaveRequest -> Void):Void;
	static function beforeDelete(arg1:Dynamic, ?func:BeforeDeleteRequest -> BeforeDeleteResponse -> Void):Void;
	static function beforeSave(arg1:Dynamic, ?func:BeforeSaveRequest -> BeforeSaveResponse -> Void):Void;
	static function define(name:String, ?func:FunctionRequest -> FunctionResponse -> Void):Void;
	static function httpRequest<T>(options:ParseDefaultOptions):Promise<HttpResponse>;
	static function job(name:String, ?func:JobRequest -> JobStatus -> Void):HttpResponse;
	static function run<T>(name:String, ?data:Dynamic, ?options:ParseDefaultOptions):Promise<T>;
	static function useMasterKey():Void;
}
extern class Error {
	var code : ErrorCode;
	var message : String;
	function new(code:ErrorCode, message:String):Void;
}
@:enum abstract ErrorCode(Int) {
	var OTHER_CAUSE = -1;
	var INTERNAL_SERVER_ERROR = 1;
	var CONNECTION_FAILED = 100;
	var OBJECT_NOT_FOUND = 101;
	var INVALID_QUERY = 102;
	var INVALID_CLASS_NAME = 103;
	var MISSING_OBJECT_ID = 104;
	var INVALID_KEY_NAME = 105;
	var INVALID_POINTER = 106;
	var INVALID_JSON = 107;
	var COMMAND_UNAVAILABLE = 108;
	var NOT_INITIALIZED = 109;
	var INCORRECT_TYPE = 111;
	var INVALID_CHANNEL_NAME = 112;
	var PUSH_MISCONFIGURED = 115;
	var OBJECT_TOO_LARGE = 116;
	var OPERATION_FORBIDDEN = 119;
	var CACHE_MISS = 120;
	var INVALID_NESTED_KEY = 121;
	var INVALID_FILE_NAME = 122;
	var INVALID_ACL = 123;
	var TIMEOUT = 124;
	var INVALID_EMAIL_ADDRESS = 125;
	var MISSING_CONTENT_TYPE = 126;
	var MISSING_CONTENT_LENGTH = 127;
	var INVALID_CONTENT_LENGTH = 128;
	var FILE_TOO_LARGE = 129;
	var FILE_SAVE_ERROR = 130;
	var DUPLICATE_VALUE = 137;
	var INVALID_ROLE_NAME = 139;
	var EXCEEDED_QUOTA = 140;
	var SCRIPT_FAILED = 141;
	var VALIDATION_ERROR = 142;
	var INVALID_IMAGE_DATA = 150;
	var UNSAVED_FILE_ERROR = 151;
	var INVALID_PUSH_TIME_ERROR = 152;
	var FILE_DELETE_ERROR = 153;
	var REQUEST_LIMIT_EXCEEDED = 155;
	var INVALID_EVENT_NAME = 160;
	var USERNAME_MISSING = 200;
	var PASSWORD_MISSING = 201;
	var USERNAME_TAKEN = 202;
	var EMAIL_TAKEN = 203;
	var EMAIL_MISSING = 204;
	var EMAIL_NOT_FOUND = 205;
	var SESSION_MISSING = 206;
	var MUST_CREATE_USER_THROUGH_SIGNUP = 207;
	var ACCOUNT_ALREADY_LINKED = 208;
	var INVALID_SESSION_TOKEN = 209;
	var LINKED_ID_MISSING = 250;
	var INVALID_LINKED_SESSION = 251;
	var UNSUPPORTED_SERVICE = 252;
	var AGGREGATE_ERROR = 600;
	var FILE_READ_ERROR = 601;
	var X_DOMAIN_REQUEST = 602;
}
