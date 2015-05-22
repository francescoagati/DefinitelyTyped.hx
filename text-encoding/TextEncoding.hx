typedef TextDecoderOptions = {
	@:optional
	var fatal : Bool;
	@:optional
	var ignoreBOM : Bool;
};
typedef TextDecodeOptions = {
	@:optional
	var stream : Bool;
};
typedef TextEncoderOptions = {
	@:optional
	var NONSTANDARD_allowLegacyEncoding : Bool;
};
typedef TextDecoder = {
	var encoding : String;
	var fatal : Bool;
	var ignoreBOM : Bool;
	function decode(?input:ArrayBufferView, ?options:TextDecodeOptions):String;
};
typedef TextEncoder = {
	var encoding : String;
	function encode(?input:String, ?options:TextEncodeOptions):Uint8Array;
};
typedef TextEncodeOptions = {
	@:optional
	var stream : Bool;
};
