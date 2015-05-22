typedef ValidationError = {
	var msg : String;
	var param : String;
};
typedef ValidatorFunction = { };
typedef SanitizerFunction = { };
typedef Dictionary<T> = { };
typedef RequestValidation = {
	var assert : ValidatorFunction;
	var check : ValidatorFunction;
	var checkBody : ValidatorFunction;
	var checkFiles : ValidatorFunction;
	var checkHeader : ValidatorFunction;
	var checkParams : ValidatorFunction;
	var checkQuery : ValidatorFunction;
	var validate : ValidatorFunction;
	var filter : SanitizerFunction;
	var sanitize : SanitizerFunction;
	function onValidationError(errback:String -> Void):Void;
	function validationErrors(?mapped:Bool):haxe.extern.EitherType<Dictionary<Dynamic>, Array<Dynamic>>;
};
typedef Validator = {
	function is():Validator;
	function not():Validator;
	function isEmail():Validator;
	function isUrl():Validator;
	function isIP():Validator;
	function isIPv4():Validator;
	function isIPv6():Validator;
	function isAlpha():Validator;
	function isAlphanumeric():Validator;
	function isNumeric():Validator;
	function isHexadecimal():Validator;
	function isHexColor():Validator;
	function isInt():Validator;
	function isLowercase():Validator;
	function isUppercase():Validator;
	function isDecimal():Validator;
	function isFloat():Validator;
	function notNull():Validator;
	function isNull():Validator;
	function notEmpty():Validator;
	function equals(equals:Dynamic):Validator;
	function contains(str:String):Validator;
	function notContains(str:String):Validator;
	function regex(pattern:String, modifiers:String):Validator;
	function notRegex(pattern:String, modifiers:String):Validator;
	function len(min:Float, ?max:Float):Validator;
	function isUUID(version:Float):Validator;
	function isUUIDv3():Validator;
	function isUUIDv4():Validator;
	function isUUIDv5():Validator;
	function isDate():Validator;
	function isAfter(date:Date):Validator;
	function isBefore(date:Date):Validator;
	@:overload(function(options:Array<String>):Validator { })
	function isIn(options:String):Validator;
	@:overload(function(options:Array<String>):Validator { })
	function notIn(options:String):Validator;
	function max(val:String):Validator;
	function min(val:String):Validator;
	function isCreditCard():Validator;
};
typedef Sanitizer = {
	function trim(chars:haxe.extern.Rest<String>):Sanitizer;
	function ltrim(chars:haxe.extern.Rest<String>):Sanitizer;
	function rtrim(chars:haxe.extern.Rest<String>):Sanitizer;
	function ifNull(replace:Dynamic):Sanitizer;
	function toFloat():Sanitizer;
	function toInt():Sanitizer;
	function toBoolean():Sanitizer;
	function toBooleanStrict():Sanitizer;
	function entityDecode():Sanitizer;
	function entityEncode():Sanitizer;
	function escape():Sanitizer;
	@:overload(function(fromImages:Bool):Sanitizer { })
	function xss():Sanitizer;
};
