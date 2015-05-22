typedef Objects = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef SocialIntegrations = {
	function externalAccountLink(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function externalAccountLogin(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function externalAccountUnlink(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function searchFacebookFriends(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef PushNotifications = {
	function notify(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function notifyTokens(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function queryChannels(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function resetBadge(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setBadge(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showChannels(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function subscribe(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function subscribeToken(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function unsubscribe(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function unsubscribeToken(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function updateSubscription(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Clients = {
	function geolocate(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef ACLs = {
	function addUser(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function checkUser(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function removeUser(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Users = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function login(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function logout(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function requestResetPassword(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function resendConfirmation(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function secureCreate(?parameters:Dictionary<CloudUsersSecureDialog>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function secureLogin(?parameters:Dictionary<CloudUsersSecureDialog>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function secureStatus():Bool;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showMe(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Messages = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function removeThread(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function reply(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showInbox(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showSent(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showThread(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showThreads(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Events = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function queryOccurrences(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function searchOccurrences(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showOccurrences(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Reviews = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Chats = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function getChatGroups(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function queryChatGroups(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef KeyValues = {
	function append(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function get(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function increment(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function set(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef GeoFences = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Checkins = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Friends = {
	function add(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function approve(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function requests(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Files = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef PushSchedules = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Likes = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Photos = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Statuses = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function delete(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef PhotoCollections = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showPhotos(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function showSubCollections(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Posts = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Emails = {
	function send(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
typedef Places = {
	function create(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function query(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function remove(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function search(?parameters:Dictionary<Dynamic>, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function show(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function update(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
extern class CloudTopLevel {
	static var accessToken : String;
	static var apiName : String;
	static var bubbleParent : Bool;
	static var debug : Bool;
	static var expiresIn : Float;
	static var ondatastream : haxe.extern.Rest<Dynamic> -> Dynamic;
	static var onsendstream : haxe.extern.Rest<Dynamic> -> Dynamic;
	static var sessionId : String;
	static var useSecure : Bool;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function getAccessToken():String;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function getDebug():Bool;
	static function getExpiresIn():Float;
	static function getOndatastream():haxe.extern.Rest<Dynamic> -> Dynamic;
	static function getOnsendstream():haxe.extern.Rest<Dynamic> -> Dynamic;
	static function getSessionId():String;
	static function getUseSecure():Bool;
	static function hasStoredSession():Bool;
	static function retrieveStoredSession():String;
	static function sendRequest(parameters:Dictionary<Dynamic>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setAccessToken(accessToken:String):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function setDebug(debug:Bool):Void;
	static function setOndatastream(ondatastream:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setOnsendstream(onsendstream:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setSessionId(sessionId:String):Void;
	static function setUseSecure(useSecure:Bool):Void;
}
typedef Blob = {
	>Ti.Proxy,
	var file : Ti.Filesystem.File;
	var height : Float;
	var length : Float;
	var mimeType : String;
	var nativePath : String;
	var size : Float;
	var text : String;
	var width : Float;
	function append(blob:Ti.Blob):Void;
	function getFile():Ti.Filesystem.File;
	function getHeight():Float;
	function getLength():Float;
	function getMimeType():String;
	function getNativePath():String;
	function getSize():Float;
	function getText():String;
	function getWidth():Float;
	function imageAsCropped(options:Dictionary<ImageAsCroppedDict>):Ti.Blob;
	function imageAsResized(width:Float, height:Float):Ti.Blob;
	function imageAsThumbnail(size:Float, ?borderSize:Float, ?cornerRadius:Float):Ti.Blob;
	function imageWithAlpha():Ti.Blob;
	function imageWithRoundedCorner(cornerSize:Float, ?borderSize:Float):Ti.Blob;
	function imageWithTransparentBorder(size:Float):Ti.Blob;
	function toString():String;
};
typedef Codec = {
	var BIG_ENDIAN : Float;
	var CHARSET_ASCII : String;
	var CHARSET_ISO_LATIN_1 : String;
	var CHARSET_UTF16 : String;
	var CHARSET_UTF16BE : String;
	var CHARSET_UTF16LE : String;
	var CHARSET_UTF8 : String;
	var LITTLE_ENDIAN : Float;
	var TYPE_BYTE : String;
	var TYPE_DOUBLE : String;
	var TYPE_FLOAT : String;
	var TYPE_INT : String;
	var TYPE_LONG : String;
	var TYPE_SHORT : String;
	function decodeNumber(options:DecodeNumberDict):Float;
	function decodeString(options:DecodeStringDict):String;
	function encodeNumber(options:EncodeNumberDict):Float;
	function encodeString(options:Dictionary<EncodeStringDict>):Float;
	function getNativeByteOrder():Float;
};
typedef Locale = {
	var currentCountry : String;
	var currentLanguage : String;
	var currentLocale : String;
	function formatTelephoneNumber(number:String):String;
	function getCurrencyCode(locale:String):String;
	function getCurrencySymbol(currencyCode:String):String;
	function getCurrentCountry():String;
	function getCurrentLanguage():String;
	function getCurrentLocale():String;
	function getLocaleCurrencySymbol(locale:String):String;
	function getString(key:String, ?hint:String):String;
};
