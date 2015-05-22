typedef KdfStatic = {
	var OpenSSL : IKdfImpl;
};
typedef IKdfImpl = {
	@:overload(function(password:String, keySize:Float, ivSize:Float, ?salt:String):lib.CipherParams { })
	function execute(password:String, keySize:Float, ivSize:Float, ?salt:lib.WordArray):lib.CipherParams;
};
