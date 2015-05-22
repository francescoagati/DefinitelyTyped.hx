typedef SignOptions = {
	@:optional
	var algorithm : String;
	@:optional
	var expiresInMinutes : Float;
	@:optional
	var audience : String;
	@:optional
	var subject : String;
	@:optional
	var issuer : String;
};
typedef VerifyOptions = {
	@:optional
	var audience : String;
	@:optional
	var issuer : String;
};
typedef VerifyCallbak = { };
extern class JsonwebtokenTopLevel {
	static function sign(payload:String, secretOrPrivateKey:String):String;
	static function sign(payload:String, secretOrPrivateKey:Buffer):String;
	static function sign(payload:Buffer, secretOrPrivateKey:String):String;
	static function sign(payload:Buffer, secretOrPrivateKey:Buffer):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:String):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:Buffer):String;
	static function sign(payload:String, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:String, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function sign(payload:Buffer, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:Buffer, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function verify(token:String, secretOrPublicKey:String, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:Buffer, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:String, options:VerifyOptions, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:Buffer, options:VerifyOptions, callback:VerifyCallbak):Void;
	static function decode(token:String):Dynamic;
}
extern class JsonwebtokenTopLevel {
	static function sign(payload:String, secretOrPrivateKey:String):String;
	static function sign(payload:String, secretOrPrivateKey:Buffer):String;
	static function sign(payload:Buffer, secretOrPrivateKey:String):String;
	static function sign(payload:Buffer, secretOrPrivateKey:Buffer):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:String):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:Buffer):String;
	static function sign(payload:String, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:String, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function sign(payload:Buffer, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:Buffer, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:String, options:SignOptions):String;
	static function sign(payload:Dynamic, secretOrPrivateKey:Buffer, options:SignOptions):String;
	static function verify(token:String, secretOrPublicKey:String, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:Buffer, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:String, options:VerifyOptions, callback:VerifyCallbak):Void;
	static function verify(token:String, secretOrPublicKey:Buffer, options:VerifyOptions, callback:VerifyCallbak):Void;
	static function decode(token:String):Dynamic;
}
