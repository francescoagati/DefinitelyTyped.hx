extern class Cidr {
	function new(x:String, ?y:String):Void;
	function isInCIDR(x:Dynamic):Bool;
}
extern class Valve {
	function new(schema:IValveSchema, ?baton:Dynamic):Void;
	function setSchema(schema:IValveSchema):Valve;
	function addFinalValidator(func:Dynamic -> Error -> Dynamic -> Void -> Void):Valve;
	function addChainValidator(name:String, description:String, func:Dynamic -> Error -> Dynamic -> Void -> Void):Void;
	@:overload(function(obj:Dynamic, callback:Dynamic -> Dynamic -> Void):Void { })
	function check(obj:Dynamic, options:ICheckOptions, callback:Dynamic -> Dynamic -> Void):Void;
	function checkUpdate(existing:Dynamic, obj:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function help(schema:IValveSchema):Dynamic;
}
typedef ICheckOptions = {
	@:optional
	var strict : Bool;
};
typedef IValveSchema = { };
typedef IValveSchemaMember = { };
typedef IValveSchemaMemberArray = {
	>IValveSchemaMember,
};
typedef IChain = {
	>IValveSchemaMember,
	function getValidatorPos(name:String):Float;
	function hasValidator(name:String):Float;
	function getValidatorAtPos(pos:Float):IValidator;
	function isUnique():IChain;
	function toUnique():IChain;
	function notIPBlacklisted():IChain;
	function isCIDR():IChain;
	function isEmail():IChain;
	function isUrl():IChain;
	function isAddressPair():IChain;
	function isIP():IChain;
	function isIPv4():IChain;
	function isIPv6():IChain;
	function isHostnameOrIp():IChain;
	function isAllowedFQDNOrIP(?blacklist:Array<String>):IChain;
	function isHostname():IChain;
	function isAlpha():IChain;
	function isAlphanumeric():IChain;
	function isNumeric():IChain;
	function isInt():IChain;
	function isLowercase():IChain;
	function isUppercase():IChain;
	function isDecimal():IChain;
	function isFloat():IChain;
	function notNull():IChain;
	function isNull():IChain;
	function notEmpty():IChain;
	function equals(arg:Dynamic):IChain;
	function contains(arg:Dynamic):IChain;
	function notContains(arg:Dynamic):IChain;
	function notIn(values:Array<Dynamic>, ?caseSensitive:Bool):IChain;
	@:overload(function(pattern:String, ?modifiers:String):IChain { })
	function regex(pattern:js.RegExp):IChain;
	function is(pattern:String, ?modifiers:String):IChain;
	@:overload(function(pattern:String, ?modifiers:String):IChain { })
	function notRegex(pattern:js.RegExp):IChain;
	function not(pattern:String, modifiers:String):IChain;
	function len(min:Float, ?max:Float):IChain;
	function numItems(min:Float, max:Float):IChain;
	function toFloat():IChain;
	function toInt():IChain;
	function toBoolean():IChain;
	function toBooleanStrict():IChain;
	function entityDecode():IChain;
	function entityEncode():IChain;
	function trim(?chars:String):IChain;
	function ltrim(?chars:String):IChain;
	function rtrim(chars:String):IChain;
	function ifNull(replace:String):IChain;
	function xss(?is_image:Bool):IChain;
	function enumerated(map:Dynamic):IChain;
	function inArray(array:Array<Dynamic>):IChain;
	function isString():IChain;
	function isBoolean():IChain;
	function range(min:Dynamic, max:Dynamic):IChain;
	function optional():IChain;
	function isPort():IChain;
	function isV1UUID():IChain;
	function immutable():IChain;
	function updateRequired():IChain;
	function isArray(chain:IChain):IChain;
	function isHash(keyChain:IChain, valueChain:IChain):IChain;
	function rename(target:String):IChain;
	function custom(name:String):IChain;
};
extern class Swiz {
	function new(defs:Array<struct.IObj>, ?options:ISwizOptions):Void;
	function buildObject(obj:Dynamic, callback:Dynamic -> Dynamic -> Void):Void;
	function buildObjectSync(obj:Dynamic):Dynamic;
	function serializeJson(obj:Dynamic):String;
	function serializeXml(obj:Dynamic):String;
	function deserializeXml(xml:String):Dynamic;
	function serialize(mode:SERIALIZATION, version:Float, obj:ISerializable, callback:Dynamic -> String -> Void):Void;
	function serializeForPagination(mode:SERIALIZATION, array:Array<Dynamic>, metadata:Dynamic, callback:Dynamic -> String -> Void):Void;
	function deserialize(mode:SERIALIZATION, version:Float, raw:String, callback:Dynamic -> Dynamic -> Void):Void;
	function getFieldDefinition(stype:String, name:String):struct.IField;
}
typedef ISerializable = {
	function getSerializerType():String;
};
typedef ISwizOptions = {
	@:optional
	var stripNulls : Bool;
	@:optional
	var stripSerializerType : Bool;
	@:optional
	var for : String;
};
typedef IValidator = {
	var name : String;
	function func(value:Dynamic, baton:Dynamic, callback:haxe.Constraints.Function):Void;
	var help : String;
};
extern class SwizTopLevel {
	static function Chain():IChain;
	static function chain():IChain;
	static function defToValve(def:Array<struct.IObj>):Array<IValveSchema>;
	static function stripSerializerTypes(obj:Dynamic):Dynamic;
}
extern class SwizTopLevel {
	static function Chain():IChain;
	static function chain():IChain;
	static function defToValve(def:Array<struct.IObj>):Array<IValveSchema>;
	static function stripSerializerTypes(obj:Dynamic):Dynamic;
}
