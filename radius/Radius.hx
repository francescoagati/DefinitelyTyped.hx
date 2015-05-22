typedef DecodeArgs = {
	var packet : Buffer;
};
typedef DecodeArgsWithSecret = {
	>DecodeArgs,
	var secret : String;
};
typedef EncodeArgs = {
	var code : String;
	var secret : String;
	@:optional
	var identifier : Float;
	@:optional
	var attributes : Dynamic;
	@:optional
	var add_message_authenticator : Bool;
};
typedef EncodeResponseArgs = {
	var packet : RadiusPacket;
	var code : String;
	var secret : String;
	@:optional
	var attributes : Dynamic;
};
typedef VerifyResponseArgs = {
	var request : Buffer;
	var response : Buffer;
	var secret : String;
};
typedef RadiusPacket = {
	var code : String;
	var identifier : Float;
	var length : Float;
	var attributes : Dynamic;
	var raw_attributes : Array<Array<Dynamic>>;
};
extern class RadiusTopLevel {
	static function decode(args:DecodeArgsWithSecret):RadiusPacket;
	static function decode_without_secret(args:DecodeArgs):RadiusPacket;
	static function encode(args:EncodeArgs):Buffer;
	static function encode_response(args:EncodeResponseArgs):Buffer;
	static function verify_response(args:VerifyResponseArgs):Bool;
	static function add_dictionary(path:String):Void;
	static function unload_dictionaries():Void;
}
extern class RadiusTopLevel {
	static function decode(args:DecodeArgsWithSecret):RadiusPacket;
	static function decode_without_secret(args:DecodeArgs):RadiusPacket;
	static function encode(args:EncodeArgs):Buffer;
	static function encode_response(args:EncodeResponseArgs):Buffer;
	static function verify_response(args:VerifyResponseArgs):Bool;
	static function add_dictionary(path:String):Void;
	static function unload_dictionaries():Void;
}
