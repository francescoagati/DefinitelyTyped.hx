typedef ModeStatic = {
	var CBC : mode.CBC;
	var CFB : mode.CFB;
	var CTR : mode.CTR;
	var CTRGladman : mode.CTRGladman;
	var ECB : mode.ECB;
	var OFB : mode.OFB;
};
typedef IBlockCipherEncryptor = {
	>lib.BlockCipherMode,
	function processBlock(words:Array<Float>, offset:Float):Void;
};
typedef IBlockCipherDecryptor = {
	>lib.BlockCipherMode,
	function processBlock(words:Array<Float>, offset:Float):Void;
};
typedef IBlockCipherModeImpl = {
	>lib.BlockCipherMode,
	var Encryptor : IBlockCipherEncryptor;
	var Decryptor : IBlockCipherDecryptor;
};
typedef CBC = {
	>IBlockCipherModeImpl,
};
typedef CFB = {
	>IBlockCipherModeImpl,
};
typedef CTR = {
	>IBlockCipherModeImpl,
};
typedef CTRGladman = {
	>IBlockCipherModeImpl,
};
typedef ECB = {
	>IBlockCipherModeImpl,
};
typedef OFB = {
	>IBlockCipherModeImpl,
};
