typedef IURLoptions = {
	@:optional
	var protocols : Array<String>;
	@:optional
	var require_tld : Bool;
	@:optional
	var require_protocol : Bool;
	@:optional
	var allow_underscores : Bool;
};
typedef IFQDNoptions = {
	@:optional
	var require_tld : Bool;
	@:optional
	var allow_underscores : Bool;
};
typedef IEmailoptions = {
	@:optional
	var lowercase : Bool;
};
typedef IExtendCallback = { };
typedef IExtendFunc = { };
typedef IValidatorStatic = {
	function extend(name:String, fn:IExtendCallback):IExtendFunc;
	function equals(str:String, comparison:Dynamic):Bool;
	function contains(str:String, elem:Dynamic):Bool;
	function matches(str:String, pattern:Dynamic, ?modifiers:String):Bool;
	function isEmail(str:String):Bool;
	function isURL(str:String, ?options:IURLoptions):Bool;
	function isFQDN(str:String, ?options:IFQDNoptions):Bool;
	function isIP(str:String, ?version:Float):Bool;
	function isAlpha(str:String):Bool;
	function isNumeric(str:String):Bool;
	function isAlphanumeric(str:String):Bool;
	function isBase64(str:String):Bool;
	function isHexadecimal(str:String):Bool;
	function isHexColor(str:String):Bool;
	function isLowercase(str:String):Bool;
	function isUppercase(str:String):Bool;
	function isInt(str:String):Bool;
	function isFloat(str:String):Bool;
	function isDivisibleBy(str:String, number:Float):Bool;
	function isNull(str:String):Bool;
	function isLength(str:String, min:Float, ?max:Float):Bool;
	function isByteLength(str:String, min:Float, ?max:Float):Bool;
	function isUUID(str:String, ?version:Float):Bool;
	function isDate(str:String):Bool;
	function isAfter(str:String, ?date:Date):Bool;
	function isBefore(str:String, ?date:Date):Bool;
	function isIn(str:String, values:Array<Dynamic>):Bool;
	function isCreditCard(str:String):Bool;
	function isISBN(str:String, ?version:Float):Bool;
	function isJSON(str:String):Bool;
	function isMultibyte(str:String):Bool;
	function isAscii(str:String):Bool;
	function isFullWidth(str:String):Bool;
	function isHalfWidth(str:String):Bool;
	function isVariableWidth(str:String):Bool;
	function isSurrogatePair(str:String):Bool;
	function isMongoId(str:String):Bool;
	function toString(input:Dynamic):String;
	function toDate(input:Dynamic):Dynamic;
	function toFloat(input:Dynamic):Float;
	function toInt(input:Dynamic, ?radix:Float):Float;
	function toBoolean(input:Dynamic, ?strict:Bool):Bool;
	function trim(input:Dynamic, ?chars:String):String;
	function ltrim(input:Dynamic, ?chars:String):String;
	function rtrim(input:Dynamic, ?chars:String):String;
	function escape(input:String):String;
	function stripLow(input:String, ?keep_new_lines:Bool):String;
	function whitelist(input:String, chars:String):String;
	function blacklist(input:String, chars:String):String;
	function normalizeEmail(email:String, ?options:IEmailoptions):String;
};
extern class ValidatorTopLevel {
	static var validator : IValidatorStatic;
}
extern class ValidatorTopLevel {
	static var validator : IValidatorStatic;
}
