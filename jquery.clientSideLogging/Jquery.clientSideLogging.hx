typedef ClientSideLoggingClientInfoObject = {
	@:optional
	var location : Bool;
	@:optional
	var screen_size : Bool;
	@:optional
	var user_agent : Bool;
	@:optional
	var window_size : Bool;
};
typedef ClientSideLoggingObject = {
	@:optional
	var error_url : String;
	@:optional
	var info_url : String;
	@:optional
	var log_url : String;
	@:optional
	var log_level : Float;
	@:optional
	var native_error : Bool;
	@:optional
	var hijack_console : Bool;
	@:optional
	var query_var : String;
	@:optional
	var client_info : ClientSideLoggingClientInfoObject;
};
typedef JQueryStatic = {
	var info : ?Dynamic -> Dynamic;
	var log : ?Dynamic -> Dynamic;
	var clientSideLogging : ClientSideLoggingObject -> Dynamic;
};
