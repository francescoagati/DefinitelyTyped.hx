typedef IErrorCode = {
	var SUCCESS : Float;
	var NO_SUCH_ELEMENT : Float;
	var NO_SUCH_FRAME : Float;
	var UNKNOWN_COMMAND : Float;
	var UNSUPPORTED_OPERATION : Float;
	var STALE_ELEMENT_REFERENCE : Float;
	var ELEMENT_NOT_VISIBLE : Float;
	var INVALID_ELEMENT_STATE : Float;
	var UNKNOWN_ERROR : Float;
	var ELEMENT_NOT_SELECTABLE : Float;
	var JAVASCRIPT_ERROR : Float;
	var XPATH_LOOKUP_ERROR : Float;
	var TIMEOUT : Float;
	var NO_SUCH_WINDOW : Float;
	var INVALID_COOKIE_DOMAIN : Float;
	var UNABLE_TO_SET_COOKIE : Float;
	var MODAL_DIALOG_OPENED : Float;
	var UNEXPECTED_ALERT_OPEN : Float;
	var NO_SUCH_ALERT : Float;
	var NO_MODAL_DIALOG_OPEN : Float;
	var SCRIPT_TIMEOUT : Float;
	var INVALID_ELEMENT_COORDINATES : Float;
	var IME_NOT_AVAILABLE : Float;
	var IME_ENGINE_ACTIVATION_FAILED : Float;
	var INVALID_SELECTOR_ERROR : Float;
	var SESSION_NOT_CREATED : Float;
	var MOVE_TARGET_OUT_OF_BOUNDS : Float;
	var SQL_DATABASE_ERROR : Float;
	var INVALID_XPATH_SELECTOR : Float;
	var INVALID_XPATH_SELECTOR_RETURN_TYPE : Float;
	var METHOD_NOT_ALLOWED : Float;
};
extern class Error {
	function new(code:Float, ?opt_message:String):Void;
	static var State : { var ELEMENT_NOT_SELECTABLE : String; var ELEMENT_NOT_VISIBLE : String; var IME_ENGINE_ACTIVATION_FAILED : String; var IME_NOT_AVAILABLE : String; var INVALID_COOKIE_DOMAIN : String; var INVALID_ELEMENT_COORDINATES : String; var INVALID_ELEMENT_STATE : String; var INVALID_SELECTOR : String; var JAVASCRIPT_ERROR : String; var MOVE_TARGET_OUT_OF_BOUNDS : String; var NO_SUCH_ALERT : String; var NO_SUCH_DOM : String; var NO_SUCH_ELEMENT : String; var NO_SUCH_FRAME : String; var NO_SUCH_WINDOW : String; var SCRIPT_TIMEOUT : String; var SESSION_NOT_CREATED : String; var STALE_ELEMENT_REFERENCE : String; var SUCCESS : String; var TIMEOUT : String; var UNABLE_TO_SET_COOKIE : String; var UNEXPECTED_ALERT_OPEN : String; var UNKNOWN_COMMAND : String; var UNKNOWN_ERROR : String; var UNSUPPORTED_OPERATION : String; };
	var code : Float;
	var state : String;
	var message : String;
	var name : String;
	var stack : String;
	var isAutomationError : Bool;
	function toString():String;
}
extern class ErrorTopLevel {
	static var ErrorCode : IErrorCode;
}
