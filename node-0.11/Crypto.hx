typedef CredentialDetails = {
	var pfx : String;
	var key : String;
	var passphrase : String;
	var cert : String;
	var ca : Dynamic;
	var crl : Dynamic;
	var ciphers : String;
};
typedef Credentials = {
	@:optional
	var context : Dynamic;
};
typedef Hash = {
	function update(data:Dynamic, ?input_encoding:String):Hash;
	@:overload(function(encoding:String):Dynamic { })
	@:overload(function():Buffer { })
	function digest(encoding:Buffer):Buffer;
};
typedef Hmac = {
	function update(data:Dynamic, ?input_encoding:String):Hmac;
	@:overload(function(encoding:String):Dynamic { })
	@:overload(function():Buffer { })
	function digest(encoding:Buffer):Buffer;
};
typedef Cipher = {
	function update(data:Dynamic, ?input_encoding:String, ?output_encoding:String):String;
	function final(?output_encoding:String):String;
	function setAutoPadding(auto_padding:Bool):Void;
};
typedef Decipher = {
	function update(data:Dynamic, ?input_encoding:String, ?output_encoding:String):Void;
	function final(?output_encoding:String):String;
	function setAutoPadding(auto_padding:Bool):Void;
};
typedef Signer = {
	function update(data:Dynamic):Void;
	function sign(private_key:String, output_format:String):String;
};
typedef Verify = {
	function update(data:Dynamic):Void;
	function verify(object:String, signature:String, ?signature_format:String):Bool;
};
typedef DiffieHellman = {
	function generateKeys(?encoding:String):String;
	function computeSecret(other_public_key:String, ?input_encoding:String, ?output_encoding:String):String;
	function getPrime(?encoding:String):String;
	function getGenerator(encoding:String):String;
	function getPublicKey(?encoding:String):String;
	function getPrivateKey(?encoding:String):String;
	function setPublicKey(public_key:String, ?encoding:String):Void;
	function setPrivateKey(public_key:String, ?encoding:String):Void;
};
extern class CryptoTopLevel {
	static function createCredentials(details:CredentialDetails):Credentials;
	static function createHash(algorithm:String):Hash;
	static function createHmac(algorithm:String, key:String):Hmac;
	static function createHmac(algorithm:String, key:Buffer):Hmac;
	static function createCipher(algorithm:String, password:Dynamic):Cipher;
	static function createCipheriv(algorithm:String, key:Dynamic, iv:Dynamic):Cipher;
	static function createDecipher(algorithm:String, password:Dynamic):Decipher;
	static function createDecipheriv(algorithm:String, key:Dynamic, iv:Dynamic):Decipher;
	static function createSign(algorithm:String):Signer;
	static function createVerify(algorith:String):Verify;
	static function createDiffieHellman(prime_length:Float):DiffieHellman;
	static function createDiffieHellman(prime:Float, ?encoding:String):DiffieHellman;
	static function getDiffieHellman(group_name:String):DiffieHellman;
	static function pbkdf2(password:String, salt:String, iterations:Float, keylen:Float, callback:Error -> Buffer -> Dynamic):Void;
	static function pbkdf2Sync(password:String, salt:String, iterations:Float, keylen:Float):Buffer;
	static function randomBytes(size:Float):Buffer;
	static function randomBytes(size:Float, callback:Error -> Buffer -> Void):Void;
	static function pseudoRandomBytes(size:Float):Buffer;
	static function pseudoRandomBytes(size:Float, callback:Error -> Buffer -> Void):Void;
}
