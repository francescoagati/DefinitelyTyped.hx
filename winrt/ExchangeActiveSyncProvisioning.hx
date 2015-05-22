@:enum abstract EasRequireEncryptionResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var notProvisionedOnAllVolumes = 3;
	var deFixedDataNotSupported = 4;
	var deHardwareNotCompliant = 5;
	var deWinReNotConfigured = 6;
	var deProtectionSuspended = 7;
	var deOsVolumeNotProtected = 8;
	var deProtectionNotYetEnabled = 9;
	var noFeatureLicense = 10;
	var osNotProtected = 11;
}
@:enum abstract EasMinPasswordLengthResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var requestedPolicyNotEnforceable = 4;
	var invalidParameter = 5;
	var currentUserHasBlankPassword = 6;
	var adminsHaveBlankPassword = 7;
	var userCannotChangePassword = 8;
	var adminsCannotChangePassword = 9;
	var localControlledUsersCannotChangePassword = 10;
	var connectedAdminsProviderPolicyIsWeak = 11;
	var connectedUserProviderPolicyIsWeak = 12;
	var changeConnectedAdminsPassword = 13;
	var changeConnectedUserPassword = 14;
}
@:enum abstract EasDisallowConvenienceLogonResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
}
@:enum abstract EasMinPasswordComplexCharactersResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var requestedPolicyNotEnforceable = 4;
	var invalidParameter = 5;
	var currentUserHasBlankPassword = 6;
	var adminsHaveBlankPassword = 7;
	var userCannotChangePassword = 8;
	var adminsCannotChangePassword = 9;
	var localControlledUsersCannotChangePassword = 10;
	var connectedAdminsProviderPolicyIsWeak = 11;
	var connectedUserProviderPolicyIsWeak = 12;
	var changeConnectedAdminsPassword = 13;
	var changeConnectedUserPassword = 14;
}
@:enum abstract EasPasswordExpirationResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var requestedExpirationIncompatible = 4;
	var invalidParameter = 5;
	var userCannotChangePassword = 6;
	var adminsCannotChangePassword = 7;
	var localControlledUsersCannotChangePassword = 8;
}
@:enum abstract EasPasswordHistoryResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var invalidParameter = 4;
}
@:enum abstract EasMaxPasswordFailedAttemptsResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var invalidParameter = 4;
}
@:enum abstract EasMaxInactivityTimeLockResult(Int) {
	var notEvaluated = 0;
	var compliant = 1;
	var canBeCompliant = 2;
	var requestedPolicyIsStricter = 3;
	var invalidParameter = 4;
}
typedef IEasClientDeviceInformation = {
	var friendlyName : String;
	var id : String;
	var operatingSystem : String;
	var systemManufacturer : String;
	var systemProductName : String;
	var systemSku : String;
};
typedef IEasClientSecurityPolicy = {
	var disallowConvenienceLogon : Bool;
	var maxInactivityTimeLock : Float;
	var maxPasswordFailedAttempts : Float;
	var minPasswordComplexCharacters : Float;
	var minPasswordLength : Float;
	var passwordExpiration : Float;
	var passwordHistory : Float;
	var requireEncryption : Bool;
	function checkCompliance():Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults;
	function applyAsync():Windows.Foundation.IAsyncOperation<Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults>;
};
extern class EasComplianceResults {
	var compliant : Bool;
	var disallowConvenienceLogonResult : Windows.Security.ExchangeActiveSyncProvisioning.EasDisallowConvenienceLogonResult;
	var maxInactivityTimeLockResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMaxInactivityTimeLockResult;
	var maxPasswordFailedAttemptsResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMaxPasswordFailedAttemptsResult;
	var minPasswordComplexCharactersResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordComplexCharactersResult;
	var minPasswordLengthResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordLengthResult;
	var passwordExpirationResult : Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordExpirationResult;
	var passwordHistoryResult : Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordHistoryResult;
	var requireEncryptionResult : Windows.Security.ExchangeActiveSyncProvisioning.EasRequireEncryptionResult;
}
typedef IEasComplianceResults = {
	var compliant : Bool;
	var disallowConvenienceLogonResult : Windows.Security.ExchangeActiveSyncProvisioning.EasDisallowConvenienceLogonResult;
	var maxInactivityTimeLockResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMaxInactivityTimeLockResult;
	var maxPasswordFailedAttemptsResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMaxPasswordFailedAttemptsResult;
	var minPasswordComplexCharactersResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordComplexCharactersResult;
	var minPasswordLengthResult : Windows.Security.ExchangeActiveSyncProvisioning.EasMinPasswordLengthResult;
	var passwordExpirationResult : Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordExpirationResult;
	var passwordHistoryResult : Windows.Security.ExchangeActiveSyncProvisioning.EasPasswordHistoryResult;
	var requireEncryptionResult : Windows.Security.ExchangeActiveSyncProvisioning.EasRequireEncryptionResult;
};
extern class EasClientSecurityPolicy {
	var disallowConvenienceLogon : Bool;
	var maxInactivityTimeLock : Float;
	var maxPasswordFailedAttempts : Float;
	var minPasswordComplexCharacters : Float;
	var minPasswordLength : Float;
	var passwordExpiration : Float;
	var passwordHistory : Float;
	var requireEncryption : Bool;
	function checkCompliance():Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults;
	function applyAsync():Windows.Foundation.IAsyncOperation<Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults>;
}
extern class EasClientDeviceInformation {
	var friendlyName : String;
	var id : String;
	var operatingSystem : String;
	var systemManufacturer : String;
	var systemProductName : String;
	var systemSku : String;
}
