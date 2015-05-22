extern class IPInformation {
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var prefixLength : Float;
}
@:enum abstract NetworkCostType(Int) {
	var unknown = 0;
	var unrestricted = 1;
	var fixed = 2;
	var variable = 3;
}
@:enum abstract NetworkConnectivityLevel(Int) {
	var none = 0;
	var localAccess = 1;
	var constrainedInternetAccess = 2;
	var internetAccess = 3;
}
@:enum abstract NetworkTypes(Int) {
	var none = 0;
	var internet = 1;
	var privateNetwork = 2;
}
@:enum abstract RoamingStates(Int) {
	var none = 0;
	var notRoaming = 1;
	var roaming = 2;
}
@:enum abstract NetworkAuthenticationType(Int) {
	var none = 0;
	var unknown = 1;
	var open80211 = 2;
	var sharedKey80211 = 3;
	var wpa = 4;
	var wpaPsk = 5;
	var wpaNone = 6;
	var rsna = 7;
	var rsnaPsk = 8;
	var ihv = 9;
}
@:enum abstract NetworkEncryptionType(Int) {
	var none = 0;
	var unknown = 1;
	var wep = 2;
	var wep40 = 3;
	var wep104 = 4;
	var tkip = 5;
	var ccmp = 6;
	var wpaUseGroup = 7;
	var rsnUseGroup = 8;
	var ihv = 9;
}
typedef IDataUsage = {
	var bytesReceived : Float;
	var bytesSent : Float;
};
typedef IDataPlanUsage = {
	var lastSyncTime : Date;
	var megabytesUsed : Float;
};
typedef IDataPlanStatus = {
	var dataLimitInMegabytes : Float;
	var dataPlanUsage : Windows.Networking.Connectivity.DataPlanUsage;
	var inboundBitsPerSecond : Float;
	var maxTransferSizeInMegabytes : Float;
	var nextBillingCycle : Date;
	var outboundBitsPerSecond : Float;
};
extern class DataPlanUsage {
	var lastSyncTime : Date;
	var megabytesUsed : Float;
}
typedef IConnectionCost = {
	var approachingDataLimit : Bool;
	var networkCostType : Windows.Networking.Connectivity.NetworkCostType;
	var overDataLimit : Bool;
	var roaming : Bool;
};
typedef INetworkSecuritySettings = {
	var networkAuthenticationType : Windows.Networking.Connectivity.NetworkAuthenticationType;
	var networkEncryptionType : Windows.Networking.Connectivity.NetworkEncryptionType;
};
typedef IConnectionProfile = {
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var networkSecuritySettings : Windows.Networking.Connectivity.NetworkSecuritySettings;
	var profileName : String;
	function getNetworkConnectivityLevel():Windows.Networking.Connectivity.NetworkConnectivityLevel;
	function getNetworkNames():Windows.Foundation.Collections.IVectorView<String>;
	function getConnectionCost():Windows.Networking.Connectivity.ConnectionCost;
	function getDataPlanStatus():Windows.Networking.Connectivity.DataPlanStatus;
	@:overload(function(StartTime:Date, EndTime:Date, States:Windows.Networking.Connectivity.RoamingStates):Windows.Networking.Connectivity.DataUsage { })
	function getLocalUsage(StartTime:Date, EndTime:Date):Windows.Networking.Connectivity.DataUsage;
};
extern class ConnectionCost {
	var approachingDataLimit : Bool;
	var networkCostType : Windows.Networking.Connectivity.NetworkCostType;
	var overDataLimit : Bool;
	var roaming : Bool;
}
extern class DataPlanStatus {
	var dataLimitInMegabytes : Float;
	var dataPlanUsage : Windows.Networking.Connectivity.DataPlanUsage;
	var inboundBitsPerSecond : Float;
	var maxTransferSizeInMegabytes : Float;
	var nextBillingCycle : Date;
	var outboundBitsPerSecond : Float;
}
extern class NetworkAdapter {
	var ianaInterfaceType : Float;
	var inboundMaxBitsPerSecond : Float;
	var networkAdapterId : String;
	var networkItem : Windows.Networking.Connectivity.NetworkItem;
	var outboundMaxBitsPerSecond : Float;
	function getConnectedProfileAsync():Windows.Foundation.IAsyncOperation<Windows.Networking.Connectivity.ConnectionProfile>;
}
extern class DataUsage {
	var bytesReceived : Float;
	var bytesSent : Float;
}
extern class NetworkSecuritySettings {
	var networkAuthenticationType : Windows.Networking.Connectivity.NetworkAuthenticationType;
	var networkEncryptionType : Windows.Networking.Connectivity.NetworkEncryptionType;
}
typedef ILanIdentifierData = {
	var type : Float;
	var value : Windows.Foundation.Collections.IVectorView<Float>;
};
typedef ILanIdentifier = {
	var infrastructureId : Windows.Networking.Connectivity.LanIdentifierData;
	var networkAdapterId : String;
	var portId : Windows.Networking.Connectivity.LanIdentifierData;
};
extern class LanIdentifierData {
	var type : Float;
	var value : Windows.Foundation.Collections.IVectorView<Float>;
}
typedef NetworkStatusChangedEventHandler = { };
typedef INetworkInformationStatics = {
	function getConnectionProfiles():Windows.Foundation.Collections.IVectorView<Windows.Networking.Connectivity.ConnectionProfile>;
	function getInternetConnectionProfile():Windows.Networking.Connectivity.ConnectionProfile;
	function getLanIdentifiers():Windows.Foundation.Collections.IVectorView<Windows.Networking.Connectivity.LanIdentifier>;
	function getHostNames():Windows.Foundation.Collections.IVectorView<Windows.Networking.HostName>;
	function getProxyConfigurationAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Networking.Connectivity.ProxyConfiguration>;
	function getSortedEndpointPairs(destinationList:Windows.Foundation.Collections.IIterable<Windows.Networking.EndpointPair>, sortOptions:Windows.Networking.HostNameSortOptions):Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>;
	var onnetworkstatuschanged : Dynamic;
};
extern class ConnectionProfile {
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var networkSecuritySettings : Windows.Networking.Connectivity.NetworkSecuritySettings;
	var profileName : String;
	function getNetworkConnectivityLevel():Windows.Networking.Connectivity.NetworkConnectivityLevel;
	function getNetworkNames():Windows.Foundation.Collections.IVectorView<String>;
	function getConnectionCost():Windows.Networking.Connectivity.ConnectionCost;
	function getDataPlanStatus():Windows.Networking.Connectivity.DataPlanStatus;
	@:overload(function(StartTime:Date, EndTime:Date, States:Windows.Networking.Connectivity.RoamingStates):Windows.Networking.Connectivity.DataUsage { })
	function getLocalUsage(StartTime:Date, EndTime:Date):Windows.Networking.Connectivity.DataUsage;
}
extern class LanIdentifier {
	var infrastructureId : Windows.Networking.Connectivity.LanIdentifierData;
	var networkAdapterId : String;
	var portId : Windows.Networking.Connectivity.LanIdentifierData;
}
extern class ProxyConfiguration {
	var canConnectDirectly : Bool;
	var proxyUris : Windows.Foundation.Collections.IVectorView<Windows.Foundation.Uri>;
}
typedef INetworkItem = {
	var networkId : String;
	function getNetworkTypes():Windows.Networking.Connectivity.NetworkTypes;
};
typedef INetworkAdapter = {
	var ianaInterfaceType : Float;
	var inboundMaxBitsPerSecond : Float;
	var networkAdapterId : String;
	var networkItem : Windows.Networking.Connectivity.NetworkItem;
	var outboundMaxBitsPerSecond : Float;
	function getConnectedProfileAsync():Windows.Foundation.IAsyncOperation<Windows.Networking.Connectivity.ConnectionProfile>;
};
extern class NetworkItem {
	var networkId : String;
	function getNetworkTypes():Windows.Networking.Connectivity.NetworkTypes;
}
typedef IIPInformation = {
	var networkAdapter : Windows.Networking.Connectivity.NetworkAdapter;
	var prefixLength : Float;
};
typedef IProxyConfiguration = {
	var canConnectDirectly : Bool;
	var proxyUris : Windows.Foundation.Collections.IVectorView<Windows.Foundation.Uri>;
};
extern class NetworkInformation {
	static function getConnectionProfiles():Windows.Foundation.Collections.IVectorView<Windows.Networking.Connectivity.ConnectionProfile>;
	static function getInternetConnectionProfile():Windows.Networking.Connectivity.ConnectionProfile;
	static function getLanIdentifiers():Windows.Foundation.Collections.IVectorView<Windows.Networking.Connectivity.LanIdentifier>;
	static function getHostNames():Windows.Foundation.Collections.IVectorView<Windows.Networking.HostName>;
	static function getProxyConfigurationAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Networking.Connectivity.ProxyConfiguration>;
	static function getSortedEndpointPairs(destinationList:Windows.Foundation.Collections.IIterable<Windows.Networking.EndpointPair>, sortOptions:Windows.Networking.HostNameSortOptions):Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>;
	static var onnetworkstatuschanged : Dynamic;
}
