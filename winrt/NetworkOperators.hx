@:enum abstract DataClasses(Int) {
	var none = 0;
	var gprs = 1;
	var edge = 2;
	var umts = 3;
	var hsdpa = 4;
	var hsupa = 5;
	var lteAdvanced = 6;
	var cdma1xRtt = 7;
	var cdma1xEvdo = 8;
	var cdma1xEvdoRevA = 9;
	var cdma1xEvdv = 10;
	var cdma3xRtt = 11;
	var cdma1xEvdoRevB = 12;
	var cdmaUmb = 13;
	var custom = 14;
}
@:enum abstract MobileBroadbandDeviceType(Int) {
	var unknown = 0;
	var embedded = 1;
	var removable = 2;
	var remote = 3;
}
@:enum abstract NetworkDeviceStatus(Int) {
	var deviceNotReady = 0;
	var deviceReady = 1;
	var simNotInserted = 2;
	var badSim = 3;
	var deviceHardwareFailure = 4;
	var accountNotActivated = 5;
	var deviceLocked = 6;
	var deviceBlocked = 7;
}
@:enum abstract NetworkRegistrationState(Int) {
	var none = 0;
	var deregistered = 1;
	var searching = 2;
	var home = 3;
	var roaming = 4;
	var partner = 5;
	var denied = 6;
}
@:enum abstract MobileBroadbandRadioState(Int) {
	var off = 0;
	var on = 1;
}
@:enum abstract NetworkOperatorEventMessageType(Int) {
	var gsm = 0;
	var cdma = 1;
	var ussd = 2;
	var dataPlanThresholdReached = 3;
	var dataPlanReset = 4;
	var dataPlanDeleted = 5;
	var profileConnected = 6;
	var profileDisconnected = 7;
	var registeredRoaming = 8;
	var registeredHome = 9;
}
@:enum abstract MobileBroadbandAccountWatcherStatus(Int) {
	var created = 0;
	var started = 1;
	var enumerationCompleted = 2;
	var stopped = 3;
	var aborted = 4;
}
typedef IMobileBroadbandAccountStatics = {
	var availableNetworkAccountIds : Windows.Foundation.Collections.IVectorView<String>;
	function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.MobileBroadbandAccount;
};
extern class MobileBroadbandAccount {
	var currentDeviceInformation : Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation;
	var currentNetwork : Windows.Networking.NetworkOperators.MobileBroadbandNetwork;
	var networkAccountId : String;
	var serviceProviderGuid : String;
	var serviceProviderName : String;
	static var availableNetworkAccountIds : Windows.Foundation.Collections.IVectorView<String>;
	static function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.MobileBroadbandAccount;
}
typedef IMobileBroadbandAccount = {
	var currentDeviceInformation : Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation;
	var currentNetwork : Windows.Networking.NetworkOperators.MobileBroadbandNetwork;
	var networkAccountId : String;
	var serviceProviderGuid : String;
	var serviceProviderName : String;
};
extern class MobileBroadbandNetwork {
	var accessPointName : String;
	var activationNetworkError : Float;
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var networkRegistrationState : Windows.Networking.NetworkOperators.NetworkRegistrationState;
	var packetAttachNetworkError : Float;
	var registeredDataClass : Windows.Networking.NetworkOperators.DataClasses;
	var registeredProviderId : String;
	var registeredProviderName : String;
	var registrationNetworkError : Float;
	function showConnectionUI():Void;
}
extern class MobileBroadbandDeviceInformation {
	var cellularClass : Windows.Devices.Sms.CellularClass;
	var currentRadioState : Windows.Networking.NetworkOperators.MobileBroadbandRadioState;
	var customDataClass : String;
	var dataClasses : Windows.Networking.NetworkOperators.DataClasses;
	var deviceId : String;
	var deviceType : Windows.Networking.NetworkOperators.MobileBroadbandDeviceType;
	var firmwareInformation : String;
	var manufacturer : String;
	var mobileEquipmentId : String;
	var model : String;
	var networkDeviceStatus : Windows.Networking.NetworkOperators.NetworkDeviceStatus;
	var simIccId : String;
	var subscriberId : String;
	var telephoneNumbers : Windows.Foundation.Collections.IVectorView<String>;
}
typedef IMobileBroadbandDeviceInformation = {
	var cellularClass : Windows.Devices.Sms.CellularClass;
	var currentRadioState : Windows.Networking.NetworkOperators.MobileBroadbandRadioState;
	var customDataClass : String;
	var dataClasses : Windows.Networking.NetworkOperators.DataClasses;
	var deviceId : String;
	var deviceType : Windows.Networking.NetworkOperators.MobileBroadbandDeviceType;
	var firmwareInformation : String;
	var manufacturer : String;
	var mobileEquipmentId : String;
	var model : String;
	var networkDeviceStatus : Windows.Networking.NetworkOperators.NetworkDeviceStatus;
	var simIccId : String;
	var subscriberId : String;
	var telephoneNumbers : Windows.Foundation.Collections.IVectorView<String>;
};
typedef IMobileBroadbandNetwork = {
	var accessPointName : String;
	var activationNetworkError : Float;
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var networkRegistrationState : Windows.Networking.NetworkOperators.NetworkRegistrationState;
	var packetAttachNetworkError : Float;
	var registeredDataClass : Windows.Networking.NetworkOperators.DataClasses;
	var registeredProviderId : String;
	var registeredProviderName : String;
	var registrationNetworkError : Float;
	function showConnectionUI():Void;
};
typedef INetworkOperatorNotificationEventDetails = {
	var encodingType : Float;
	var message : String;
	var networkAccountId : String;
	var notificationType : Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType;
	var ruleId : String;
	var smsMessage : Windows.Devices.Sms.ISmsMessage;
};
extern class NetworkOperatorNotificationEventDetails {
	var encodingType : Float;
	var message : String;
	var networkAccountId : String;
	var notificationType : Windows.Networking.NetworkOperators.NetworkOperatorEventMessageType;
	var ruleId : String;
	var smsMessage : Windows.Devices.Sms.ISmsMessage;
}
typedef IMobileBroadbandAccountEventArgs = {
	var networkAccountId : String;
};
extern class MobileBroadbandAccountEventArgs {
	var networkAccountId : String;
}
typedef IMobileBroadbandAccountUpdatedEventArgs = {
	var hasDeviceInformationChanged : Bool;
	var hasNetworkChanged : Bool;
	var networkAccountId : String;
};
extern class MobileBroadbandAccountUpdatedEventArgs {
	var hasDeviceInformationChanged : Bool;
	var hasNetworkChanged : Bool;
	var networkAccountId : String;
}
typedef IMobileBroadbandAccountWatcher = {
	var status : Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcherStatus;
	var onaccountadded : Dynamic;
	var onaccountupdated : Dynamic;
	var onaccountremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
};
extern class MobileBroadbandAccountWatcher {
	var status : Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcherStatus;
	var onaccountadded : Dynamic;
	var onaccountupdated : Dynamic;
	var onaccountremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
}
typedef IHotspotAuthenticationEventDetails = {
	var eventToken : String;
};
extern class HotspotAuthenticationEventDetails {
	var eventToken : String;
}
typedef IHotspotAuthenticationContextStatics = {
	function tryGetAuthenticationContext(evenToken:String):{ var context : Windows.Networking.NetworkOperators.HotspotAuthenticationContext; var isValid : Bool; };
};
extern class HotspotAuthenticationContext {
	var authenticationUrl : Windows.Foundation.Uri;
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var redirectMessageUrl : Windows.Foundation.Uri;
	var redirectMessageXml : Windows.Data.Xml.Dom.XmlDocument;
	var wirelessNetworkId : Uint8Array;
	function issueCredentials(userName:String, password:String, extraParameters:String, markAsManualConnectOnFailure:Bool):Void;
	function abortAuthentication(markAsManual:Bool):Void;
	function skipAuthentication():Void;
	function triggerAttentionRequired(packageRelativeApplicationId:String, applicationParameters:String):Void;
	static function tryGetAuthenticationContext(evenToken:String):{ var context : Windows.Networking.NetworkOperators.HotspotAuthenticationContext; var isValid : Bool; };
}
typedef IHotspotAuthenticationContext = {
	var authenticationUrl : Windows.Foundation.Uri;
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var redirectMessageUrl : Windows.Foundation.Uri;
	var redirectMessageXml : Windows.Data.Xml.Dom.XmlDocument;
	var wirelessNetworkId : Uint8Array;
	function issueCredentials(userName:String, password:String, extraParameters:String, markAsManualConnectOnFailure:Bool):Void;
	function abortAuthentication(markAsManual:Bool):Void;
	function skipAuthentication():Void;
	function triggerAttentionRequired(packageRelativeApplicationId:String, applicationParameters:String):Void;
};
@:enum abstract ProfileMediaType(Int) {
	var wlan = 0;
	var wwan = 1;
}
typedef IProvisionFromXmlDocumentResults = {
	var allElementsProvisioned : Bool;
	var provisionResultsXml : String;
};
extern class ProvisionFromXmlDocumentResults {
	var allElementsProvisioned : Bool;
	var provisionResultsXml : String;
}
typedef ProfileUsage = {
	var usageInMegabytes : Float;
	var lastSyncTime : Date;
};
typedef IProvisionedProfile = {
	function updateCost(value:Windows.Networking.Connectivity.NetworkCostType):Void;
	function updateUsage(value:Windows.Networking.NetworkOperators.ProfileUsage):Void;
};
extern class ProvisionedProfile {
	function updateCost(value:Windows.Networking.Connectivity.NetworkCostType):Void;
	function updateUsage(value:Windows.Networking.NetworkOperators.ProfileUsage):Void;
}
typedef IProvisioningAgent = {
	function provisionFromXmlDocumentAsync(provisioningXmlDocument:String):Windows.Foundation.IAsyncOperation<Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults>;
	function getProvisionedProfile(mediaType:Windows.Networking.NetworkOperators.ProfileMediaType, profileName:String):Windows.Networking.NetworkOperators.ProvisionedProfile;
};
typedef IProvisioningAgentStaticMethods = {
	function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.ProvisioningAgent;
};
extern class ProvisioningAgent {
	function provisionFromXmlDocumentAsync(provisioningXmlDocument:String):Windows.Foundation.IAsyncOperation<Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults>;
	function getProvisionedProfile(mediaType:Windows.Networking.NetworkOperators.ProfileMediaType, profileName:String):Windows.Networking.NetworkOperators.ProvisionedProfile;
	static function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.ProvisioningAgent;
}
@:enum abstract UssdResultCode(Int) {
	var noActionRequired = 0;
	var actionRequired = 1;
	var terminated = 2;
	var otherLocalClient = 3;
	var operationNotSupported = 4;
	var networkTimeout = 5;
}
typedef IUssdMessage = {
	var dataCodingScheme : Float;
	var payloadAsText : String;
	function getPayload():Uint8Array;
	function setPayload(value:Uint8Array):Void;
};
typedef IUssdMessageFactory = {
	function createMessage(messageText:String):Windows.Networking.NetworkOperators.UssdMessage;
};
extern class UssdMessage {
	function new(messageText:String):Void;
	var dataCodingScheme : Float;
	var payloadAsText : String;
	function getPayload():Uint8Array;
	function setPayload(value:Uint8Array):Void;
}
typedef IUssdReply = {
	var message : Windows.Networking.NetworkOperators.UssdMessage;
	var resultCode : Windows.Networking.NetworkOperators.UssdResultCode;
};
extern class UssdReply {
	var message : Windows.Networking.NetworkOperators.UssdMessage;
	var resultCode : Windows.Networking.NetworkOperators.UssdResultCode;
}
typedef IUssdSession = {
	function sendMessageAndGetReplyAsync(message:Windows.Networking.NetworkOperators.UssdMessage):Windows.Foundation.IAsyncOperation<Windows.Networking.NetworkOperators.UssdReply>;
	function close():Void;
};
typedef IUssdSessionStatics = {
	function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.UssdSession;
	function createFromNetworkInterfaceId(networkInterfaceId:String):Windows.Networking.NetworkOperators.UssdSession;
};
extern class UssdSession {
	function sendMessageAndGetReplyAsync(message:Windows.Networking.NetworkOperators.UssdMessage):Windows.Foundation.IAsyncOperation<Windows.Networking.NetworkOperators.UssdReply>;
	function close():Void;
	static function createFromNetworkAccountId(networkAccountId:String):Windows.Networking.NetworkOperators.UssdSession;
	static function createFromNetworkInterfaceId(networkInterfaceId:String):Windows.Networking.NetworkOperators.UssdSession;
}
