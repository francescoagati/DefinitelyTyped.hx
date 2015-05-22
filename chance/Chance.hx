typedef ChanceStatic = {
	function Chance():Chance;
	@:overload(function(seed:Float):Chance { })
	@:overload(function(generator:Void -> Dynamic):Chance { })
	function new():Chance;
};
typedef Chance = {
	function bool(?opts:Options):Bool;
	function character(?opts:Options):String;
	function floating(?opts:Options):Float;
	function integer(?opts:Options):Float;
	function natural(?opts:Options):Float;
	function string(?opts:Options):String;
	function paragraph(?opts:Options):String;
	function sentence(?opts:Options):String;
	function syllable(?opts:Options):String;
	function word(?opts:Options):String;
	function age(?opts:Options):Float;
	@:overload(function(?opts:Options):haxe.extern.EitherType<Date, String> { })
	function birthday():Date;
	function cpf():String;
	function first(?opts:Options):String;
	function last(?opts:Options):String;
	function name(?opts:Options):String;
	function name_prefix(?opts:Options):String;
	function name_suffix(?opts:Options):String;
	function prefix(?opts:Options):String;
	function ssn(?opts:Options):String;
	function suffix(?opts:Options):String;
	function android_id():String;
	function apple_token():String;
	function bb_pin():String;
	function wp7_anid():String;
	function wp8_anid2():String;
	function color(?opts:Options):String;
	function domain(?opts:Options):String;
	function email(?opts:Options):String;
	function fbid():String;
	function google_analytics():String;
	function hashtag():String;
	function ip():String;
	function ipv6():String;
	function klout():String;
	function tld():String;
	function twitter():String;
	function url(?opts:Options):String;
	function address(?opts:Options):String;
	function altitude(?opts:Options):Float;
	function areacode():String;
	function city():String;
	function coordinates(?opts:Options):String;
	function country(?opts:Options):String;
	function depth(?opts:Options):Float;
	function geohash(?opts:Options):String;
	function latitude(?opts:Options):Float;
	function longitude(?opts:Options):Float;
	function phone(?opts:Options):String;
	function postal():String;
	function province(?opts:Options):String;
	function state(?opts:Options):String;
	function street(?opts:Options):String;
	function zip(?opts:Options):String;
	function ampm():String;
	@:overload(function(opts:DateOptions):haxe.extern.EitherType<Date, String> { })
	function date():Date;
	function hammertime():Float;
	function hour(?opts:Options):Float;
	function millisecond():Float;
	function minute():Float;
	@:overload(function(opts:Options):Month { })
	function month():String;
	function second():Float;
	function timestamp():Float;
	function year(?opts:Options):String;
	function cc(?opts:Options):String;
	@:overload(function(opts:Options):haxe.extern.EitherType<String, CreditCardType> { })
	function cc_type():String;
	function currency():Currency;
	function currency_pair():Array<Dynamic>;
	function dollar(?opts:Options):String;
	@:overload(function(opts:Options):haxe.extern.EitherType<String, CreditCardExpiration> { })
	function exp():String;
	function exp_month(?opts:Options):String;
	function exp_year(?opts:Options):String;
	function capitalize(str:String):String;
	function mixin(desc:MixinDescriptor):Dynamic;
	function pad(num:Float, width:Float, ?padChar:String):String;
	@:overload(function<T>(arr:Array<T>, count:Float):Array<T> { })
	function pick<T>(arr:Array<T>):T;
	var set : Setter;
	function shuffle<T>(arr:Array<T>):Array<T>;
	function d4():Float;
	function d6():Float;
	function d8():Float;
	function d10():Float;
	function d12():Float;
	function d20():Float;
	function d30():Float;
	function d100():Float;
	function guid():String;
	function hash(?opts:Options):String;
	function n<T>(generator:Void -> T, count:Float, ?opts:Options):Array<T>;
	function normal(?opts:Options):String;
	function radio(?opts:Options):String;
	@:overload(function(dice:String, ?opts:Options):haxe.extern.EitherType<Array<Float>, Float> { })
	function rpg(dice:String):Array<Float>;
	function tv(?opts:Options):String;
	function unique<T>(generator:Void -> T, count:Float, ?opts:Options):Array<T>;
	function weighted<T>(values:Array<T>, weights:Array<Float>):T;
	function cc_types():Array<CreditCardType>;
	function mersenne_twister(?seed:Float):Dynamic;
	function months():Array<Month>;
	function name_prefixes():Array<Name>;
	function provinces():Array<Name>;
	function states():Array<Name>;
	function street_suffix():Name;
	function street_suffixes():Array<Name>;
};
typedef Options = { };
typedef DateOptions = {
	@:optional
	var string : Bool;
	@:optional
	var american : Bool;
	@:optional
	var year : Float;
	@:optional
	var month : Float;
	@:optional
	var day : Float;
};
typedef Month = {
	var name : String;
	var short_name : String;
	var numeric : String;
};
typedef CreditCardType = {
	var name : String;
	var short_name : String;
	var prefix : String;
	var length : Float;
};
typedef Currency = {
	var code : String;
	var name : String;
};
typedef CreditCardExpiration = {
	var month : String;
	var year : String;
};
typedef MixinDescriptor = { };
typedef Setter = { };
typedef Name = {
	var name : String;
	var abbreviation : String;
};
