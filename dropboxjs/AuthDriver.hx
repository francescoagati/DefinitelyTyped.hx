extern class IAuthDriver {
	function doAuthorize(authUrl:String, stateParam:String, client:Client, ?callback:QueryParamsCallback):Void;
}
extern class BrowserBase {
	static function localStorage():Storage;
	static function currentLocation():String;
	static function cleanupLocation():Void;
	function new(options:{ var scope : String; var rememberUser : Bool; }):Void;
	function authType():String;
	function onAuthStepChange(client:Client, callback:Void -> Void):Void;
	function locationStateParam(url:String):String;
}
extern class Redirect {
	function new(?options:{ var redirectUrl : String; var redirectFile : String; var scope : String; var rememberUser : Bool; }):Void;
	function url():String;
	function doAuthorize(authUrl:String, stateParam:String, client:Client):Void;
	function resumeAuthorize(stateParam:String, client:Client, callback:QueryParamsCallback):Void;
}
extern class Popup extends IAuthDriver {
	static function locationOrigin(location:String):String;
	static function oauthReceiver():Void;
	function new(?options:RedirectOptions):Void;
	function url():String;
}
extern class ChromeApp extends IAuthDriver {
	function new(?options:{ var scope : String; }):Void;
}
extern class ChromeExtension extends IAuthDriver {
	static function oauthReceiver():Void;
	function new(?options:{ var scope : String; var receiverPath : String; }):Void;
}
extern class Cordova extends IAuthDriver {
	static function oauthReceiver():Void;
	function new(?options:{ var scope : String; var receiverPath : String; }):Void;
	function url():String;
}
extern class NodeServer extends IAuthDriver {
	function new(?options:{ var port : Float; @:optional
	var tls : { }; }):Void;
	function authType():String;
	function url():String;
	function openBrowser(url:String):Void;
	function createApp():Void;
	function closeServer():Void;
	function doRequest(request:Dynamic, response:Dynamic):Void;
	function closeBrowser(response:Dynamic):Void;
}
extern class AuthDriver {
	function authType():String;
	function url():String;
	function doAuthorize(authUrl:String, stateParam:String, client:Client, callback:QueryParamsCallback):Void;
	function getStateParam(client:Client, callback:String -> Void):Void;
	function resumeAuthorize(stateParam:String, client:Client, callback:QueryParamsCallback):Void;
	function onAuthStepChange(client:Client, callback:Void -> Void):Void;
}
extern class AccountInfo {
	static function parse(acountInfo:{ }):AccountInfo;
	var name : String;
	var email : String;
	var countryCode : String;
	var uid : String;
	var referralUrl : String;
	var publicAppUrl : String;
	var quota : Float;
	var usedQuota : Float;
	var privateBytes : Float;
	var sharedBytes : Float;
	function json():{ };
}
extern class ApiError {
	var status : Float;
	var method : String;
	var url : String;
	var responseText : String;
	var response : { };
	function new(xhr:XMLHttpRequest, method:String, url:String):Void;
	static var NETWORK_ERROR : Float;
	static var NO_CONTENT : Float;
	static var INVALID_PARAM : Float;
	static var INVALID_TOKEN : Float;
	static var OAUTH_ERROR : Float;
	static var NOT_FOUND : Float;
	static var INVALID_METHOD : Float;
	static var NOT_ACCEPTABLE : Float;
	static var CONFLICT : Float;
	static var RATE_LIMITED : Float;
	static var SERVER_ERROR : Float;
	static var OVER_QUOTA : Float;
}
extern class AuthError {
	var code : String;
	var description : String;
	var uri : String;
	function new(queryString:QueryParams):Void;
	static var ACCESS_DENIED : String;
	static var INVALID_REQUEST : String;
	static var UNAUTHORIZED_CLIENT : String;
	static var INVALID_GRANT : String;
	static var INVALID_SCOPE : String;
	static var UNSUPPORTED_GRANT_TYPE : String;
	static var UNSUPPORTED_RESPONSE_TYPE : String;
	static var SERVER_ERROR : String;
	static var TEMPORARILY_UNAVAILABLE : String;
}
extern class Client {
	static var ERROR : Float;
	static var RESET : Float;
	static var PARAM_SET : Float;
	static var PARAM_LOADED : Float;
	static var AUTHORIZED : Float;
	static var DONE : Float;
	static var SIGNED_OUT : Float;
	var onXhr : Util.EventSource;
	var onError : Util.EventSource;
	var onAuthStepChange : Util.EventSource;
	var authStep : Float;
	function new(options:Credentials):Void;
	function authDriver(driver:AuthDriver.IAuthDriver):Client;
	function dropboxUid():String;
	function credentials():Credentials;
	@:overload(function(callback:AuthenticateCallback):Client { })
	@:overload(function(options:AuthenticateOptions):Client { })
	@:overload(function(options:AuthenticateOptions, callback:AuthenticateCallback):Client { })
	function authenticate():Client;
	function isAuthenticated():Bool;
	@:overload(function(options:SingOutOptions, callback:ApiError -> Void):XMLHttpRequest { })
	function signOut(callback:ApiError -> Void):XMLHttpRequest;
	@:overload(function(options:SingOutOptions, callback:ApiError -> Void):Void { })
	function signOff(callback:ApiError -> Void):Void;
	@:overload(function(options:AccountInfoOptions, callback:ApiError -> AccountInfo -> AccountInfo -> Void):XMLHttpRequest { })
	function getAccountInfo(callback:ApiError -> AccountInfo -> AccountInfo -> Void):XMLHttpRequest;
	@:overload(function(path:String, options:ClientFileReadOptions, callback:ClientFileReadCallback):XMLHttpRequest { })
	function readFile(path:String, callback:ClientFileReadCallback):XMLHttpRequest;
	@:overload(function(path:String, data:Dynamic, options:ClientFileWriteOptions, callback:ClientFileWriteCallback):XMLHttpRequest { })
	function writeFile(path:String, data:Dynamic, callback:ClientFileWriteCallback):XMLHttpRequest;
	@:overload(function(data:Dynamic, cursor:Http.UploadCursor, callback:ResumableUploadStepCallback):XMLHttpRequest { })
	function resumableUploadStep(data:Dynamic, callback:ResumableUploadStepCallback):XMLHttpRequest;
	@:overload(function(path:String, cursor:Http.UploadCursor, options:ClientFileWriteOptions, callback:ClientFileWriteCallback):XMLHttpRequest { })
	function resumableUploadFinish(path:String, cursor:Http.UploadCursor, callback:ClientFileWriteCallback):XMLHttpRequest;
	@:overload(function(path:String, options:File.StatOptions, callback:ApiError -> File.Stat -> Array<File.Stat> -> Void):XMLHttpRequest { })
	function stat(path:String, callback:ApiError -> File.Stat -> Array<File.Stat> -> Void):XMLHttpRequest;
	@:overload(function(path:String, options:ReadDirOptions, callback:ApiError -> Array<String> -> File.Stat -> Array<File.Stat> -> Void):XMLHttpRequest { })
	function readdir(path:String, callback:ApiError -> Array<String> -> File.Stat -> Array<File.Stat> -> Void):XMLHttpRequest;
	@:overload(function(path:String, options:File.StatOptions, callback:ApiError -> File.Stat -> Array<File.Stat> -> Void):Void { })
	function metadata(path:String, callback:ApiError -> File.Stat -> Array<File.Stat> -> Void):Void;
	@:overload(function(path:String, options:MakeURLOptions, callback:ApiError -> File.ShareUrl -> Void):XMLHttpRequest { })
	function makeUrl(path:String, callback:ApiError -> File.ShareUrl -> Void):XMLHttpRequest;
	@:overload(function(path:String, options:HistoryOptions, callback:ApiError -> Array<File.Stat> -> Void):XMLHttpRequest { })
	function history(path:String, callback:ApiError -> Array<File.Stat> -> Void):XMLHttpRequest;
	function revisions(path:String, options:HistoryOptions, callback:ApiError -> Array<File.Stat> -> Void):Void;
	function thumbnailUrl(path:String, ?options:ThumbnailUrlOptions):String;
	@:overload(function(path:String, options:ReadThumbnailOptions, callback:ReadThumbnailCallback):XMLHttpRequest { })
	function readThumbnail(path:String, callback:ReadThumbnailCallback):XMLHttpRequest;
	function revertFile(path:String, versionTag:String, callback:FileStatCallback):XMLHttpRequest;
	function restore(path:String, versionTag:String, callback:FileStatCallback):Void;
	@:overload(function(path:String, namePattern:String, options:FindByNameOptions, callback:ApiError -> Array<File.Stat> -> Void):XMLHttpRequest { })
	function findByName(path:String, namePattern:String, callback:ApiError -> Array<File.Stat> -> Void):XMLHttpRequest;
	function search(path:String, namePattern:String, options:FindByNameOptions, callback:ApiError -> Array<File.Stat> -> Void):Void;
	function makeCopyReference(path:String, callback:ApiError -> File.CopyReference -> Void):XMLHttpRequest;
	function copyRef(path:String, callback:ApiError -> File.CopyReference -> Void):XMLHttpRequest;
	@:overload(function(cursor:String, callback:ApiError -> Http.PulledChanges -> Void):XMLHttpRequest { })
	@:overload(function(cursor:Http.PulledChanges, callback:ApiError -> Http.PulledChanges -> Void):XMLHttpRequest { })
	function pullChanges(callback:ApiError -> Http.PulledChanges -> Void):XMLHttpRequest;
	@:overload(function(cursor:Http.PulledChanges, callback:ApiError -> Http.PulledChanges -> Void):Void { })
	function delta(cursor:String, callback:ApiError -> Http.PulledChanges -> Void):Void;
	@:overload(function(cursor:Http.PulledChanges, options:{ }, callback:ApiError -> Http.PollResult -> Void):Void { })
	function pollForChanges(cursor:String, options:{ }, callback:ApiError -> Http.PollResult -> Void):Void;
	function mkdir(path:String, callback:FileStatCallback):XMLHttpRequest;
	function remove(path:String, callback:FileStatCallback):XMLHttpRequest;
	function unlink(path:String, callback:FileStatCallback):Void;
	function delete(path:String, callback:FileStatCallback):Void;
	@:overload(function(from:File.CopyReference, toPath:String, callback:FileStatCallback):XMLHttpRequest { })
	function copy(from:String, toPath:String, callback:FileStatCallback):XMLHttpRequest;
	function move(fromPath:String, toPath:String, callback:FileStatCallback):XMLHttpRequest;
	@:overload(function(appKey:String, callback:ApiError -> Http.AppInfo -> Void):XMLHttpRequest { })
	function appInfo(callback:ApiError -> Http.AppInfo -> Void):XMLHttpRequest;
	@:overload(function(userId:Dynamic, appKey:Dynamic, callbackcallback:ApiError -> Bool -> Void):XMLHttpRequest { })
	function isAppDeveloper(userId:Dynamic, callbackcallback:ApiError -> Bool -> Void):XMLHttpRequest;
	@:overload(function(redirectUri:String, appKey:String, callback:ApiError -> Bool -> Void):XMLHttpRequest { })
	@:overload(function(redirectUri:String, appKey:Http.AppInfo, callback:ApiError -> Bool -> Void):XMLHttpRequest { })
	function hasOauthRedirectUri(redirectUri:String, callback:ApiError -> Bool -> Void):XMLHttpRequest;
	function reset():Client;
	function setCredentials(credentials:Credentials):Client;
	function appHash():String;
}
