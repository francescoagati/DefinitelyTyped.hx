typedef Ca = {
	function postalCode():String;
	function province():String;
};
typedef Us = {
	function state(flags:Dynamic):String;
};
typedef Us = {
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
