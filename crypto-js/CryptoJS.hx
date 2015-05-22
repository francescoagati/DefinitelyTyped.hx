typedef Hashes = {
	var MD5 : Hash;
	var SHA1 : Hash;
	var SHA256 : Hash;
	var SHA224 : Hash;
	var SHA512 : Hash;
	var SHA384 : Hash;
	var SHA3 : Hash;
	var RIPEMD160 : Hash;
	var HmacMD5 : Hash;
	var HmacSHA1 : Hash;
	var HmacSHA256 : Hash;
	var HmacSHA224 : Hash;
	var HmacSHA512 : Hash;
	var HmacSHA384 : Hash;
	var HmacSHA3 : Hash;
	var HmacRIPEMD160 : Hash;
	var PBKDF2 : Hash;
	var AES : Hash;
	var TripleDES : Hash;
	var RC4 : Hash;
	var Rabbit : Hash;
	var RabbitLegacy : Hash;
	var EvpKDF : Hash;
	var format : { var OpenSSL : Hash; var Hex : Hash; };
	var enc : { var Latin1 : Hash; var Utf8 : Hash; var Hex : Hash; var Utf16 : Hash; var Base64 : Hash; };
	var mode : { var CFB : Hash; var CTR : Hash; var CTRGladman : Hash; var OFB : Hash; var ECB : Hash; };
	var pad : { var Pkcs7 : Hash; var Ansix923 : Hash; var Iso10126 : Hash; var Iso97971 : Hash; var ZeroPadding : Hash; var NoPadding : Hash; };
};
extern class CryptoJSTopLevel {
	static var hashes : Hashes;
}
