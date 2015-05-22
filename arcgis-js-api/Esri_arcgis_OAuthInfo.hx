extern class OAuthInfo {
	var appId : String;
	var authNamespace : String;
	var expiration : Float;
	var locale : String;
	var minTimeUntilExpiration : Float;
	var popup : Bool;
	var popupCallbackUrl : String;
	var popupWindowFeatures : String;
	var portalUrl : String;
	function new(params:esri.OAuthInfoOptions):Void;
	function toJson():Dynamic;
}
