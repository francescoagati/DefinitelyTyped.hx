typedef IProximityMessage = {
	var data : Windows.Storage.Streams.IBuffer;
	var dataAsString : String;
	var messageType : String;
	var subscriptionId : Float;
};
extern class ProximityMessage {
	var data : Windows.Storage.Streams.IBuffer;
	var dataAsString : String;
	var messageType : String;
	var subscriptionId : Float;
}
typedef MessageReceivedHandler = { };
extern class ProximityDevice {
	var bitsPerSecond : Float;
	var deviceId : String;
	var maxMessageBytes : Float;
	function subscribeForMessage(messageType:String, messageReceivedHandler:Windows.Networking.Proximity.MessageReceivedHandler):Float;
	@:overload(function(messageType:String, message:String, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishMessage(messageType:String, message:String):Float;
	@:overload(function(messageType:String, message:Windows.Storage.Streams.IBuffer, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishBinaryMessage(messageType:String, message:Windows.Storage.Streams.IBuffer):Float;
	@:overload(function(message:Windows.Foundation.Uri, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishUriMessage(message:Windows.Foundation.Uri):Float;
	function stopSubscribingForMessage(subscriptionId:Float):Void;
	function stopPublishingMessage(messageId:Float):Void;
	var ondevicearrived : Dynamic;
	var ondevicedeparted : Dynamic;
	static function getDeviceSelector():String;
	static function getDefault():Windows.Networking.Proximity.ProximityDevice;
	static function fromId(deviceInterfaceId:String):Windows.Networking.Proximity.ProximityDevice;
}
typedef MessageTransmittedHandler = { };
typedef DeviceArrivedEventHandler = { };
typedef DeviceDepartedEventHandler = { };
typedef IProximityDevice = {
	var bitsPerSecond : Float;
	var deviceId : String;
	var maxMessageBytes : Float;
	function subscribeForMessage(messageType:String, messageReceivedHandler:Windows.Networking.Proximity.MessageReceivedHandler):Float;
	@:overload(function(messageType:String, message:String, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishMessage(messageType:String, message:String):Float;
	@:overload(function(messageType:String, message:Windows.Storage.Streams.IBuffer, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishBinaryMessage(messageType:String, message:Windows.Storage.Streams.IBuffer):Float;
	@:overload(function(message:Windows.Foundation.Uri, messageTransmittedHandler:Windows.Networking.Proximity.MessageTransmittedHandler):Float { })
	function publishUriMessage(message:Windows.Foundation.Uri):Float;
	function stopSubscribingForMessage(subscriptionId:Float):Void;
	function stopPublishingMessage(messageId:Float):Void;
	var ondevicearrived : Dynamic;
	var ondevicedeparted : Dynamic;
};
typedef IProximityDeviceStatics = {
	function getDeviceSelector():String;
	function getDefault():Windows.Networking.Proximity.ProximityDevice;
	function fromId(deviceInterfaceId:String):Windows.Networking.Proximity.ProximityDevice;
};
@:enum abstract TriggeredConnectState(Int) {
	var peerFound = 0;
	var listening = 1;
	var connecting = 2;
	var completed = 3;
	var canceled = 4;
	var failed = 5;
}
typedef ITriggeredConnectionStateChangedEventArgs = {
	var id : Float;
	var socket : Windows.Networking.Sockets.StreamSocket;
	var state : Windows.Networking.Proximity.TriggeredConnectState;
};
extern class TriggeredConnectionStateChangedEventArgs {
	var id : Float;
	var socket : Windows.Networking.Sockets.StreamSocket;
	var state : Windows.Networking.Proximity.TriggeredConnectState;
}
typedef IPeerInformation = {
	var displayName : String;
};
extern class PeerInformation {
	var displayName : String;
}
typedef IConnectionRequestedEventArgs = {
	var peerInformation : Windows.Networking.Proximity.PeerInformation;
};
extern class ConnectionRequestedEventArgs {
	var peerInformation : Windows.Networking.Proximity.PeerInformation;
}
@:enum abstract PeerDiscoveryTypes(Int) {
	var none = 0;
	var browse = 1;
	var triggered = 2;
}
typedef IPeerFinderStatics = {
	var allowBluetooth : Bool;
	var allowInfrastructure : Bool;
	var allowWiFiDirect : Bool;
	var alternateIdentities : Windows.Foundation.Collections.IMap<String, String>;
	var displayName : String;
	var supportedDiscoveryTypes : Windows.Networking.Proximity.PeerDiscoveryTypes;
	@:overload(function(peerMessage:String):Void { })
	function start():Void;
	function stop():Void;
	var ontriggeredconnectionstatechanged : Dynamic;
	var onconnectionrequested : Dynamic;
	function findAllPeersAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.Proximity.PeerInformation>>;
	function connectAsync(peerInformation:Windows.Networking.Proximity.PeerInformation):Windows.Foundation.IAsyncOperation<Windows.Networking.Sockets.StreamSocket>;
};
extern class PeerFinder {
	static var allowBluetooth : Bool;
	static var allowInfrastructure : Bool;
	static var allowWiFiDirect : Bool;
	static var alternateIdentities : Windows.Foundation.Collections.IMap<String, String>;
	static var displayName : String;
	static var supportedDiscoveryTypes : Windows.Networking.Proximity.PeerDiscoveryTypes;
	@:overload(function(peerMessage:String):Void { })
	static function start():Void;
	static function stop():Void;
	static var ontriggeredconnectionstatechanged : Dynamic;
	static var onconnectionrequested : Dynamic;
	static function findAllPeersAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.Proximity.PeerInformation>>;
	static function connectAsync(peerInformation:Windows.Networking.Proximity.PeerInformation):Windows.Foundation.IAsyncOperation<Windows.Networking.Sockets.StreamSocket>;
}
