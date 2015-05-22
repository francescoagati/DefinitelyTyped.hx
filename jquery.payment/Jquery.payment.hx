typedef JQuery = {
	function payment(validatorName:String):Dynamic;
};
typedef JQueryStatic = {
	var payment : JQueryPayment;
};
typedef JQueryPayment = {
	function validateCardNumber(cardNumber:String):Bool;
	@:overload(function(expiry:Dynamic):Bool { })
	function validateCardExpiry(year:String, month:String):Bool;
	function validateCardCVC(cvc:String, type:String):Bool;
	function cardType(cardNumber:String):String;
	function cardExpiryVal(monthYear:String):JQueryPaymentExpiryInfo;
};
typedef JQueryPaymentExpiryInfo = {
	var month : Float;
	var year : Float;
};
