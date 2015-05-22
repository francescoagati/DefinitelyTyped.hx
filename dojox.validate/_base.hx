typedef _cardInfo = {
	var ax : String;
	var bl : String;
	var dc : String;
	var di : String;
	var ec : String;
	var er : String;
	var jcb : String;
	var mc : String;
	var vi : String;
};
typedef _isInRangeCache = { };
typedef Br = {
	function check(form:HTMLFormElement, profile:Dynamic):Void;
	function computeCnpjDv(value:String):Void;
	function computeCpfDv(value:String):Void;
	function evaluateConstraint(profile:Dynamic, constraint:Array<Dynamic>, fieldName:Dynamic, elem:Dynamic):Void;
	function getEmailAddressList(value:String, flags:Dynamic):Void;
	function isEmailAddress(value:String, flags:Dynamic):Void;
	function isEmailAddressList(value:String, flags:Dynamic):Void;
	function isInRange(value:String, flags:Dynamic):Void;
	function isIpAddress(value:String, flags:Dynamic):Void;
	function isNumberFormat(value:String, flags:Dynamic):Dynamic;
	function isPhoneNumber(value:String):Bool;
	function isSocialSecurityNumber(value:String):Void;
	function isState(value:String, flags:Dynamic):Void;
	function isText(value:String, flags:Dynamic):Void;
	function isUrl(value:String, flags:Dynamic):Void;
	function isValidCnpj(value:String):Void;
	function isValidCpf(value:String):Void;
	@:overload(function(value:Float, ccType:String):Void { })
	function isValidCreditCard(value:String, ccType:String):Void;
	@:overload(function(value:Float, ccType:String):Void { })
	function isValidCreditCardNumber(value:String, ccType:String):Void;
	@:overload(function(value:Float, ccType:String):Void { })
	function isValidCvv(value:String, ccType:String):Void;
	function isValidIsbn(value:String):Bool;
	function isValidLuhn(value:String):Void;
	function isZipCode(value:String):Void;
};
