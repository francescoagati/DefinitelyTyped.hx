typedef BigNumber = {
	var radix : Float;
	var maxMul : Float;
	function copy():BigNumber;
	var initWith : TypeHelpers.BigNumberBinaryOperator;
	@:overload(function(that:BigNumber):Bool { })
	function equals(that:Float):Bool;
	function getLimb(index:Float):Float;
	@:overload(function(that:BigNumber):Bool { })
	function greaterEquals(that:Float):Bool;
	function toString():String;
	var addM : TypeHelpers.BigNumberBinaryOperator;
	function doubleM():BigNumber;
	function halveM():BigNumber;
	var subM : TypeHelpers.BigNumberBinaryOperator;
	var mod : TypeHelpers.BigNumberBinaryOperator;
	var inverseMod : TypeHelpers.BigNumberBinaryOperator;
	var add : TypeHelpers.BigNumberBinaryOperator;
	var sub : TypeHelpers.BigNumberBinaryOperator;
	var mul : TypeHelpers.BigNumberBinaryOperator;
	function square():BigNumber;
	@:overload(function(n:BigNumber):BigNumber { })
	@:overload(function(a:Array<Float>):BigNumber { })
	function power(n:Float):BigNumber;
	var mulmod : TypeHelpers.BigNumberTrinaryOperator;
	var powermod : TypeHelpers.BigNumberTrinaryOperator;
	function trim():BigNumber;
	function reduce():BigNumber;
	function fullReduce():BigNumber;
	function normalize():BigNumber;
	function cnormalize():BigNumber;
	function toBits(?len:Float):BitArray;
	function bitLength():Float;
};
typedef BigNumberStatic = {
	@:overload(function(n:String):BigNumber { })
	@:overload(function(n:Float):BigNumber { })
	@:overload(function(n:BigNumber):BigNumber { })
	function new():BigNumber;
	function fromBits(bits:BitArray):BigNumber;
	var random : TypeHelpers.Bind1<Float>;
	var prime : { var p127 : PseudoMersennePrimeStatic; var p25519 : PseudoMersennePrimeStatic; var p192k : PseudoMersennePrimeStatic; var p224k : PseudoMersennePrimeStatic; var p256k : PseudoMersennePrimeStatic; var p192 : PseudoMersennePrimeStatic; var p224 : PseudoMersennePrimeStatic; var p256 : PseudoMersennePrimeStatic; var p384 : PseudoMersennePrimeStatic; var p521 : PseudoMersennePrimeStatic; };
	function pseudoMersennePrime(exponent:Float, coeff:Array<Array<Float>>):PseudoMersennePrimeStatic;
};
typedef PseudoMersennePrime = {
	>BigNumber,
	function reduce():PseudoMersennePrime;
	function fullReduce():PseudoMersennePrime;
	function inverse():PseudoMersennePrime;
};
typedef PseudoMersennePrimeStatic = {
	>BigNumberStatic,
	@:overload(function(n:String):PseudoMersennePrime { })
	@:overload(function(n:Float):PseudoMersennePrime { })
	@:overload(function(n:BigNumber):PseudoMersennePrime { })
	function new():PseudoMersennePrime;
};
typedef BitArray = {
	>Array<Float>,
};
typedef BitArrayStatic = {
	function bitSlice(a:BitArray, bstart:Float, bend:Float):BitArray;
	function extract(a:BitArray, bstart:Float, blenth:Float):Float;
	function concat(a1:BitArray, a2:BitArray):BitArray;
	function bitLength(a:BitArray):Float;
	function clamp(a:BitArray, len:Float):BitArray;
	function partial(len:Float, x:Float, ?_end:Float):Float;
	function getPartial(x:Float):Float;
	function equal(a:BitArray, b:BitArray):Bool;
	function _shiftRight(a:BitArray, shift:Float, ?carry:Float, ?out:BitArray):BitArray;
	function _xor4(x:Array<Float>, y:Array<Float>):Array<Float>;
};
typedef SjclCodec<T> = {
	function fromBits(bits:BitArray):T;
	function toBits(value:T):BitArray;
};
typedef SjclCodecs = {
	var utf8String : SjclCodec<String>;
	var hex : SjclCodec<String>;
	var bytes : SjclCodec<Array<Float>>;
	var base64 : SjclCodec<String>;
	var base64url : SjclCodec<String>;
};
typedef SjclHash = {
	function reset():SjclHash;
	@:overload(function(data:BitArray):SjclHash { })
	function update(data:String):SjclHash;
	function finalize():BitArray;
};
typedef SjclHashStatic = {
	function new(?hash:SjclHash):SjclHash;
	@:overload(function(data:BitArray):BitArray { })
	function hash(data:String):BitArray;
};
typedef SjclHashes = {
	var sha1 : SjclHashStatic;
	var sha256 : SjclHashStatic;
	var sha512 : SjclHashStatic;
};
typedef SjclExceptions = {
	var corrupt : SjclExceptionFactory;
	var invalid : SjclExceptionFactory;
	var bug : SjclExceptionFactory;
	var notReady : SjclExceptionFactory;
};
typedef SjclExceptionFactory = {
	function new(message:String):Error;
};
typedef SjclCiphers = {
	var aes : SjclCipherStatic;
};
typedef SjclCipher = {
	function encrypt(data:Array<Float>):Array<Float>;
	function decrypt(data:Array<Float>):Array<Float>;
};
typedef SjclCipherStatic = {
	function new(key:Array<Float>):SjclCipher;
};
typedef SjclModes = {
	var gcm : SjclGCMMode;
	var ccm : SjclCCMMode;
	var ocb2 : SjclOCB2Mode;
	var cbc : SjclCBCMode;
};
typedef SjclGCMMode = {
	function encrypt(prp:SjclCipher, plaintext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float):BitArray;
	function decrypt(prp:SjclCipher, ciphertext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float):BitArray;
};
typedef SjclCCMMode = {
	function encrypt(prp:SjclCipher, plaintext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float):BitArray;
	function decrypt(prp:SjclCipher, ciphertext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float):BitArray;
};
typedef SjclOCB2Mode = {
	function encrypt(prp:SjclCipher, plaintext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float, ?premac:Bool):BitArray;
	function decrypt(prp:SjclCipher, ciphertext:BitArray, iv:BitArray, ?adata:BitArray, ?tlen:Float, ?premac:Bool):BitArray;
	function pmac(prp:SjclCipher, adata:BitArray):Array<Float>;
};
typedef SjclCBCMode = {
	function encrypt(prp:SjclCipher, plaintext:BitArray, iv:BitArray, ?adata:BitArray):BitArray;
	function decrypt(prp:SjclCipher, ciphertext:BitArray, iv:BitArray, ?adata:BitArray):BitArray;
};
typedef Pbkdf2Params = {
	@:optional
	var iter : Float;
	@:optional
	var salt : BitArray;
};
typedef SjclMisc = {
	@:overload(function(password:BitArray, salt:String, ?count:Float, ?length:Float, ?Prff:SjclPseudorandomFunctionFamilyStatic):BitArray { })
	@:overload(function(password:BitArray, salt:BitArray, ?count:Float, ?length:Float, ?Prff:SjclPseudorandomFunctionFamilyStatic):BitArray { })
	@:overload(function(password:String, salt:BitArray, ?count:Float, ?length:Float, ?Prff:SjclPseudorandomFunctionFamilyStatic):BitArray { })
	function pbkdf2(password:String, salt:String, ?count:Float, ?length:Float, ?Prff:SjclPseudorandomFunctionFamilyStatic):BitArray;
	var hmac : SjclHmacStatic;
	function cachedPbkdf2(password:String, ?obj:Pbkdf2Params):{ var key : BitArray; var salt : BitArray; };
};
extern class SjclPseudorandomFunctionFamily {
	@:overload(function(data:BitArray):BitArray { })
	function encrypt(data:String):BitArray;
}
typedef SjclHmac = {
	>SjclPseudorandomFunctionFamily,
	@:overload(function(data:BitArray):BitArray { })
	function mac(data:String):BitArray;
	function reset():Void;
	@:overload(function(data:BitArray):Void { })
	function update(data:String):Void;
	function digest():BitArray;
};
typedef SjclPseudorandomFunctionFamilyStatic = {
	function new(key:BitArray):SjclPseudorandomFunctionFamily;
};
typedef SjclHmacStatic = {
	function new(key:BitArray, ?Hash:SjclHashStatic):SjclHmac;
};
typedef SjclEllipticCurveCryptography = {
	var point : SjclEllipticalPointStatic;
	var pointJac : SjclPointJacobianStatic;
	var curve : SjclEllipticalCurveStatic;
	var curves : { var c192 : SjclEllipticalCurve; var c224 : SjclEllipticalCurve; var c256 : SjclEllipticalCurve; var c384 : SjclEllipticalCurve; var k192 : SjclEllipticalCurve; var k224 : SjclEllipticalCurve; var k256 : SjclEllipticalCurve; };
	var basicKey : SjclECCBasic;
	var elGamal : SjclElGamal;
	var ecdsa : SjclEcdsa;
};
typedef SjclEllipticalPoint = {
	function toJac():SjclPointJacobian;
	function mult(k:BigNumber):SjclEllipticalPoint;
	function mult2(k:BigNumber, k2:BigNumber, affine2:SjclEllipticalPoint):SjclEllipticalPoint;
	function multiples():Array<SjclEllipticalPoint>;
	function isValid():Bool;
	function toBits():BitArray;
};
typedef SjclEllipticalPointStatic = {
	function new(curve:SjclEllipticalCurve, ?x:BigNumber, ?y:BigNumber):SjclEllipticalPoint;
};
typedef SjclPointJacobian = {
	function add(T:SjclEllipticalPoint):SjclPointJacobian;
	function doubl():SjclPointJacobian;
	function toAffine():SjclEllipticalPoint;
	function mult(k:BigNumber, affine:SjclEllipticalPoint):SjclPointJacobian;
	function mult2(k1:BigNumber, affine:SjclEllipticalPoint, k2:BigNumber, affine2:SjclEllipticalPoint):SjclPointJacobian;
	function isValid():Bool;
};
typedef SjclPointJacobianStatic = {
	function new(curve:SjclEllipticalCurve, ?x:BigNumber, ?y:BigNumber, ?z:BigNumber):SjclPointJacobian;
};
typedef SjclEllipticalCurve = {
	function fromBits(bits:BitArray):SjclEllipticalPoint;
};
typedef SjclEllipticalCurveStatic = {
	function new(Field:BigNumber, r:BigNumber, a:BigNumber, b:BigNumber, x:BigNumber, y:BigNumber):SjclEllipticalCurve;
};
typedef SjclKeyPair<P:(SjclECCPublicKey), S:(SjclECCSecretKey)> = {
	var pub : P;
	var sec : S;
};
typedef SjclKeysGenerator<P:(SjclECCPublicKey), S:(SjclECCSecretKey)> = { };
typedef SjclECCPublicKeyData = {
	var x : BitArray;
	var y : BitArray;
};
extern class SjclECCPublicKey {
	function get():SjclECCPublicKeyData;
}
extern class SjclECCSecretKey {
	function get():BitArray;
}
typedef SjclECCPublicKeyFactory<T:(SjclECCPublicKey)> = {
	@:overload(function(curve:SjclEllipticalCurve, point:BitArray):T { })
	function new(curve:SjclEllipticalCurve, point:SjclEllipticalPoint):T;
};
typedef SjclECCSecretKeyFactory<T:(SjclECCSecretKey)> = {
	function new(curve:SjclEllipticalCurve, exponent:BigNumber):T;
};
typedef SjclECCBasic = {
	var publicKey : SjclECCPublicKeyFactory<SjclECCPublicKey>;
	var secretKey : SjclECCSecretKeyFactory<SjclECCSecretKey>;
	function generateKeys(cn:String):SjclKeysGenerator<SjclECCPublicKey, SjclECCSecretKey>;
};
extern class SjclElGamalPublicKey extends SjclECCPublicKey {
	function kem(paranoia:Float):{ var key : BitArray; var tag : BitArray; };
}
extern class SjclElGamalSecretKey extends SjclECCSecretKey {
	function unkem(tag:BitArray):BitArray;
	function dh(pk:SjclECCPublicKey):BitArray;
}
typedef SjclElGamal = {
	var publicKey : SjclECCPublicKeyFactory<SjclElGamalPublicKey>;
	var secretKey : SjclECCSecretKeyFactory<SjclElGamalSecretKey>;
	var generateKeys : SjclKeysGenerator<SjclElGamalPublicKey, SjclElGamalSecretKey>;
};
extern class SjclEcdsaPublicKey extends SjclECCPublicKey {
	function verify(hash:BitArray, rs:BitArray, fakeLegacyVersion:Bool):Bool;
}
extern class SjclEcdsaSecretKey extends SjclECCSecretKey {
	function sign(hash:BitArray, paranoia:Float, fakeLegacyVersion:Bool, ?fixedKForTesting:BigNumber):BitArray;
}
typedef SjclEcdsa = {
	var publicKey : SjclECCPublicKeyFactory<SjclEcdsaPublicKey>;
	var secretKey : SjclECCSecretKeyFactory<SjclEcdsaSecretKey>;
	var generateKeys : SjclKeysGenerator<SjclEcdsaPublicKey, SjclEcdsaSecretKey>;
};
typedef SjclRandom = {
	function randomWords(nwords:Float, ?paranoia:Float):BitArray;
	function setDefaultParanoia(paranoia:Float, allowZeroParanoia:String):Void;
	@:overload(function(data:Array<Float>, estimatedEntropy:Float, source:String):Void { })
	@:overload(function(data:String, estimatedEntropy:Float, source:String):Void { })
	function addEntropy(data:Float, estimatedEntropy:Float, source:String):Void;
	function isReady(?paranoia:Float):Bool;
	function getProgress(?paranoia:Float):Float;
	function startCollectors():Void;
	function stopCollectors():Void;
	function addEventListener(name:String, cb:haxe.Constraints.Function):Void;
	function removeEventListener(name:String, cb:haxe.Constraints.Function):Void;
};
typedef SjclRandomStatic = {
	function new(defaultParanoia:Float):SjclRandom;
};
typedef SjclKeyExchange = {
	var srp : SecureRemotePassword;
};
typedef SjclSRPGroup = {
	var N : BigNumber;
	var g : BigNumber;
};
typedef SecureRemotePassword = {
	function makeVerifier(username:String, password:String, salt:BitArray, group:SjclSRPGroup):BitArray;
	function makeX(username:String, password:String, salt:BitArray):BitArray;
	@:overload(function(i:Float):SjclSRPGroup { })
	function knownGroup(i:String):SjclSRPGroup;
};
typedef SjclCipherParams = {
	@:optional
	var v : Float;
	@:optional
	var iter : Float;
	@:optional
	var ks : Float;
	@:optional
	var ts : Float;
	@:optional
	var mode : String;
	@:optional
	var adata : String;
	@:optional
	var cipher : String;
};
typedef SjclCipherEncryptParams = {
	>SjclCipherParams,
	var salt : BitArray;
	var iv : BitArray;
};
typedef SjclCipherDecryptParams = {
	>SjclCipherParams,
	@:optional
	var salt : BitArray;
	@:optional
	var iv : BitArray;
};
typedef SjclCipherEncrypted = {
	>SjclCipherEncryptParams,
	@:optional
	var kemtag : BitArray;
	var ct : BitArray;
};
typedef SjclCipherDecrypted = {
	>SjclCipherEncrypted,
	var key : BitArray;
};
typedef SjclConveninceEncryptor = { };
typedef SjclConveninceDecryptor = { };
typedef SjclJson = {
	var encrypt : SjclConveninceEncryptor;
	var decrypt : SjclConveninceDecryptor;
	function encode(obj:Dynamic):String;
	function decode(obj:String):Dynamic;
};
extern class SjclTopLevel {
	static var bn : BigNumberStatic;
	static var bitArray : BitArrayStatic;
	static var codec : SjclCodecs;
	static var hash : SjclHashes;
	static var exception : SjclExceptions;
	static var cipher : SjclCiphers;
	static var mode : SjclModes;
	static var misc : SjclMisc;
	static var ecc : SjclEllipticCurveCryptography;
	static var random : SjclRandom;
	static var prng : SjclRandomStatic;
	static var keyexchange : SjclKeyExchange;
	static var json : SjclJson;
	static var encrypt : SjclConveninceEncryptor;
	static var decrypt : SjclConveninceDecryptor;
}
extern class SjclTopLevel {
	static var bn : BigNumberStatic;
	static var bitArray : BitArrayStatic;
	static var codec : SjclCodecs;
	static var hash : SjclHashes;
	static var exception : SjclExceptions;
	static var cipher : SjclCiphers;
	static var mode : SjclModes;
	static var misc : SjclMisc;
	static var ecc : SjclEllipticCurveCryptography;
	static var random : SjclRandom;
	static var prng : SjclRandomStatic;
	static var keyexchange : SjclKeyExchange;
	static var json : SjclJson;
	static var encrypt : SjclConveninceEncryptor;
	static var decrypt : SjclConveninceDecryptor;
}
extern class SjclTopLevel {
	static var bn : BigNumberStatic;
	static var bitArray : BitArrayStatic;
	static var codec : SjclCodecs;
	static var hash : SjclHashes;
	static var exception : SjclExceptions;
	static var cipher : SjclCiphers;
	static var mode : SjclModes;
	static var misc : SjclMisc;
	static var ecc : SjclEllipticCurveCryptography;
	static var random : SjclRandom;
	static var prng : SjclRandomStatic;
	static var keyexchange : SjclKeyExchange;
	static var json : SjclJson;
	static var encrypt : SjclConveninceEncryptor;
	static var decrypt : SjclConveninceDecryptor;
}
