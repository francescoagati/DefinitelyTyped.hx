@:enum abstract HostNameSortOptions(Int) {
	var none = 0;
	var optimizeForLongConnections = 1;
}
@:enum abstract HostNameType(Int) {
	var domainName = 0;
	var ipv4 = 1;
	var ipv6 = 2;
	var bluetooth = 3;
}
typedef IHostNameStatics = {
	function compare(value1:String, value2:String):Float;
};
typedef IHostName = {
	var canonicalName : String;
	var displayName : String;
	var iPInformation : Windows.Networking.Connectivity.IPInformation;
	var rawName : String;
	var type : Windows.Networking.HostNameType;
	function isEqual(hostName:Windows.Networking.HostName):Bool;
};
extern class HostName {
	function new(hostName:String):Void;
	var canonicalName : String;
	var displayName : String;
	var iPInformation : Windows.Networking.Connectivity.IPInformation;
	var rawName : String;
	var type : Windows.Networking.HostNameType;
	function isEqual(hostName:Windows.Networking.HostName):Bool;
	static function compare(value1:String, value2:String):Float;
}
typedef IHostNameFactory = {
	function createHostName(hostName:String):Windows.Networking.HostName;
};
typedef IEndpointPair = {
	var localHostName : Windows.Networking.HostName;
	var localServiceName : String;
	var remoteHostName : Windows.Networking.HostName;
	var remoteServiceName : String;
};
typedef IEndpointPairFactory = {
	function createEndpointPair(localHostName:Windows.Networking.HostName, localServiceName:String, remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Networking.EndpointPair;
};
extern class EndpointPair {
	function new(localHostName:Windows.Networking.HostName, localServiceName:String, remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Void;
	var localHostName : Windows.Networking.HostName;
	var localServiceName : String;
	var remoteHostName : Windows.Networking.HostName;
	var remoteServiceName : String;
}
