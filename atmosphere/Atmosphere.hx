typedef Atmosphere = {
	@:optional
	var subscribe : Dynamic -> ?haxe.Constraints.Function -> ?Request -> Request;
	@:optional
	var unsubscribe : Void -> Void;
	@:optional
	var AtmosphereRequest : AtmosphereRequest;
};
typedef AtmosphereRequest = {
	function new():Request;
};
typedef Request = {
	@:optional
	var timeout : Float;
	@:optional
	var method : String;
	@:optional
	var headers : Dynamic;
	@:optional
	var contentType : String;
	@:optional
	var callback : haxe.Constraints.Function;
	@:optional
	var url : String;
	@:optional
	var data : String;
	@:optional
	var suspend : Bool;
	@:optional
	var maxRequest : Float;
	@:optional
	var reconnect : Bool;
	@:optional
	var maxStreamingLength : Float;
	@:optional
	var lastIndex : Float;
	@:optional
	var logLevel : String;
	@:optional
	var requestCount : Float;
	@:optional
	var fallbackMethod : String;
	@:optional
	var fallbackTransport : String;
	@:optional
	var transport : String;
	@:optional
	var webSocketImpl : Dynamic;
	@:optional
	var webSocketBinaryType : Dynamic;
	@:optional
	var dispatchUrl : String;
	@:optional
	var webSocketPathDelimiter : String;
	@:optional
	var enableXDR : Bool;
	@:optional
	var rewriteURL : Bool;
	@:optional
	var attachHeadersAsQueryString : Bool;
	@:optional
	var executeCallbackBeforeReconnect : Bool;
	@:optional
	var readyState : Float;
	@:optional
	var lastTimestamp : Float;
	@:optional
	var withCredentials : Bool;
	@:optional
	var trackMessageLength : Bool;
	@:optional
	var messageDelimiter : String;
	@:optional
	var connectTimeout : Float;
	@:optional
	var reconnectInterval : Float;
	@:optional
	var dropHeaders : Bool;
	@:optional
	var uuid : Float;
	@:optional
	var async : Bool;
	@:optional
	var shared : Bool;
	@:optional
	var readResponsesHeaders : Bool;
	@:optional
	var maxReconnectOnClose : Float;
	@:optional
	var enableProtocol : Bool;
	@:optional
	var pollingInterval : Float;
	@:optional
	var onError : ?Response -> Void;
	@:optional
	var onClose : ?Response -> Void;
	@:optional
	var onOpen : ?Response -> Void;
	@:optional
	var onMessage : Response -> Void;
	@:optional
	var onReopen : ?Request -> ?Response -> Void;
	@:optional
	var onReconnect : ?Request -> ?Response -> Void;
	@:optional
	var onMessagePublished : ?Response -> Void;
	@:optional
	var onTransportFailure : ?String -> ?Response -> Void;
	@:optional
	var onLocalMessage : ?Request -> Void;
	@:optional
	var onFailureToReconnect : ?Request -> ?Response -> Void;
	@:optional
	var onClientTimeout : ?Request -> Void;
	@:optional
	var subscribe : Request -> Void;
	@:optional
	var execute : Void -> Void;
	@:optional
	var close : Void -> Void;
	@:optional
	var disconnect : Void -> Void;
	@:optional
	var getUrl : Void -> String;
	@:optional
	var push : String -> ?String -> Void;
	@:optional
	var getUUID : Void -> Void;
	@:optional
	var pushLocal : String -> Void;
};
typedef Response = {
	@:optional
	var status : Float;
	@:optional
	var reasonPhrase : String;
	@:optional
	var responseBody : String;
	@:optional
	var messages : Array<String>;
	@:optional
	var headers : Array<String>;
	@:optional
	var state : String;
	@:optional
	var transport : String;
	@:optional
	var error : String;
	@:optional
	var request : Request;
	@:optional
	var partialMessage : String;
	@:optional
	var errorHandled : Bool;
	@:optional
	var closedByClientTimeout : Bool;
};
