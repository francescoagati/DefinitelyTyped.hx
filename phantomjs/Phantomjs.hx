typedef Phantom = {
	var args : Array<String>;
	var cookies : Array<Cookie>;
	var cookiesEnabled : Bool;
	var libraryPath : String;
	var scriptName : String;
	var version : { var major : Float; var minor : Float; var patch : Float; };
	function addCookie(cookie:Cookie):Bool;
	function clearCookies():Void;
	function deleteCookie(cookieName:String):Bool;
	function exit(?returnValue:Dynamic):Bool;
	function injectJs(filename:String):Bool;
	var onError : String -> Array<String> -> Dynamic;
};
typedef System = {
	var pid : Float;
	var platform : String;
	var os : { var architecture : String; var name : String; var version : String; };
	var env : { };
	var args : Array<String>;
};
typedef WebPage = {
	var canGoBack : Bool;
	var canGoForward : Bool;
	var clipRect : ClipRect;
	var content : String;
	var cookies : Array<Cookie>;
	var customHeaders : { };
	var event : Dynamic;
	var focusedFrameName : String;
	var frameContent : String;
	var frameName : String;
	var framePlainText : String;
	var frameTitle : String;
	var frameUrl : String;
	var framesCount : Float;
	var framesName : Dynamic;
	var libraryPath : String;
	var navigationLocked : Bool;
	var offlineStoragePath : String;
	var offlineStorageQuota : Float;
	var ownsPages : Bool;
	var pages : Array<WebPage>;
	var pagesWindowName : String;
	var paperSize : PaperSize;
	var plainText : String;
	var scrollPosition : TopLeft;
	var settings : WebPageSettings;
	var title : String;
	var url : String;
	var viewportSize : Size;
	var windowName : String;
	var zoomFactor : Float;
	function addCookie(cookie:Cookie):Bool;
	function childFramesCount():Float;
	function childFramesName():String;
	function clearCookies():Void;
	function close():Void;
	function currentFrameName():String;
	function deleteCookie(cookieName:String):Bool;
	function evaluate(fn:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function evaluateAsync(fn:haxe.Constraints.Function):Void;
	function evaluateJavascript(str:String):Dynamic;
	function getPage(windowName:String):WebPage;
	function go(index:Float):Void;
	function goBack():Void;
	function goForward():Void;
	function includeJs(url:String, callback:haxe.Constraints.Function):Void;
	function injectJs(filename:String):Bool;
	@:overload(function(url:String, method:String, callback:String -> Dynamic):Void { })
	@:overload(function(url:String, method:String, data:Dynamic, callback:String -> Dynamic):Void { })
	function open(url:String, callback:String -> Dynamic):Void;
	function openUrl(url:String, httpConf:Dynamic, settings:Dynamic):Void;
	function release():Void;
	function reload():Void;
	function render(filename:String):Void;
	function renderBase64(format:String):String;
	@:overload(function(keyboardEventType:String, keyOrKeys:Dynamic, ?aNull:Dynamic, ?bNull:Dynamic, ?modifier:Float):Void { })
	function sendEvent(mouseEventType:String, ?mouseX:Float, ?mouseY:Float, ?button:String):Void;
	function setContent(content:String, url:String):Void;
	function stop():Void;
	function switchToFocusedFrame():Void;
	@:overload(function(framePosition:Float):Void { })
	function switchToFrame(frameName:String):Void;
	@:overload(function(framePosition:Float):Void { })
	function switchToChildFrame(frameName:String):Void;
	function switchToMainFrame():Void;
	function switchToParentFrame():Void;
	function uploadFile(selector:String, filename:String):Void;
	var onAlert : String -> Dynamic;
	var onCallback : haxe.Constraints.Function;
	var onClosing : WebPage -> Dynamic;
	var onConfirm : String -> Bool;
	var onConsoleMessage : String -> ?Float -> ?String -> Dynamic;
	var onError : String -> Array<String> -> Dynamic;
	var onFilePicker : String -> String;
	var onInitialized : Void -> Dynamic;
	var onLoadFinished : String -> Dynamic;
	var onLoadStarted : Void -> Dynamic;
	var onNavigationRequested : String -> String -> Bool -> Bool -> Dynamic;
	var onPageCreated : WebPage -> Dynamic;
	var onPrompt : String -> String -> String;
	var onResourceError : ResourceError -> Dynamic;
	var onResourceReceived : ResourceResponse -> Dynamic;
	var onResourceRequested : ResourceRequest -> NetworkRequest -> Dynamic;
	var onUrlChanged : String -> Dynamic;
	function closing(closingPage:WebPage):Void;
	function initialized():Void;
	function javaScriptAlertSent(msg:String):Void;
	function javaScriptConsoleMessageSent(msg:String, ?lineNum:Float, ?sourceId:String):Void;
	function loadFinished(status:String):Void;
	function loadStarted():Void;
	function navigationRequested(url:String, type:String, willNavigate:Bool, main:Bool):Void;
	function rawPageCreated(newPage:WebPage):Void;
	function resourceReceived(response:ResourceResponse):Void;
	function resourceRequested(requestData:ResourceRequest, networkRequest:NetworkRequest):Void;
	function urlChanged(targetUrl:String):Void;
};
typedef ResourceError = {
	var id : Float;
	var url : String;
	var errorCode : String;
	var errorString : String;
};
typedef ResourceResponse = {
	var id : Float;
	var url : String;
	var time : Date;
	var headers : { };
	var bodySize : Float;
	@:optional
	var contentType : String;
	@:optional
	var redirectURL : String;
	var stage : String;
	var status : Float;
	var statusText : String;
};
typedef ResourceRequest = {
	var id : Float;
	var method : String;
	var ur : String;
	var time : Date;
	var headers : { };
};
typedef NetworkRequest = {
	function abort():Void;
	function changeUrl(url:String):Void;
	function setHeader(name:String, value:String):Void;
};
typedef PaperSize = {
	@:optional
	var width : String;
	@:optional
	var height : String;
	var border : String;
	@:optional
	var format : String;
	@:optional
	var orientation : String;
};
typedef WebPageSettings = {
	var javascriptEnabled : Bool;
	var loadImages : Bool;
	var localToRemoteUrlAccessEnabled : Bool;
	var userAgent : String;
	var userName : String;
	var password : String;
	var XSSAuditingEnabled : Bool;
	var webSecurityEnabled : Bool;
	var resourceTimeout : Float;
};
typedef FileSystem = {
	var separator : String;
	var workingDirectory : String;
	function list(path:String):Array<String>;
	function absolute(path:String):String;
	function exists(path:String):Bool;
	function isDirectory(path:String):Bool;
	function isFile(path:String):Bool;
	function isAbsolute(path:String):Bool;
	function isExecutable(path:String):Bool;
	function isReadable(path:String):Bool;
	function isWritable(path:String):Bool;
	function isLink(path:String):Bool;
	function readLink(path:String):String;
	function changeWorkingDirectory(path:String):Void;
	function makeDirectory(path:String):Void;
	function makeTree(path:String):Void;
	function removeDirectory(path:String):Void;
	function removeTree(path:String):Void;
	function copyTree(source:String, destination:String):Void;
	@:overload(function(path:String, options:{ var mode : String; @:optional
	var charset : String; }):Stream { })
	function open(path:String, mode:String):Stream;
	function read(path:String):String;
	function write(path:String, content:String, mode:String):Void;
	function size(path:String):Float;
	function remove(path:String):Void;
	function copy(source:String, destination:String):Void;
	function move(source:String, destination:String):Void;
	function touch(path:String):Void;
};
typedef Stream = {
	function atEnd():Bool;
	function close():Void;
	function flush():Void;
	function read():String;
	function readLine():String;
	function seek(position:Float):Void;
	function write(data:String):Void;
	function writeLine(data:String):Void;
};
typedef WebServer = {
	var port : Float;
	@:overload(function(ipAddressPort:String, ?cb:WebServerRequest -> WebServerResponse -> Void):Bool { })
	function listen(port:Float, ?cb:WebServerRequest -> WebServerResponse -> Void):Bool;
	function close():Void;
};
typedef WebServerRequest = {
	var method : String;
	var url : String;
	var httpVersion : Float;
	var headers : { };
	var post : String;
	var postRaw : String;
};
typedef WebServerResponse = {
	var headers : { };
	function setHeader(name:String, value:String):Void;
	function header(name:String):String;
	var statusCode : Float;
	function setEncoding(encoding:String):Void;
	function write(data:String):Void;
	function writeHead(statusCode:Float, ?headers:{ }):Void;
	function close():Void;
	function closeGracefully():Void;
};
typedef TopLeft = {
	var top : Float;
	var left : Float;
};
typedef Size = {
	var width : Float;
	var height : Float;
};
typedef ClipRect = {
	>TopLeft,
	>Size,
};
typedef Cookie = {
	var name : String;
	var value : String;
	@:optional
	var domain : String;
};
extern class PhantomjsTopLevel {
	static function require(module:String):Dynamic;
	static var phantom : Phantom;
}
