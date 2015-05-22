typedef X64Static = {
	var Word : x64.Word;
	var WordArray : x64.WordArray;
};
typedef Word = {
	>lib.Base,
	var high : Float;
	var low : Float;
	function init(?high:Float, ?low:Float):Void;
	function create(?high:Float, ?low:Float):Word;
};
typedef WordArray = {
	>lib.Base,
	var words : Array<Word>;
	var sigBytes : Float;
	function init(?words:Array<Word>, ?sigBytes:Float):Void;
	function create(?words:Array<Word>, ?sigBytes:Float):WordArray;
	function toX32():lib.WordArray;
	function clone():WordArray;
};
typedef CryptoJSStatic = {
	var lib : lib.LibStatic;
	var enc : enc.EncStatic;
	var kdf : kdf.KdfStatic;
	var format : format.FormatStatic;
	var algo : algo.AlgoStatic;
	var mode : mode.ModeStatic;
	var pad : pad.PadStatic;
	var x64 : x64.X64Static;
	var AES : CryptoJS.lib.ICipherHelper<CryptoJS.lib.IBlockCipherCfg>;
	var DES : CryptoJS.lib.ICipherHelper<CryptoJS.lib.IBlockCipherCfg>;
	var TripleDES : CryptoJS.lib.ICipherHelper<CryptoJS.lib.IBlockCipherCfg>;
	var RabbitLegacy : CryptoJS.lib.CipherHelper;
	var Rabbit : CryptoJS.lib.CipherHelper;
	var RC4 : CryptoJS.lib.CipherHelper;
	var RC4Drop : CryptoJS.lib.ICipherHelper<Dynamic>;
	var MD5 : CryptoJS.lib.HasherHelper;
	var HmacMD5 : CryptoJS.lib.IHasherHmacHelper;
	var RIPEMD160 : CryptoJS.lib.HasherHelper;
	var HmacRIPEMD160 : CryptoJS.lib.IHasherHmacHelper;
	var SHA1 : CryptoJS.lib.HasherHelper;
	var HmacSHA1 : CryptoJS.lib.IHasherHmacHelper;
	var SHA256 : CryptoJS.lib.HasherHelper;
	var HmacSHA256 : CryptoJS.lib.IHasherHmacHelper;
	var SHA224 : CryptoJS.lib.HasherHelper;
	var HmacSHA224 : CryptoJS.lib.IHasherHmacHelper;
	var SHA512 : CryptoJS.lib.HasherHelper;
	var HmacSHA512 : CryptoJS.lib.IHasherHmacHelper;
	var SHA384 : CryptoJS.lib.HasherHelper;
	var HmacSHA384 : CryptoJS.lib.IHasherHmacHelper;
	var SHA3 : CryptoJS.lib.IHasherHelper<CryptoJS.algo.ISHA3Cfg>;
	var HmacSHA3 : CryptoJS.lib.IHasherHmacHelper;
	var EvpKDF : CryptoJS.algo.IEvpKDFHelper;
	var PBKDF2 : CryptoJS.algo.IEvpKDFHelper;
};
