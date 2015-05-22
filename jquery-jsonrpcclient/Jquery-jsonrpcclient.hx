typedef JsonRpcClientOptions = {
	>JQueryAjaxSettings,
	@:optional
	var ajaxUrl : String;
	@:optional
	var headers : { };
	@:optional
	var sockerUrl : String;
	@:optional
	var onmessage : Void -> Void;
	@:optional
	var onopen : Void -> Void;
	@:optional
	var onclose : Void -> Void;
	@:optional
	var onerror : Void -> Void;
	@:optional
	var getSockect : Void -> Void -> WebSocket;
};
typedef JsonRpcClient = {
	function call(method:String, params:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, successCb:Dynamic -> Void, errorCb:Dynamic -> Void):JQueryDeferred<JQueryXHR>;
	function notify(method:String, params:haxe.extern.EitherType<Dynamic, Array<Dynamic>>):JQueryDeferred<JQueryXHR>;
	function batch(callback:JsonRpcClient -> Void, allDoneCb:Dynamic -> Void, errorCb:Dynamic -> Void):Void;
};
typedef JsonRpcClientFactory = {
	function new(?options:JsonRpcClientOptions):JsonRpcClient;
};
typedef JQueryStatic = {
	var JsonRpcClient : JsonRpcClientFactory;
};
