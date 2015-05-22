typedef Cookie = {
	var domain : String;
	var name : String;
	var storeId : String;
	var value : String;
	var session : Bool;
	var hostOnly : Bool;
	@:optional
	var expirationDate : Float;
	var path : String;
	var httpOnly : Bool;
	var secure : Bool;
};
typedef CookieStore = {
	var id : String;
	var tabIds : Array<Float>;
};
typedef GetAllDetails = {
	@:optional
	var domain : String;
	@:optional
	var name : String;
	@:optional
	var url : String;
	@:optional
	var storeId : String;
	@:optional
	var session : Bool;
	@:optional
	var path : String;
	@:optional
	var secure : Bool;
};
typedef SetDetails = {
	@:optional
	var domain : String;
	@:optional
	var name : String;
	var url : String;
	@:optional
	var storeId : String;
	@:optional
	var value : String;
	@:optional
	var expirationDate : Float;
	@:optional
	var path : String;
	@:optional
	var httpOnly : Bool;
	@:optional
	var secure : Bool;
};
typedef Details = {
	var name : String;
	var url : String;
	@:optional
	var storeId : String;
};
typedef CookieChangeInfo = {
	var cookie : Cookie;
	var removed : Bool;
	var cause : String;
};
typedef CookieChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:CookieChangeInfo -> Void):Void;
};
extern class Chrome.cookiesTopLevel {
	static function getAllCookieStores(callback:Array<CookieStore> -> Void):Void;
	static function getAll(details:GetAllDetails, callback:Array<Cookie> -> Void):Void;
	static function set(details:SetDetails, ?callback:?Cookie -> Void):Void;
	static function remove(details:Details, ?callback:Details -> Void):Void;
	static function get(details:Details, callback:?Cookie -> Void):Void;
	static var onChanged : CookieChangedEvent;
}
