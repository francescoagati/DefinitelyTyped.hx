typedef PadStatic = {
	var Pkcs7 : pad.Pkcs7;
	var AnsiX923 : pad.AnsiX923;
	var Iso10126 : pad.Iso10126;
	var Iso97971 : pad.Iso97971;
	var ZeroPadding : pad.ZeroPadding;
	var NoPadding : pad.NoPadding;
};
typedef IPaddingImpl = {
	function pad(data:lib.WordArray, blockSize:Float):Void;
	function unpad(data:lib.WordArray):Void;
};
typedef Pkcs7 = {
	>IPaddingImpl,
};
typedef AnsiX923 = {
	>IPaddingImpl,
};
typedef Iso10126 = {
	>IPaddingImpl,
};
typedef Iso97971 = {
	>IPaddingImpl,
};
typedef ZeroPadding = {
	>IPaddingImpl,
};
typedef NoPadding = {
	>IPaddingImpl,
};
