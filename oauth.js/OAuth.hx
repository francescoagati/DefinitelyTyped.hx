typedef Message = {
	var action : String;
	var method : String;
	var parameters : ParameterListOrMap;
};
typedef Accessor = {
	var consumerKey : String;
	var consumerSecret : String;
	@:optional
	var accessorSecret : String;
	var token : String;
	var tokenSecret : String;
};
typedef Uri = {
	var source : String;
	var protocol : String;
	var authority : String;
	var userInfo : String;
	var user : String;
	var password : String;
	var host : String;
	var port : String;
	var relative : String;
	var path : String;
	var directory : String;
	var file : String;
	var query : String;
	var anchor : String;
};
typedef SignatureMethodStatic = {
	function sign(message:Message, accessor:Accessor):Void;
	function newMethod(name:String, accessor:Accessor):SignatureMethod;
	var REGISTERED : { };
	function registerMethodClass(names:Array<String>, classConstructor:{ function new():SignatureMethod; }):Void;
	function makeSubclass(getSignatureFunction:String -> String):{ function new():SignatureMethod; };
	function getBaseString(message:Message):String;
	function normalizeUrl(url:String):String;
	function parseUri(str:String):Uri;
	function normalizeParameters(parameters:ParameterListOrMap):String;
};
typedef SignatureMethod = {
	function getSignature(baseString:String):String;
	var key : String;
	function sign(message:Message):String;
	function initialize(name:String, accessor:Accessor):Void;
};
extern class OAuthTopLevel {
	static function percentEncode(s:String):String;
	static function percentEncode(s:Array<String>):String;
	static function decodePercent(s:String):String;
	static function getParameterList(parameters:ParameterListOrMap):ParameterList;
	static function getParameterList(parameters:String):ParameterList;
	static function getParameterMap(parameters:ParameterListOrMap):ParameterMap;
	static function getParameterMap(parameters:String):ParameterMap;
	static function getParameter(parameters:ParameterListOrMap, name:String):String;
	static function getParameter(parameters:String, name:String):String;
	static function formEncode(parameters:ParameterListOrMap):String;
	static function decodeForm(form:String):ParameterList;
	static function setParameter(message:Message, name:String, value:String):Void;
	static function setParameters(message:Message, parameters:ParameterListOrMap):Void;
	static function setParameters(message:Message, parameters:String):Void;
	static function completeRequest(message:Message, accessor:Accessor):Void;
	static function setTimestampAndNonce(message:Message):Void;
	static function addToURL(url:String, parameters:ParameterListOrMap):String;
	static function getAuthorizationHeader(realm:String, parameters:ParameterListOrMap):String;
	static function getAuthorizationHeader(realm:String, parameters:String):String;
	static function correctTimestampFromSrc(?parameterName:String):Void;
	static function correctTimestamp(timestamp:Float):Void;
	static var timeCorrectionMsec : Float;
	static function timestamp():Float;
	static function nonce(length:Float):String;
	static var SignatureMethod : SignatureMethodStatic;
}
