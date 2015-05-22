@:enum abstract EnrollKeyUsages(Int) {
	var none = 0;
	var decryption = 1;
	var signing = 2;
	var keyAgreement = 3;
	var all = 4;
}
@:enum abstract KeyProtectionLevel(Int) {
	var noConsent = 0;
	var consentOnly = 1;
	var consentWithPassword = 2;
}
@:enum abstract ExportOption(Int) {
	var notExportable = 0;
	var exportable = 1;
}
@:enum abstract KeySize(Int) {
	var invalid = 0;
	var rsa2048 = 1;
	var rsa4096 = 2;
}
@:enum abstract InstallOptions(Int) {
	var none = 0;
	var deleteExpired = 1;
}
typedef ICertificateRequestProperties = {
	var exportable : Windows.Security.Cryptography.Certificates.ExportOption;
	var friendlyName : String;
	var hashAlgorithmName : String;
	var keyAlgorithmName : String;
	var keyProtectionLevel : Windows.Security.Cryptography.Certificates.KeyProtectionLevel;
	var keySize : Float;
	var keyStorageProviderName : String;
	var keyUsages : Windows.Security.Cryptography.Certificates.EnrollKeyUsages;
	var subject : String;
};
extern class CertificateRequestProperties {
	var exportable : Windows.Security.Cryptography.Certificates.ExportOption;
	var friendlyName : String;
	var hashAlgorithmName : String;
	var keyAlgorithmName : String;
	var keyProtectionLevel : Windows.Security.Cryptography.Certificates.KeyProtectionLevel;
	var keySize : Float;
	var keyStorageProviderName : String;
	var keyUsages : Windows.Security.Cryptography.Certificates.EnrollKeyUsages;
	var subject : String;
}
typedef ICertificateEnrollmentManagerStatics = {
	function createRequestAsync(request:Windows.Security.Cryptography.Certificates.CertificateRequestProperties):Windows.Foundation.IAsyncOperation<String>;
	function installCertificateAsync(certificate:String, installOption:Windows.Security.Cryptography.Certificates.InstallOptions):Windows.Foundation.IAsyncAction;
	function importPfxDataAsync(pfxData:String, password:String, exportable:Windows.Security.Cryptography.Certificates.ExportOption, keyProtectionLevel:Windows.Security.Cryptography.Certificates.KeyProtectionLevel, installOption:Windows.Security.Cryptography.Certificates.InstallOptions, friendlyName:String):Windows.Foundation.IAsyncAction;
};
extern class CertificateEnrollmentManager {
	static function createRequestAsync(request:Windows.Security.Cryptography.Certificates.CertificateRequestProperties):Windows.Foundation.IAsyncOperation<String>;
	static function installCertificateAsync(certificate:String, installOption:Windows.Security.Cryptography.Certificates.InstallOptions):Windows.Foundation.IAsyncAction;
	static function importPfxDataAsync(pfxData:String, password:String, exportable:Windows.Security.Cryptography.Certificates.ExportOption, keyProtectionLevel:Windows.Security.Cryptography.Certificates.KeyProtectionLevel, installOption:Windows.Security.Cryptography.Certificates.InstallOptions, friendlyName:String):Windows.Foundation.IAsyncAction;
}
typedef IKeyAlgorithmNamesStatics = {
	var dsa : String;
	var ecdh256 : String;
	var ecdh384 : String;
	var ecdh521 : String;
	var ecdsa256 : String;
	var ecdsa384 : String;
	var ecdsa521 : String;
	var rsa : String;
};
extern class KeyAlgorithmNames {
	static var dsa : String;
	static var ecdh256 : String;
	static var ecdh384 : String;
	static var ecdh521 : String;
	static var ecdsa256 : String;
	static var ecdsa384 : String;
	static var ecdsa521 : String;
	static var rsa : String;
}
typedef IKeyStorageProviderNamesStatics = {
	var platformKeyStorageProvider : String;
	var smartcardKeyStorageProvider : String;
	var softwareKeyStorageProvider : String;
};
extern class KeyStorageProviderNames {
	static var platformKeyStorageProvider : String;
	static var smartcardKeyStorageProvider : String;
	static var softwareKeyStorageProvider : String;
}
