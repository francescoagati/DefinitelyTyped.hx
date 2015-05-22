typedef StripeStatic = {
	function setPublishableKey(key:String):Void;
	function validateCardNumber(cardNumber:String):Bool;
	function validateExpiry(month:String, year:String):Bool;
	function validateCVC(cardCVC:String):Bool;
	function cardType(cardNumber:String):String;
	function getToken(token:String, responseHandler:Float -> StripeTokenResponse -> Void):Void;
	var card : StripeCardData;
};
typedef StripeTokenData = {
	var number : String;
	var exp_month : Float;
	var exp_year : Float;
	@:optional
	var cvc : String;
	@:optional
	var name : String;
	@:optional
	var address_line1 : String;
	@:optional
	var address_line2 : String;
	@:optional
	var address_city : String;
	@:optional
	var address_state : String;
	@:optional
	var address_zip : String;
	@:optional
	var address_country : String;
};
typedef StripeTokenResponse = {
	var id : String;
	var card : StripeCardData;
	var created : Float;
	var currency : String;
	var livemode : Bool;
	var object : String;
	var used : Bool;
	var error : StripeError;
};
typedef StripeError = {
	var message : String;
};
typedef StripeCardData = {
	var object : String;
	var last4 : String;
	var type : String;
	var exp_month : Float;
	var exp_year : Float;
	var fingerprint : String;
	@:optional
	var country : String;
	@:optional
	var name : String;
	@:optional
	var address_line1 : String;
	@:optional
	var address_line2 : String;
	@:optional
	var address_city : String;
	@:optional
	var address_state : String;
	@:optional
	var address_zip : String;
	@:optional
	var address_country : String;
	function createToken(data:StripeTokenData, responseHandler:Float -> StripeTokenResponse -> Void):Void;
};
extern class StripeTopLevel {
	static var Stripe : StripeStatic;
}
