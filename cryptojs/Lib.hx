typedef Base = {
	function extend(overrides:Dynamic):Dynamic;
	function init(args:haxe.extern.Rest<Dynamic>):Void;
	function create(args:haxe.extern.Rest<Dynamic>):Base;
	function mixIn(properties:Dynamic):Void;
	function clone():Base;
};
typedef WordArray = {
	>Base,
	var words : Array<Float>;
	var sigBytes : Float;
	@:overload(function(typedArray:ArrayBuffer):Void { })
	@:overload(function(typedArray:Int8Array):Void { })
	function init(?words:Array<Float>, ?sigBytes:Float):Void;
	@:overload(function(typedArray:ArrayBuffer):WordArray { })
	@:overload(function(typedArray:Int8Array):WordArray { })
	function create(?words:Array<Float>, ?sigBytes:Float):WordArray;
	function toString(?encoder:enc.IEncoder):String;
	function concat(wordArray:WordArray):WordArray;
	function clamp():Void;
	function clone():WordArray;
	function random(nBytes:Float):WordArray;
};
typedef BufferedBlockAlgorithm = {
	>Base,
	function reset():Void;
	function clone():BufferedBlockAlgorithm;
};
typedef IHasher<C> = {
	>BufferedBlockAlgorithm,
	var cfg : C;
	function init(?cfg:C):Void;
	function create(?cfg:C):IHasher<C>;
	@:overload(function(messageUpdate:String):Hasher { })
	function update(messageUpdate:WordArray):Hasher;
	@:overload(function(?messageUpdate:String):WordArray { })
	function finalize(?messageUpdate:WordArray):WordArray;
	var blockSize : Float;
	function _createHelper(hasher:Hasher):IHasherHelper<C>;
	function _createHmacHelper(hasher:Hasher):IHasherHmacHelper;
	function clone():IHasher<C>;
};
typedef Hasher = {
	>IHasher<Dynamic>,
};
typedef IHasherHelper<C> = { };
typedef HasherHelper = {
	>IHasherHelper<Dynamic>,
};
typedef IHasherHmacHelper = { };
typedef ICipher<C> = {
	>BufferedBlockAlgorithm,
	var cfg : C;
	function createEncryptor(key:WordArray, ?cfg:C):ICipher<C>;
	function createDecryptor(key:WordArray, ?cfg:C):ICipher<C>;
	function create(?xformMode:Float, ?key:WordArray, ?cfg:C):ICipher<C>;
	function init(?xformMode:Float, ?key:WordArray, ?cfg:C):Void;
	@:overload(function(dataUpdate:String):WordArray { })
	function process(dataUpdate:WordArray):WordArray;
	@:overload(function(?dataUpdate:String):WordArray { })
	function finalize(?dataUpdate:WordArray):WordArray;
	var keySize : Float;
	var ivSize : Float;
	function _createHelper(cipher:Cipher):ICipherHelper<C>;
	function clone():ICipher<C>;
};
typedef Cipher = {
	>ICipher<Dynamic>,
};
typedef IStreamCipher<C> = {
	>ICipher<C>,
	@:optional
	var drop : Float;
	function createEncryptor(key:WordArray, ?cfg:C):IStreamCipher<C>;
	function createDecryptor(key:WordArray, ?cfg:C):IStreamCipher<C>;
	function create(?xformMode:Float, ?key:WordArray, ?cfg:C):IStreamCipher<C>;
	var blockSize : Float;
};
typedef StreamCipher = {
	>IStreamCipher<Dynamic>,
};
typedef BlockCipherMode = {
	>Base,
	function createEncryptor(cipher:Cipher, iv:Array<Float>):mode.IBlockCipherEncryptor;
	function createDecryptor(cipher:Cipher, iv:Array<Float>):mode.IBlockCipherDecryptor;
	function init(?cipher:Cipher, ?iv:Array<Float>):Void;
	function create(?cipher:Cipher, ?iv:Array<Float>):BlockCipherMode;
};
typedef BlockCipher = {
	>IStreamCipher<IBlockCipherCfg>,
};
typedef IBlockCipherCfg = {
	@:optional
	var mode : mode.IBlockCipherModeImpl;
	@:optional
	var padding : pad.IPaddingImpl;
};
typedef CipherParamsData = {
	@:optional
	var ciphertext : lib.WordArray;
	@:optional
	var key : lib.WordArray;
	@:optional
	var iv : lib.WordArray;
	@:optional
	var salt : lib.WordArray;
	@:optional
	var algorithm : Cipher;
	@:optional
	var mode : mode.IBlockCipherModeImpl;
	@:optional
	var padding : pad.IPaddingImpl;
	@:optional
	var blockSize : Float;
	@:optional
	var formatter : format.IFormatter;
};
typedef CipherParams = {
	>Base,
	>CipherParamsData,
	function init(?cipherParams:CipherParamsData):Void;
	function create(?cipherParams:CipherParamsData):CipherParams;
	function toString(?formatter:format.IFormatter):String;
};
typedef ISerializableCipher<C:(ISerializableCipherCfg)> = {
	>Base,
	var cfg : C;
	@:overload(function(cipher:Cipher, message:String, key:WordArray, ?cfg:C):CipherParams { })
	function encrypt(cipher:Cipher, message:WordArray, key:WordArray, ?cfg:C):CipherParams;
	@:overload(function(cipher:Cipher, ciphertext:String, key:WordArray, ?cfg:C):WordArray { })
	function decrypt(cipher:Cipher, ciphertext:CipherParamsData, key:WordArray, ?cfg:C):WordArray;
};
typedef SerializableCipher = {
	>ISerializableCipher<ISerializableCipherCfg>,
};
typedef ISerializableCipherCfg = {
	@:optional
	var format : format.IFormatter;
};
typedef IPasswordBasedCipher<C:(IPasswordBasedCipherCfg)> = {
	>Base,
	var cfg : C;
	@:overload(function(cipher:Cipher, message:String, password:String, ?cfg:C):CipherParams { })
	function encrypt(cipher:Cipher, message:WordArray, password:String, ?cfg:C):CipherParams;
	@:overload(function(cipher:Cipher, ciphertext:String, password:String, ?cfg:C):WordArray { })
	function decrypt(cipher:Cipher, ciphertext:CipherParamsData, password:String, ?cfg:C):WordArray;
};
typedef PasswordBasedCipher = {
	>IPasswordBasedCipher<IPasswordBasedCipherCfg>,
};
typedef IPasswordBasedCipherCfg = {
	>ISerializableCipherCfg,
	@:optional
	var kdf : kdf.IKdfImpl;
};
typedef ICipherHelper<C> = {
	@:overload(function(message:String, key:WordArray, ?cfg:C):CipherParams { })
	@:overload(function(message:WordArray, password:String, ?cfg:C):CipherParams { })
	@:overload(function(message:String, password:String, ?cfg:C):CipherParams { })
	function encrypt(message:WordArray, key:WordArray, ?cfg:C):CipherParams;
	@:overload(function(ciphertext:String, key:WordArray, ?cfg:C):WordArray { })
	@:overload(function(ciphertext:CipherParamsData, password:String, ?cfg:C):WordArray { })
	@:overload(function(ciphertext:String, password:String, ?cfg:C):WordArray { })
	function decrypt(ciphertext:CipherParamsData, key:WordArray, ?cfg:C):WordArray;
};
typedef CipherHelper = {
	>ICipherHelper<Dynamic>,
};
typedef LibStatic = {
	var Base : lib.Base;
	var WordArray : lib.WordArray;
	var CipherParams : lib.CipherParams;
	var SerializableCipher : lib.SerializableCipher;
	var PasswordBasedCipher : lib.PasswordBasedCipher;
};
