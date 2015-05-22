extern class MediaProtectionManager {
	var properties : Windows.Foundation.Collections.IPropertySet;
	var onservicerequested : Dynamic;
	var onrebootneeded : Dynamic;
	var oncomponentloadfailed : Dynamic;
}
extern class ServiceRequestedEventArgs {
	var completion : Windows.Media.Protection.MediaProtectionServiceCompletion;
	var request : Windows.Media.Protection.IMediaProtectionServiceRequest;
}
extern class ComponentLoadFailedEventArgs {
	var completion : Windows.Media.Protection.MediaProtectionServiceCompletion;
	var information : Windows.Media.Protection.RevocationAndRenewalInformation;
}
extern class MediaProtectionServiceCompletion {
	function complete(success:Bool):Void;
}
extern class RevocationAndRenewalInformation {
	var items : Windows.Foundation.Collections.IVector<Windows.Media.Protection.RevocationAndRenewalItem>;
}
extern class RevocationAndRenewalItem {
	var headerHash : String;
	var name : String;
	var publicKeyHash : String;
	var reasons : Windows.Media.Protection.RevocationAndRenewalReasons;
	var renewalId : String;
}
typedef ServiceRequestedEventHandler = { };
typedef RebootNeededEventHandler = { };
typedef ComponentLoadFailedEventHandler = { };
typedef IMediaProtectionManager = {
	var properties : Windows.Foundation.Collections.IPropertySet;
	var onservicerequested : Dynamic;
	var onrebootneeded : Dynamic;
	var oncomponentloadfailed : Dynamic;
};
typedef IMediaProtectionServiceCompletion = {
	function complete(success:Bool):Void;
};
typedef IServiceRequestedEventArgs = {
	var completion : Windows.Media.Protection.MediaProtectionServiceCompletion;
	var request : Windows.Media.Protection.IMediaProtectionServiceRequest;
};
typedef IMediaProtectionServiceRequest = {
	var protectionSystem : String;
	var type : String;
};
typedef IComponentLoadFailedEventArgs = {
	var completion : Windows.Media.Protection.MediaProtectionServiceCompletion;
	var information : Windows.Media.Protection.RevocationAndRenewalInformation;
};
typedef IRevocationAndRenewalInformation = {
	var items : Windows.Foundation.Collections.IVector<Windows.Media.Protection.RevocationAndRenewalItem>;
};
@:enum abstract RevocationAndRenewalReasons(Int) {
	var userModeComponentLoad = 0;
	var kernelModeComponentLoad = 1;
	var appComponent = 2;
	var globalRevocationListLoadFailed = 3;
	var invalidGlobalRevocationListSignature = 4;
	var globalRevocationListAbsent = 5;
	var componentRevoked = 6;
	var invalidComponentCertificateExtendedKeyUse = 7;
	var componentCertificateRevoked = 8;
	var invalidComponentCertificateRoot = 9;
	var componentHighSecurityCertificateRevoked = 10;
	var componentLowSecurityCertificateRevoked = 11;
	var bootDriverVerificationFailed = 12;
	var componentSignedWithTestCertificate = 13;
	var encryptionFailure = 14;
}
typedef IRevocationAndRenewalItem = {
	var headerHash : String;
	var name : String;
	var publicKeyHash : String;
	var reasons : Windows.Media.Protection.RevocationAndRenewalReasons;
	var renewalId : String;
};
extern class ComponentRenewal {
	static function renewSystemComponentsAsync(information:Windows.Media.Protection.RevocationAndRenewalInformation):Windows.Foundation.IAsyncOperationWithProgress<Windows.Media.Protection.RenewalStatus, Float>;
}
@:enum abstract RenewalStatus(Int) {
	var notStarted = 0;
	var updatesInProgress = 1;
	var userCancelled = 2;
	var appComponentsMayNeedUpdating = 3;
	var noComponentsFound = 4;
}
typedef IComponentRenewalStatics = {
	function renewSystemComponentsAsync(information:Windows.Media.Protection.RevocationAndRenewalInformation):Windows.Foundation.IAsyncOperationWithProgress<Windows.Media.Protection.RenewalStatus, Float>;
};
