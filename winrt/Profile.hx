typedef IHardwareToken = {
	var certificate : Windows.Storage.Streams.IBuffer;
	var id : Windows.Storage.Streams.IBuffer;
	var signature : Windows.Storage.Streams.IBuffer;
};
extern class HardwareToken {
	var certificate : Windows.Storage.Streams.IBuffer;
	var id : Windows.Storage.Streams.IBuffer;
	var signature : Windows.Storage.Streams.IBuffer;
}
typedef IHardwareIdentificationStatics = {
	function getPackageSpecificToken(nonce:Windows.Storage.Streams.IBuffer):Windows.System.Profile.HardwareToken;
};
extern class HardwareIdentification {
	static function getPackageSpecificToken(nonce:Windows.Storage.Streams.IBuffer):Windows.System.Profile.HardwareToken;
}
