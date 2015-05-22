extern class RSAKey {
	function new(rngf:Dynamic):Void;
	function decrypt(ctext:String):Dynamic;
	function encrypt(text:Dynamic):Dynamic;
	function generate(B:Dynamic, E:Dynamic):Void;
	function setPrivate(N:Dynamic, E:Dynamic, D:Dynamic):Void;
	function setPrivateEx(N:Dynamic, E:Dynamic, D:Dynamic, P:Dynamic, Q:Dynamic, DP:Dynamic, DQ:Dynamic, C:Dynamic):Void;
	function setPublic(N:Dynamic, E:Dynamic):Void;
}
typedef CipherModes = {
	var CBC : Float;
	var CFB : Float;
	var CTR : Float;
	var ECB : Float;
	var OFB : Float;
	var PCBC : Float;
};
typedef OutputTypes = {
	var Base64 : Float;
	var Hex : Float;
	var Raw : Float;
	var String : Float;
};
typedef OutputTypes = {
	var Base64 : Float;
	var Hex : Float;
	var Raw : Float;
	var String : Float;
};
typedef _sha_64 = {
	var outputTypes : Dynamic;
	function digest(msg:Dynamic, length:Dynamic, hash:Dynamic, depth:Dynamic):Array<Dynamic>;
	function stringToUtf8(s:Dynamic):Dynamic;
	function toBase64(wa:Dynamic):Dynamic;
	function toHex(wa:Dynamic):Dynamic;
	function toWord(s:Dynamic):Dynamic;
};
typedef _base = { };
typedef Bits = {
	function InputStream(buffer:Dynamic, width:Dynamic):Void;
	function OutputStream():Void;
};
typedef Ascii85 = {
	function decode(input:String):Void;
	function encode(input:Array<Dynamic>):Void;
};
typedef Base64 = {
	function decode(str:String):Void;
	function encode(ba:Array<Float>):Void;
};
typedef Easy64 = {
	function decode(input:String):Void;
	function encode(input:Array<Dynamic>):Void;
};
