extern class JsonpService extends dojo.rpc.RpcService {
	function new(args:Dynamic, requiredArgs:Dynamic):Void;
	var serviceUrl : String;
	var strictArgChecks : Bool;
	function bind(method:String, parameters:dojo._base.Array, deferredRequestHandler:dojo.Deferred, url:Dynamic):Void;
	function createRequest(parameters:Dynamic):Dynamic;
	function errorCallback(deferredRequestHandler:dojo._base.Deferred):haxe.Constraints.Function;
	function generateMethod(method:String, parameters:dojo._base.Array, url:String):Dynamic;
	function parseResults(obj:Dynamic):Dynamic;
	function processSmd(object:Dynamic):Void;
	function resultCallback(deferredRequestHandler:dojo._base.Deferred):Dynamic;
}
extern class JsonService extends dojo.rpc.RpcService {
	function new(args:Dynamic):Void;
	var bustCache : Bool;
	var contentType : String;
	var lastSubmissionId : Float;
	var serviceUrl : String;
	var strictArgChecks : Bool;
	function bind(method:String, parameters:Array<Dynamic>, deferredRequestHandler:dojo.Deferred, url:Dynamic):Void;
	function callRemote(method:String, params:Array<Dynamic>):Dynamic;
	function createRequest(method:String, params:dojo._base.Array):Dynamic;
	function errorCallback(deferredRequestHandler:dojo._base.Deferred):haxe.Constraints.Function;
	function generateMethod(method:String, parameters:dojo._base.Array, url:String):Dynamic;
	function parseResults(obj:Dynamic):Dynamic;
	function processSmd(object:Dynamic):Void;
	function resultCallback(deferredRequestHandler:dojo._base.Deferred):Dynamic;
}
extern class RpcService {
	function new(args:Dynamic):Void;
	var serviceUrl : String;
	var strictArgChecks : Bool;
	function errorCallback(deferredRequestHandler:dojo._base.Deferred):haxe.Constraints.Function;
	function generateMethod(method:String, parameters:dojo._base.Array, url:String):Dynamic;
	function parseResults(obj:Dynamic):Dynamic;
	function processSmd(object:Dynamic):Void;
	function resultCallback(deferredRequestHandler:dojo._base.Deferred):Dynamic;
}
