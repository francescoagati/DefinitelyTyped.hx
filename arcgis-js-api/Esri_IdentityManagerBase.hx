extern class IdentityManagerBase {
	var tokenValidity : Float;
	function checkSignInStatus(resUrl:String):Dynamic;
	function destroyCredentials():Void;
	function findCredential(url:String, ?userId:String):Credential;
	function findOAuthInfo(url:String):OAuthInfo;
	function findServerInfo(url:String):ServerInfo;
	function generateToken(serverInfo:ServerInfo, userInfo:Dynamic, ?options:Dynamic):Dynamic;
	function getCredential(url:String, ?options:Dynamic):Dynamic;
	function initialize(json:Dynamic):Dynamic;
	function isBusy():Bool;
	function oAuthSignIn(resUrl:String, serverInfo:ServerInfo, OAuthInfo:OAuthInfo, ?options:Dynamic):Dynamic;
	function registerOAuthInfos(oAuthInfos:Array<OAuthInfo>):Void;
	function registerServers(serverInfos:Array<ServerInfo>):Void;
	function registerToken(properties:Dynamic):Void;
	function setProtocolErrorHandler(handlerFunction:haxe.Constraints.Function):Void;
	function setRedirectionHandler(handlerFunction:haxe.Constraints.Function):Void;
	function signIn(url:String, serverInfo:ServerInfo, ?options:Dynamic):Dynamic;
	function toJson():Dynamic;
	@:overload(function(type:Credentials-destroy, listener:{ var target : IdentityManagerBase; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Credential-create, listener:{ var target : IdentityManagerBase; } -> Void):esri.Handle;
}
