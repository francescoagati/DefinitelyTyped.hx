extern class HttpRequest<T> {
	function execute(callback:T -> { var body : String; var headers : Array<Dynamic>; var status : Float; var statusText : String; } -> Dynamic):Void;
	function then(success:{ var result : T; var body : String; @:optional
	var headers : Array<Dynamic>; @:optional
	var status : Float; @:optional
	var statusText : String; } -> Void, failure:{ var result : T; var body : String; @:optional
	var headers : Array<Dynamic>; @:optional
	var status : Float; @:optional
	var statusText : String; } -> Void):Void;
}
extern class HttpBatch {
	function add(httpRequest:HttpRequest<Dynamic>, ?opt_params:{ var id : String; var callback : Dynamic -> Dynamic -> Dynamic; }):Void;
	function execute(callback:Dynamic -> String -> Dynamic):Void;
}
extern class RpcRequest {
	function callback(callback:Dynamic -> String -> Void):Void;
}
extern class Gapi.clientTopLevel {
	static function load(name:String, version:String, ?callback:Void -> Dynamic):Void;
	static function request(args:{ var path : String; @:optional
	var method : String; @:optional
	var params : Dynamic; @:optional
	var headers : Dynamic; @:optional
	var body : Dynamic; @:optional
	var callback : Void -> Dynamic; }):HttpRequest<Dynamic>;
	static function rpcRequest(method:String, ?version:String, ?rpcParams:Dynamic):RpcRequest;
	static function setApiKey(apiKey:String):Void;
}
