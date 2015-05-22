typedef Filter = {
	function handle(requestOptions:Dynamic, next:haxe.Constraints.Function):Void;
};
extern class LinearRetryPolicyFilter {
	function new(?retryCount:Float, ?retryInterval:Float):Void;
	var retryCount : Float;
	var retryInterval : Float;
	function handle(requestOptions:Dynamic, next:haxe.Constraints.Function):Void;
}
extern class ExponentialRetryPolicyFilter {
	function new(?retryCount:Float, ?retryInterval:Float, ?minRetryInterval:Float, ?maxRetryInterval:Float):Void;
	var retryCount : Float;
	var retryInterval : Float;
	var minRetryInterval : Float;
	var maxRetryInterval : Float;
	function handle(requestOptions:Dynamic, next:haxe.Constraints.Function):Void;
}
extern class HmacSha256Sign {

}
extern class SharedAccessSignature {
	var storageAccount : String;
	var storageAccessKey : String;
	var permissionSet : Array<String>;
	var signer : HmacSha256Sign;
	function new(storageAccount:String, storageAccessKey:String, permissionSet:Array<String>):Void;
	function generateSignedQueryString(path:String, queryString:Dictionary<String>, resourceType:String, sharedAccessPolicy:SharedAccessPolicy):Dictionary<String>;
	function signRequest(webResource:WebResource, callback:ErrorCallback):Void;
	function _generateSignature(path:String, resourceType:String, sharedAccessPolicy:SharedAccessPolicy):String;
	function _permissionMatchesRequest(sharedAccessSignature:String, webResource:WebResource, resourceType:String, requiredPermissions:Array<String>):String;
}
extern class SharedKey {
	var storageAccount : String;
	var storageAccessKey : String;
	var usePathStyleUri : String;
	var signer : HmacSha256Sign;
	function new(storageAccount:String, storageAccessKey:String, usePathStyleUri:Bool):Void;
	function signRequest(webResource:WebResource, callback:ErrorCallback):Void;
	function _getCanonicalizedResource(webResource:WebResource):String;
	function _getCanonicalizedHeaders(webResource:WebResource):String;
}
extern class SharedKeyLite {
	var storageAccount : String;
	var storageAccessKey : String;
	var usePathStyleUri : String;
	var signer : HmacSha256Sign;
	function new(storageAccount:String, storageAccessKey:String, usePathStyleUri:Bool):Void;
	function signRequest(webResource:WebResource, callback:ErrorCallback):Void;
	function _getCanonicalizedResource(webResource:WebResource):String;
	function _getCanonicalizedHeaders(webResource:WebResource):String;
}
extern class SharedKeyTable {
	var storageAccount : String;
	var storageAccessKey : String;
	var usePathStyleUri : String;
	var signer : HmacSha256Sign;
	function new(storageAccount:String, storageAccessKey:String, usePathStyleUri:Bool):Void;
	function signRequest(webResource:WebResource, callback:ErrorCallback):Void;
	function _getCanonicalizedResource(webResource:WebResource):String;
}
extern class SharedKeyLiteTable {
	var torageAccount : String;
	var storageAccessKey : String;
	var usePathStyleUri : String;
	var signer : HmacSha256Sign;
	function new(storageAccount:String, storageAccessKey:String, usePathStyleUri:Bool):Void;
	function signRequest(webResource:WebResource, callback:ErrorCallback):Void;
	function _getCanonicalizedResource(webResource:WebResource):String;
}
