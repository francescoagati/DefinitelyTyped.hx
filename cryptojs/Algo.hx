typedef AlgoStatic = {
	var AES : algo.AES;
	var DES : algo.DES;
	var TripleDES : algo.TripleDES;
	var RabbitLegacy : algo.RabbitLegacy;
	var Rabbit : algo.Rabbit;
	var RC4 : algo.RC4;
	var MD5 : algo.MD5;
	var RIPEMD160 : algo.RIPEMD160;
	var SHA1 : algo.SHA1;
	var SHA256 : algo.SHA256;
	var SHA224 : algo.SHA224;
	var SHA384 : algo.SHA384;
	var SHA512 : algo.SHA512;
	var SHA3 : algo.SHA3;
	var HMAC : algo.HMAC;
	var EvpKDF : algo.EvpKDF;
	var PBKDF2 : algo.PBKDF2;
	var RC4Drop : algo.RC4Drop;
};
typedef IBlockCipherImpl = {
	>lib.BlockCipher,
	function encryptBlock(M:Array<Float>, offset:Float):Void;
	function decryptBlock(M:Array<Float>, offset:Float):Void;
	function createEncryptor(key:lib.WordArray, ?cfg:lib.IBlockCipherCfg):IBlockCipherImpl;
	function createDecryptor(key:lib.WordArray, ?cfg:lib.IBlockCipherCfg):IBlockCipherImpl;
	function create(?xformMode:Float, ?key:lib.WordArray, ?cfg:lib.IBlockCipherCfg):IBlockCipherImpl;
};
typedef AES = {
	>IBlockCipherImpl,
};
typedef DES = {
	>IBlockCipherImpl,
};
typedef TripleDES = {
	>IBlockCipherImpl,
};
typedef RabbitLegacy = {
	>lib.StreamCipher,
};
typedef Rabbit = {
	>lib.StreamCipher,
};
typedef RC4 = {
	>lib.StreamCipher,
};
typedef MD5 = {
	>lib.Hasher,
};
typedef RIPEMD160 = {
	>lib.Hasher,
};
typedef SHA1 = {
	>lib.Hasher,
};
typedef SHA256 = {
	>lib.Hasher,
};
typedef SHA224 = {
	>lib.Hasher,
};
typedef SHA384 = {
	>lib.Hasher,
};
typedef SHA512 = {
	>lib.Hasher,
};
typedef SHA3 = {
	>lib.IHasher<ISHA3Cfg>,
};
typedef ISHA3Cfg = {
	@:optional
	var outputLength : Float;
};
typedef HMAC = {
	>lib.Base,
	@:overload(function(?hasher:lib.Hasher, ?key:String):Void { })
	function init(?hasher:lib.Hasher, ?key:lib.WordArray):Void;
	@:overload(function(?hasher:lib.Hasher, ?key:String):HMAC { })
	function create(?hasher:lib.Hasher, ?key:lib.WordArray):HMAC;
	@:overload(function(messageUpdate:String):HMAC { })
	function update(messageUpdate:lib.WordArray):HMAC;
	@:overload(function(?messageUpdate:String):lib.WordArray { })
	function finalize(?messageUpdate:lib.WordArray):lib.WordArray;
};
typedef EvpKDF = {
	>lib.Base,
	var cfg : IEvpKDFCfg;
	function init(?cfg:IEvpKDFCfg):Void;
	function create(?cfg:IEvpKDFCfg):EvpKDF;
	@:overload(function(password:String, salt:lib.WordArray):lib.WordArray { })
	@:overload(function(password:lib.WordArray, salt:String):lib.WordArray { })
	@:overload(function(password:String, salt:String):lib.WordArray { })
	function compute(password:lib.WordArray, salt:lib.WordArray):lib.WordArray;
};
typedef IEvpKDFCfg = {
	@:optional
	var keySize : Float;
	@:optional
	var hasher : lib.Hasher;
	@:optional
	var iterations : Float;
};
typedef IEvpKDFHelper = { };
typedef PBKDF2 = {
	>EvpKDF,
};
typedef RC4Drop = {
	>RC4,
};
