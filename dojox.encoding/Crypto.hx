extern class RSAKey {
	function new(rngf:Dynamic):Void;
	function decrypt(ctext:String):Dynamic;
	function encrypt(text:Dynamic):Dynamic;
	function generate(B:Dynamic, E:Dynamic):Void;
	function setPrivate(N:Dynamic, E:Dynamic, D:Dynamic):Void;
	function setPrivateEx(N:Dynamic, E:Dynamic, D:Dynamic, P:Dynamic, Q:Dynamic, DP:Dynamic, DQ:Dynamic, C:Dynamic):Void;
	function setPublic(N:Dynamic, E:Dynamic):Void;
}
extern class RSAKey_ext {
	function new(rngf:Dynamic):Void;
	function decrypt(ctext:String):Dynamic;
	function encrypt(text:Dynamic):Dynamic;
	function generate(B:Dynamic, E:Dynamic):Void;
	function setPrivate(N:Dynamic, E:Dynamic, D:Dynamic):Void;
	function setPrivateEx(N:Dynamic, E:Dynamic, D:Dynamic, P:Dynamic, Q:Dynamic, DP:Dynamic, DQ:Dynamic, C:Dynamic):Void;
	function setPublic(N:Dynamic, E:Dynamic):Void;
}
typedef _base = {
	var Blowfish : Dynamic;
	var cipherModes : Dynamic;
	var outputTypes : Dynamic;
	var SimpleAES : Dynamic;
	function RSAKey():Void;
};
