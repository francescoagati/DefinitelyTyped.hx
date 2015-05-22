typedef UDP = {
	>Ti.IOStream,
	var data : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var port : Float;
	var started : haxe.extern.Rest<Dynamic> -> Dynamic;
	function getData():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getError():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getPort():Float;
	function getStarted():haxe.extern.Rest<Dynamic> -> Dynamic;
	function sendBytes(port:Float, host:String, data:Array<Number>):Void;
	function sendString(port:Float, host:String, data:String):Void;
	function setData(data:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setError(error:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setPort(port:Float):Void;
	function setStarted(started:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function start(port:Float):Void;
	function stop():Void;
};
typedef TCP = {
	>Ti.IOStream,
	var accepted : haxe.extern.Rest<Dynamic> -> Dynamic;
	var connected : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var host : String;
	var listenQueueSize : Float;
	var port : Float;
	var state : Float;
	var timeout : Float;
	function accept(options:AcceptDict):Void;
	function connect():Void;
	function getAccepted():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getConnected():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getError():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getHost():String;
	function getListenQueueSize():Float;
	function getPort():Float;
	function getState():Float;
	function getTimeout():Float;
	function listen():Void;
	function setAccepted(accepted:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setConnected(connected:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setError(error:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setHost(host:String):Void;
	function setListenQueueSize(listenQueueSize:Float):Void;
	function setPort(port:Float):Void;
	function setTimeout(timeout:Float):Void;
};
extern class SocketTopLevel {
	static var CLOSED : Float;
	static var CONNECTED : Float;
	static var ERROR : Float;
	static var INITIALIZED : Float;
	static var LISTENING : Float;
	static var apiName : String;
	static var bubbleParent : Bool;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createTCP(?params:Dictionary<Ti.Network.Socket.TCP>):Ti.Network.Socket.TCP;
	static function createUDP(?params:Dictionary<Ti.Network.Socket.UDP>):Ti.Network.Socket.UDP;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
typedef BonjourService = {
	>Ti.Proxy,
	var domain : String;
	var isLocal : Bool;
	var name : String;
	var socket : Dynamic;
	var type : String;
	function getDomain():String;
	function getIsLocal():Bool;
	function getName():String;
	function getSocket():Dynamic;
	function getType():String;
	function publish(socket:Dynamic):Void;
	function resolve(timeout:Float):Void;
	function setDomain(domain:String):Void;
	function setIsLocal(isLocal:Bool):Void;
	function setName(name:String):Void;
	function setSocket(socket:Dynamic):Void;
	function setType(type:String):Void;
	function stop():Void;
};
typedef HTTPClient = {
	>Ti.Proxy,
	var DONE : Float;
	var HEADERS_RECEIVED : Float;
	var LOADING : Float;
	var OPENED : Float;
	var UNSENT : Float;
	var allResponseHeaders : String;
	var autoEncodeUrl : Bool;
	var autoRedirect : Bool;
	var cache : Bool;
	var connected : Bool;
	var connectionType : String;
	var domain : String;
	var enableKeepAlive : Bool;
	var file : String;
	var location : String;
	var ondatastream : haxe.extern.Rest<Dynamic> -> Dynamic;
	var onerror : haxe.extern.Rest<Dynamic> -> Dynamic;
	var onload : haxe.extern.Rest<Dynamic> -> Dynamic;
	var onreadystatechange : haxe.extern.Rest<Dynamic> -> Dynamic;
	var onsendstream : haxe.extern.Rest<Dynamic> -> Dynamic;
	var password : String;
	var readyState : Float;
	var responseData : Ti.Blob;
	var responseText : String;
	var responseXML : Ti.XML.Document;
	var securityManager : SecurityManagerProtocol;
	var status : Float;
	var statusText : String;
	var timeout : Float;
	var tlsVersion : Float;
	var username : String;
	var validatesSecureCertificate : Bool;
	var withCredentials : Bool;
	function abort():Void;
	function addAuthFactory(scheme:String, factory:Dynamic):Void;
	function addKeyManager(X509KeyManager:Dynamic):Void;
	function addTrustManager(X509TrustManager:Dynamic):Void;
	function clearCookies(host:String):Void;
	function getAllResponseHeaders():String;
	function getAutoEncodeUrl():Bool;
	function getAutoRedirect():Bool;
	function getCache():Bool;
	function getConnected():Bool;
	function getConnectionType():String;
	function getDomain():String;
	function getEnableKeepAlive():Bool;
	function getFile():String;
	function getLocation():String;
	function getOndatastream():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getOnerror():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getOnload():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getOnreadystatechange():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getOnsendstream():haxe.extern.Rest<Dynamic> -> Dynamic;
	function getPassword():String;
	function getReadyState():Float;
	function getResponseData():Ti.Blob;
	function getResponseHeader(name:String):String;
	function getResponseText():String;
	function getResponseXML():Ti.XML.Document;
	function getSecurityManager():SecurityManagerProtocol;
	function getStatus():Float;
	function getStatusText():String;
	function getTimeout():Float;
	function getTlsVersion():Float;
	function getUsername():String;
	function getValidatesSecureCertificate():Bool;
	function getWithCredentials():Bool;
	function open(method:String, url:String, ?async:Bool):Void;
	@:overload(function(?data:String):Void { })
	@:overload(function(?data:Ti.Filesystem.File):Void { })
	@:overload(function(?data:Ti.Blob):Void { })
	function send(?data:Dynamic):Void;
	function setAutoEncodeUrl(autoEncodeUrl:Bool):Void;
	function setAutoRedirect(autoRedirect:Bool):Void;
	function setCache(cache:Bool):Void;
	function setDomain(domain:String):Void;
	function setEnableKeepAlive(enableKeepAlive:Bool):Void;
	function setFile(file:String):Void;
	function setOndatastream(ondatastream:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setOnerror(onerror:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setOnload(onload:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setOnreadystatechange(onreadystatechange:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setOnsendstream(onsendstream:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setPassword(password:String):Void;
	function setRequestHeader(name:String, value:String):Void;
	function setTimeout(timeout:Float):Void;
	function setTlsVersion(tlsVersion:Float):Void;
	function setUsername(username:String):Void;
	function setValidatesSecureCertificate(validatesSecureCertificate:Bool):Void;
	function setWithCredentials(withCredentials:Bool):Void;
};
typedef BonjourBrowser = {
	>Ti.Proxy,
	var domain : String;
	var isSearching : Bool;
	var serviceType : String;
	function getDomain():String;
	function getIsSearching():Bool;
	function getServiceType():String;
	function search():Void;
	function setDomain(domain:String):Void;
	function setIsSearching(isSearching:Bool):Void;
	function setServiceType(serviceType:String):Void;
	function stopSearch():Void;
};
typedef Cookie = {
	>Ti.Proxy,
	var comment : String;
	var domain : String;
	var expiryDate : String;
	var httponly : Bool;
	var name : String;
	var originalUrl : String;
	var path : String;
	var secure : Bool;
	var value : String;
	var version : Float;
	function getComment():String;
	function getDomain():String;
	function getExpiryDate():String;
	function getHttponly():Bool;
	function getName():String;
	function getOriginalUrl():String;
	function getPath():String;
	function getSecure():Bool;
	function getValue():String;
	function getVersion():Float;
	function isValid():Bool;
	function setComment(comment:String):Void;
	function setDomain(domain:String):Void;
	function setExpiryDate(expiryDate:String):Void;
	function setHttponly(httponly:Bool):Void;
	function setOriginalUrl(originalUrl:String):Void;
	function setPath(path:String):Void;
	function setSecure(secure:Bool):Void;
	function setValue(value:String):Void;
	function setVersion(version:Float):Void;
};
typedef Yahoo = {
	function yql(yql:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Gesture = {
	var landscape : Bool;
	var orientation : Float;
	var portrait : Bool;
	function getLandscape():Bool;
	function getOrientation():Float;
	function getPortrait():Bool;
	function isFaceDown():Bool;
	function isFaceUp():Bool;
	function isLandscape():Bool;
	function isPortrait():Bool;
};
typedef Analytics = {
	var lastEvent : String;
	function addEvent(type:String, name:String, ?data:Dynamic):Void;
	function featureEvent(name:String, ?data:Dynamic):Void;
	function getLastEvent():String;
	function navEvent(from:String, to:String, ?name:String, ?data:Dynamic):Void;
	function settingsEvent(name:String, ?data:Dynamic):Void;
	function timedEvent(name:String, start:Date, stop:Date, duration:Float, ?data:Dynamic):Void;
	function userEvent(name:String, ?data:Dynamic):Void;
};
