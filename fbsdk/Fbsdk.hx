typedef FBInitParams = {
	@:optional
	var appId : String;
	@:optional
	var authResponse : String;
	@:optional
	var cookie : Bool;
	@:optional
	var frictionlessRequests : Bool;
	@:optional
	var hideFlashCallback : haxe.Constraints.Function;
	@:optional
	var logging : Bool;
	@:optional
	var status : Bool;
	@:optional
	var version : String;
	@:optional
	var xfbml : Bool;
};
typedef FBUIParams = {
	var method : String;
};
typedef FBLoginOptions = {
	@:optional
	var auth_type : String;
	@:optional
	var scopes : String;
	@:optional
	var return_scopes : Bool;
	@:optional
	var enable_profile_selector : Bool;
	@:optional
	var profile_selector_ids : String;
};
typedef FBSDKEvents = {
	function subscribe(event:String, callback:Dynamic -> Dynamic):Void;
	function unsubscribe(event:String, callback:Dynamic -> Dynamic):Void;
};
typedef FBSDKXFBML = {
	@:overload(function(?ParseElement:HTMLElement):Void { })
	function parse(?ParseElement:Element):Void;
};
typedef FBSDKCanvasPrefetcher = {
	function addStaticResource(res:String):Void;
	function setCollectionMode(option:String):Void;
};
typedef FBSDKCanvasSize = {
	@:optional
	var height : Number;
	@:optional
	var width : Number;
};
typedef FBSDKCanvasDoneLoading = {
	var time_delta_ms : Number;
};
typedef FBSDKCanvas = {
	var Prefetcher : FBSDKCanvasPrefetcher;
	@:overload(function(element:HTMLElement):Void { })
	function hideFlashElement(element:Element):Void;
	@:overload(function(element:HTMLElement):Void { })
	function showFlashElement(element:Element):Void;
	function scrollTo(x:Number, y:Number):Void;
	@:overload(function(diffInterval:Number):Void { })
	@:overload(function(stopTimer:Bool, diffInterval:Number):Void { })
	function setAutoGrow(stopTimer:Bool):Void;
	function setSize(canvasSizeOptions:FBSDKCanvasSize):Void;
	function setUrlHandler(?handler:haxe.Constraints.Function):String;
	function setDoneLoading(?handler:haxe.Constraints.Function):FBSDKCanvasDoneLoading;
	function startTimer():Void;
	function stopTimer(?handler:Dynamic -> Dynamic):Void;
};
typedef FBSDK = {
	function init(fbInitObject:FBInitParams):Void;
	@:overload(function(path:String, params:Dynamic, callback:Dynamic -> Dynamic):Dynamic { })
	@:overload(function(path:String, method:String, params:Dynamic, callback:Dynamic -> Dynamic):Dynamic { })
	function api(path:String, method:String, callback:Dynamic -> Dynamic):Dynamic;
	function ui(params:FBUIParams, handler:Dynamic -> Dynamic):Void;
	function getLoginStatus(handler:haxe.Constraints.Function, ?force:Boolean):Void;
	function login(handler:Dynamic -> Dynamic, ?params:FBLoginOptions):Void;
	function logout(handler:Dynamic -> Dynamic):Void;
	function getAuthResponse():Dynamic;
	var Event : FBSDKEvents;
	var XFBML : FBSDKXFBML;
	var Canvas : FBSDKCanvas;
};
typedef Window = {
	function fbAsyncInit():Dynamic;
};
