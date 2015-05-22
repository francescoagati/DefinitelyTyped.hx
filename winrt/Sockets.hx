@:enum abstract ControlChannelTriggerStatus(Int) {
	var hardwareSlotRequested = 0;
	var softwareSlotAllocated = 1;
	var hardwareSlotAllocated = 2;
	var policyError = 3;
	var systemError = 4;
	var transportDisconnected = 5;
	var serviceUnavailable = 6;
}
@:enum abstract ControlChannelTriggerResourceType(Int) {
	var requestSoftwareSlot = 0;
	var requestHardwareSlot = 1;
}
@:enum abstract ControlChannelTriggerResetReason(Int) {
	var fastUserSwitched = 0;
	var lowPowerExit = 1;
}
typedef IControlChannelTrigger = {
	>Windows.Foundation.IClosable,
	var controlChannelTriggerId : String;
	var currentKeepAliveIntervalInMinutes : Float;
	var keepAliveTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger;
	var pushNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger;
	var serverKeepAliveIntervalInMinutes : Float;
	var transportObject : Dynamic;
	function usingTransport(transport:Dynamic):Void;
	function waitForPushEnabled():Windows.Networking.Sockets.ControlChannelTriggerStatus;
	function decreaseNetworkKeepAliveInterval():Void;
	function flushTransport():Void;
};
typedef IControlChannelTriggerFactory = {
	@:overload(function(channelId:String, serverKeepAliveIntervalInMinutes:Float, resourceRequestType:Windows.Networking.Sockets.ControlChannelTriggerResourceType):Windows.Networking.Sockets.ControlChannelTrigger { })
	function createControlChannelTrigger(channelId:String, serverKeepAliveIntervalInMinutes:Float):Windows.Networking.Sockets.ControlChannelTrigger;
};
extern class ControlChannelTrigger {
	@:overload(function(channelId:String, serverKeepAliveIntervalInMinutes:Float, resourceRequestType:Windows.Networking.Sockets.ControlChannelTriggerResourceType):Void { })
	function new(channelId:String, serverKeepAliveIntervalInMinutes:Float):Void;
	var controlChannelTriggerId : String;
	var currentKeepAliveIntervalInMinutes : Float;
	var keepAliveTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger;
	var pushNotificationTrigger : Windows.ApplicationModel.Background.IBackgroundTrigger;
	var serverKeepAliveIntervalInMinutes : Float;
	var transportObject : Dynamic;
	function usingTransport(transport:Dynamic):Void;
	function waitForPushEnabled():Windows.Networking.Sockets.ControlChannelTriggerStatus;
	function decreaseNetworkKeepAliveInterval():Void;
	function flushTransport():Void;
	function dispose():Void;
	function close():Void;
}
typedef IControlChannelTriggerEventDetails = {
	var controlChannelTrigger : Windows.Networking.Sockets.ControlChannelTrigger;
};
typedef IControlChannelTriggerResetEventDetails = {
	var hardwareSlotReset : Bool;
	var resetReason : Windows.Networking.Sockets.ControlChannelTriggerResetReason;
	var softwareSlotReset : Bool;
};
@:enum abstract SocketMessageType(Int) {
	var binary = 0;
	var utf8 = 1;
}
@:enum abstract SocketProtectionLevel(Int) {
	var plainSocket = 0;
	var ssl = 1;
	var sslAllowNullEncryption = 2;
}
@:enum abstract SocketQualityOfService(Int) {
	var normal = 0;
	var lowLatency = 1;
}
@:enum abstract SocketErrorStatus(Int) {
	var unknown = 0;
	var operationAborted = 1;
	var httpInvalidServerResponse = 2;
	var connectionTimedOut = 3;
	var addressFamilyNotSupported = 4;
	var socketTypeNotSupported = 5;
	var hostNotFound = 6;
	var noDataRecordOfRequestedType = 7;
	var nonAuthoritativeHostNotFound = 8;
	var classTypeNotFound = 9;
	var addressAlreadyInUse = 10;
	var cannotAssignRequestedAddress = 11;
	var connectionRefused = 12;
	var networkIsUnreachable = 13;
	var unreachableHost = 14;
	var networkIsDown = 15;
	var networkDroppedConnectionOnReset = 16;
	var softwareCausedConnectionAbort = 17;
	var connectionResetByPeer = 18;
	var hostIsDown = 19;
	var noAddressesFound = 20;
	var tooManyOpenFiles = 21;
	var messageTooLong = 22;
	var certificateExpired = 23;
	var certificateUntrustedRoot = 24;
	var certificateCommonNameIsIncorrect = 25;
	var certificateWrongUsage = 26;
	var certificateRevoked = 27;
	var certificateNoRevocationCheck = 28;
	var certificateRevocationServerOffline = 29;
	var certificateIsInvalid = 30;
}
typedef RoundTripTimeStatistics = {
	var variance : Float;
	var max : Float;
	var min : Float;
	var sum : Float;
};
typedef BandwidthStatistics = {
	var outboundBitsPerSecond : Float;
	var inboundBitsPerSecond : Float;
	var outboundBitsPerSecondInstability : Float;
	var inboundBitsPerSecondInstability : Float;
	var outboundBandwidthPeaked : Bool;
	var inboundBandwidthPeaked : Bool;
};
typedef IDatagramSocketMessageReceivedEventArgs = {
	var localAddress : Windows.Networking.HostName;
	var remoteAddress : Windows.Networking.HostName;
	var remotePort : String;
	function getDataReader():Windows.Storage.Streams.DataReader;
	function getDataStream():Windows.Storage.Streams.IInputStream;
};
typedef IMessageWebSocketMessageReceivedEventArgs = {
	var messageType : Windows.Networking.Sockets.SocketMessageType;
	function getDataReader():Windows.Storage.Streams.DataReader;
	function getDataStream():Windows.Storage.Streams.IInputStream;
};
typedef IWebSocketClosedEventArgs = {
	var code : Float;
	var reason : String;
};
typedef IDatagramSocketInformation = {
	var localAddress : Windows.Networking.HostName;
	var localPort : String;
	var remoteAddress : Windows.Networking.HostName;
	var remotePort : String;
};
typedef IDatagramSocketControl = {
	var outboundUnicastHopLimit : Float;
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
};
typedef IDatagramSocketStatics = {
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String, sortOptions:Windows.Networking.HostNameSortOptions):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>> { })
	function getEndpointPairsAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>>;
};
typedef IDatagramSocket = {
	>Windows.Foundation.IClosable,
	var control : Windows.Networking.Sockets.DatagramSocketControl;
	var information : Windows.Networking.Sockets.DatagramSocketInformation;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	@:overload(function(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncAction { })
	function connectAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncAction;
	function bindServiceNameAsync(localServiceName:String):Windows.Foundation.IAsyncAction;
	function bindEndpointAsync(localHostName:Windows.Networking.HostName, localServiceName:String):Windows.Foundation.IAsyncAction;
	function joinMulticastGroup(host:Windows.Networking.HostName):Void;
	@:overload(function(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IOutputStream> { })
	function getOutputStreamAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IOutputStream>;
	var onmessagereceived : Dynamic;
};
extern class DatagramSocketControl {
	var outboundUnicastHopLimit : Float;
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
}
extern class DatagramSocketInformation {
	var localAddress : Windows.Networking.HostName;
	var localPort : String;
	var remoteAddress : Windows.Networking.HostName;
	var remotePort : String;
}
extern class DatagramSocket {
	var control : Windows.Networking.Sockets.DatagramSocketControl;
	var information : Windows.Networking.Sockets.DatagramSocketInformation;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	@:overload(function(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncAction { })
	function connectAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncAction;
	function bindServiceNameAsync(localServiceName:String):Windows.Foundation.IAsyncAction;
	function bindEndpointAsync(localHostName:Windows.Networking.HostName, localServiceName:String):Windows.Foundation.IAsyncAction;
	function joinMulticastGroup(host:Windows.Networking.HostName):Void;
	@:overload(function(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IOutputStream> { })
	function getOutputStreamAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IOutputStream>;
	var onmessagereceived : Dynamic;
	function dispose():Void;
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String, sortOptions:Windows.Networking.HostNameSortOptions):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>> { })
	static function getEndpointPairsAsync(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.EndpointPair>>;
	function close():Void;
}
extern class DatagramSocketMessageReceivedEventArgs {
	var localAddress : Windows.Networking.HostName;
	var remoteAddress : Windows.Networking.HostName;
	var remotePort : String;
	function getDataReader():Windows.Storage.Streams.DataReader;
	function getDataStream():Windows.Storage.Streams.IInputStream;
}
typedef IStreamSocketInformation = {
	var bandwidthStatistics : Windows.Networking.Sockets.BandwidthStatistics;
	var localAddress : Windows.Networking.HostName;
	var localPort : String;
	var protectionLevel : Windows.Networking.Sockets.SocketProtectionLevel;
	var remoteAddress : Windows.Networking.HostName;
	var remoteHostName : Windows.Networking.HostName;
	var remotePort : String;
	var remoteServiceName : String;
	var roundTripTimeStatistics : Windows.Networking.Sockets.RoundTripTimeStatistics;
	var sessionKey : Windows.Storage.Streams.IBuffer;
};
typedef IStreamSocketControl = {
	var keepAlive : Bool;
	var noDelay : Bool;
	var outboundBufferSizeInBytes : Float;
	var outboundUnicastHopLimit : Float;
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
};
typedef IStreamSocket = {
	>Windows.Foundation.IClosable,
	var control : Windows.Networking.Sockets.StreamSocketControl;
	var information : Windows.Networking.Sockets.StreamSocketInformation;
	var inputStream : Windows.Storage.Streams.IInputStream;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncAction { })
	@:overload(function(endpointPair:Windows.Networking.EndpointPair, protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel):Windows.Foundation.IAsyncAction { })
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String, protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel):Windows.Foundation.IAsyncAction { })
	function connectAsync(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncAction;
	function upgradeToSslAsync(protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel, validationHostName:Windows.Networking.HostName):Windows.Foundation.IAsyncAction;
};
extern class StreamSocketControl {
	var keepAlive : Bool;
	var noDelay : Bool;
	var outboundBufferSizeInBytes : Float;
	var outboundUnicastHopLimit : Float;
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
}
extern class StreamSocketInformation {
	var bandwidthStatistics : Windows.Networking.Sockets.BandwidthStatistics;
	var localAddress : Windows.Networking.HostName;
	var localPort : String;
	var protectionLevel : Windows.Networking.Sockets.SocketProtectionLevel;
	var remoteAddress : Windows.Networking.HostName;
	var remoteHostName : Windows.Networking.HostName;
	var remotePort : String;
	var remoteServiceName : String;
	var roundTripTimeStatistics : Windows.Networking.Sockets.RoundTripTimeStatistics;
	var sessionKey : Windows.Storage.Streams.IBuffer;
}
typedef IStreamSocketListenerControl = {
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
};
typedef IStreamSocketListenerInformation = {
	var localPort : String;
};
typedef IStreamSocketListenerConnectionReceivedEventArgs = {
	var socket : Windows.Networking.Sockets.StreamSocket;
};
extern class StreamSocket {
	var control : Windows.Networking.Sockets.StreamSocketControl;
	var information : Windows.Networking.Sockets.StreamSocketInformation;
	var inputStream : Windows.Storage.Streams.IInputStream;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String):Windows.Foundation.IAsyncAction { })
	@:overload(function(endpointPair:Windows.Networking.EndpointPair, protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel):Windows.Foundation.IAsyncAction { })
	@:overload(function(remoteHostName:Windows.Networking.HostName, remoteServiceName:String, protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel):Windows.Foundation.IAsyncAction { })
	function connectAsync(endpointPair:Windows.Networking.EndpointPair):Windows.Foundation.IAsyncAction;
	function upgradeToSslAsync(protectionLevel:Windows.Networking.Sockets.SocketProtectionLevel, validationHostName:Windows.Networking.HostName):Windows.Foundation.IAsyncAction;
	function dispose():Void;
	function close():Void;
}
typedef IStreamSocketListener = {
	>Windows.Foundation.IClosable,
	var control : Windows.Networking.Sockets.StreamSocketListenerControl;
	var information : Windows.Networking.Sockets.StreamSocketListenerInformation;
	function bindServiceNameAsync(localServiceName:String):Windows.Foundation.IAsyncAction;
	function bindEndpointAsync(localHostName:Windows.Networking.HostName, localServiceName:String):Windows.Foundation.IAsyncAction;
	var onconnectionreceived : Dynamic;
};
extern class StreamSocketListenerControl {
	var qualityOfService : Windows.Networking.Sockets.SocketQualityOfService;
}
extern class StreamSocketListenerInformation {
	var localPort : String;
}
extern class StreamSocketListener {
	var control : Windows.Networking.Sockets.StreamSocketListenerControl;
	var information : Windows.Networking.Sockets.StreamSocketListenerInformation;
	function bindServiceNameAsync(localServiceName:String):Windows.Foundation.IAsyncAction;
	function bindEndpointAsync(localHostName:Windows.Networking.HostName, localServiceName:String):Windows.Foundation.IAsyncAction;
	var onconnectionreceived : Dynamic;
	function dispose():Void;
	function close():Void;
}
extern class StreamSocketListenerConnectionReceivedEventArgs {
	var socket : Windows.Networking.Sockets.StreamSocket;
}
typedef IWebSocketControl = {
	var outboundBufferSizeInBytes : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var supportedProtocols : Windows.Foundation.Collections.IVector<String>;
};
typedef IWebSocketInformation = {
	var bandwidthStatistics : Windows.Networking.Sockets.BandwidthStatistics;
	var localAddress : Windows.Networking.HostName;
	var protocol : String;
};
typedef IWebSocket = {
	>Windows.Foundation.IClosable,
	var outputStream : Windows.Storage.Streams.IOutputStream;
	function connectAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncAction;
	function setRequestHeader(headerName:String, headerValue:String):Void;
	var onclosed : Dynamic;
	@:overload(function(code:Float, reason:String):Void { })
	function close():Void;
};
extern class WebSocketClosedEventArgs {
	var code : Float;
	var reason : String;
}
typedef IMessageWebSocketControl = {
	>Windows.Networking.Sockets.IWebSocketControl,
	var maxMessageSize : Float;
	var messageType : Windows.Networking.Sockets.SocketMessageType;
};
typedef IMessageWebSocket = {
	>Windows.Networking.Sockets.IWebSocket,
	>Windows.Foundation.IClosable,
	var control : Windows.Networking.Sockets.MessageWebSocketControl;
	var information : Windows.Networking.Sockets.MessageWebSocketInformation;
	var onmessagereceived : Dynamic;
	@:overload(function(code:Float, reason:String):Void { })
	function close():Void;
};
extern class MessageWebSocketControl {
	var maxMessageSize : Float;
	var messageType : Windows.Networking.Sockets.SocketMessageType;
	var outboundBufferSizeInBytes : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var supportedProtocols : Windows.Foundation.Collections.IVector<String>;
}
extern class MessageWebSocketInformation {
	var bandwidthStatistics : Windows.Networking.Sockets.BandwidthStatistics;
	var localAddress : Windows.Networking.HostName;
	var protocol : String;
}
extern class MessageWebSocket {
	var control : Windows.Networking.Sockets.MessageWebSocketControl;
	var information : Windows.Networking.Sockets.MessageWebSocketInformation;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	var onmessagereceived : Dynamic;
	function connectAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncAction;
	function setRequestHeader(headerName:String, headerValue:String):Void;
	var onclosed : Dynamic;
	@:overload(function():Void { })
	function close(code:Float, reason:String):Void;
	function dispose():Void;
}
extern class MessageWebSocketMessageReceivedEventArgs {
	var messageType : Windows.Networking.Sockets.SocketMessageType;
	function getDataReader():Windows.Storage.Streams.DataReader;
	function getDataStream():Windows.Storage.Streams.IInputStream;
}
typedef IStreamWebSocketControl = {
	>Windows.Networking.Sockets.IWebSocketControl,
	var noDelay : Bool;
};
typedef IStreamWebSocket = {
	>Windows.Networking.Sockets.IWebSocket,
	>Windows.Foundation.IClosable,
	var control : Windows.Networking.Sockets.StreamWebSocketControl;
	var information : Windows.Networking.Sockets.StreamWebSocketInformation;
	var inputStream : Windows.Storage.Streams.IInputStream;
	@:overload(function(code:Float, reason:String):Void { })
	function close():Void;
};
extern class StreamWebSocketControl {
	var noDelay : Bool;
	var outboundBufferSizeInBytes : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var supportedProtocols : Windows.Foundation.Collections.IVector<String>;
}
extern class StreamWebSocketInformation {
	var bandwidthStatistics : Windows.Networking.Sockets.BandwidthStatistics;
	var localAddress : Windows.Networking.HostName;
	var protocol : String;
}
typedef ISocketErrorStatics = {
	function getStatus(hresult:Float):Windows.Networking.Sockets.SocketErrorStatus;
};
typedef IWebSocketErrorStatics = {
	function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
};
extern class StreamWebSocket {
	var control : Windows.Networking.Sockets.StreamWebSocketControl;
	var information : Windows.Networking.Sockets.StreamWebSocketInformation;
	var inputStream : Windows.Storage.Streams.IInputStream;
	var outputStream : Windows.Storage.Streams.IOutputStream;
	function connectAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncAction;
	function setRequestHeader(headerName:String, headerValue:String):Void;
	var onclosed : Dynamic;
	@:overload(function():Void { })
	function close(code:Float, reason:String):Void;
	function dispose():Void;
}
extern class WebSocketKeepAlive {
	function run(taskInstance:Windows.ApplicationModel.Background.IBackgroundTaskInstance):Void;
}
extern class SocketError {
	static function getStatus(hresult:Float):Windows.Networking.Sockets.SocketErrorStatus;
}
extern class WebSocketError {
	static function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
}
