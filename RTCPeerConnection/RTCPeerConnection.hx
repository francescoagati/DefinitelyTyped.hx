typedef RTCConfiguration = {
	var iceServers : Array<RTCIceServer>;
};
typedef RTCIceServer = {
	var url : String;
	@:optional
	var credential : String;
};
typedef MozRTCPeerConnection = {
	>RTCPeerConnection,
};
typedef WebkitRTCPeerConnection = {
	>RTCPeerConnection,
};
typedef RTCOptionalMediaConstraint = {
	@:optional
	var DtlsSrtpKeyAgreement : Bool;
	@:optional
	var RtpDataChannels : Bool;
};
typedef RTCMediaConstraints = {
	@:optional
	var mandatory : RTCMediaOfferConstraints;
	@:optional
	var optional : Array<RTCOptionalMediaConstraint>;
};
typedef RTCMediaOfferConstraints = {
	var offerToReceiveAudio : Bool;
	var offerToReceiveVideo : Bool;
};
typedef RTCSessionDescriptionInit = {
	var type : String;
	var sdp : String;
};
typedef RTCSessionDescription = {
	@:optional
	var type : String;
	@:optional
	var sdp : String;
};
typedef WebkitRTCSessionDescription = {
	>RTCSessionDescription,
	@:optional
	var type : String;
	@:optional
	var sdp : String;
};
typedef MozRTCSessionDescription = {
	>RTCSessionDescription,
	@:optional
	var type : String;
	@:optional
	var sdp : String;
};
typedef RTCDataChannelInit = {
	@:optional
	var ordered : Bool;
	@:optional
	var maxPacketLifeTime : Float;
	@:optional
	var maxRetransmits : Float;
	@:optional
	var protocol : String;
	@:optional
	var negotiated : Bool;
	@:optional
	var id : Float;
};
@:enum abstract RTCSdpType(Int) {
	var offer = 0;
	var pranswer = 1;
	var answer = 2;
}
typedef RTCMessageEvent = {
	var data : Dynamic;
};
@:enum abstract RTCDataChannelState(Int) {
	var connecting = 0;
	var open = 1;
	var closing = 2;
	var closed = 3;
}
typedef RTCDataChannel = {
	>EventTarget,
	var label : String;
	var reliable : Bool;
	var readyState : String;
	var bufferedAmount : Float;
	var binaryType : String;
	var onopen : Event -> Void;
	var onerror : Event -> Void;
	var onclose : Event -> Void;
	var onmessage : RTCMessageEvent -> Void;
	function close():Void;
	@:overload(function(data:ArrayBuffer):Void { })
	@:overload(function(data:ArrayBufferView):Void { })
	@:overload(function(data:Blob):Void { })
	function send(data:String):Void;
};
typedef RTCDataChannelEvent = {
	>Event,
	var channel : RTCDataChannel;
};
typedef RTCIceCandidateEvent = {
	>Event,
	var candidate : RTCIceCandidate;
};
typedef RTCMediaStreamEvent = {
	>Event,
	var stream : MediaStream;
};
typedef EventInit = { };
typedef RTCDataChannelEventInit = {
	>EventInit,
	var channel : RTCDataChannel;
};
typedef RTCVoidCallback = { };
typedef RTCSessionDescriptionCallback = { };
typedef RTCPeerConnectionErrorCallback = { };
@:enum abstract RTCIceGatheringState(Int) {
	var new = 0;
	var gathering = 1;
	var complete = 2;
}
@:enum abstract RTCIceConnectionState(Int) {
	var new = 0;
	var checking = 1;
	var connected = 2;
	var completed = 3;
	var failed = 4;
	var disconnected = 5;
	var closed = 6;
}
@:enum abstract RTCSignalingState(Int) {
	var stable = 0;
	var have-local-offer = 1;
	var have-remote-offer = 2;
	var have-local-pranswer = 3;
	var have-remote-pranswer = 4;
	var closed = 5;
}
typedef RTCStatsReport = {
	function stat(id:String):String;
};
typedef RTCStatsCallback = { };
typedef RTCPeerConnection = {
	function createOffer(successCallback:RTCSessionDescriptionCallback, ?failureCallback:RTCPeerConnectionErrorCallback, ?constraints:RTCMediaConstraints):Void;
	function createAnswer(successCallback:RTCSessionDescriptionCallback, ?failureCallback:RTCPeerConnectionErrorCallback, ?constraints:RTCMediaConstraints):Void;
	function setLocalDescription(description:RTCSessionDescription, ?successCallback:RTCVoidCallback, ?failureCallback:RTCPeerConnectionErrorCallback):Void;
	var localDescription : RTCSessionDescription;
	function setRemoteDescription(description:RTCSessionDescription, ?successCallback:RTCVoidCallback, ?failureCallback:RTCPeerConnectionErrorCallback):Void;
	var remoteDescription : RTCSessionDescription;
	var signalingState : String;
	function updateIce(?configuration:RTCConfiguration, ?constraints:RTCMediaConstraints):Void;
	function addIceCandidate(candidate:RTCIceCandidate, successCallback:Void -> Void, failureCallback:RTCPeerConnectionErrorCallback):Void;
	var iceGatheringState : String;
	var iceConnectionState : String;
	function getLocalStreams():Array<MediaStream>;
	function getRemoteStreams():Array<MediaStream>;
	function createDataChannel(?label:String, ?dataChannelDict:RTCDataChannelInit):RTCDataChannel;
	var ondatachannel : Event -> Void;
	function addStream(stream:MediaStream, ?constraints:RTCMediaConstraints):Void;
	function removeStream(stream:MediaStream):Void;
	function close():Void;
	var onnegotiationneeded : Event -> Void;
	var onconnecting : Event -> Void;
	var onopen : Event -> Void;
	var onaddstream : RTCMediaStreamEvent -> Void;
	var onremovestream : RTCMediaStreamEvent -> Void;
	var onstatechange : Event -> Void;
	var oniceconnectionstatechange : Event -> Void;
	var onicecandidate : RTCIceCandidateEvent -> Void;
	var onidentityresult : Event -> Void;
	var onsignalingstatechange : Event -> Void;
	var getStats : RTCStatsCallback -> RTCPeerConnectionErrorCallback -> Void;
};
typedef RTCIceCandidate = {
	@:optional
	var candidate : String;
	@:optional
	var sdpMid : String;
	@:optional
	var sdpMLineIndex : Float;
};
typedef WebkitRTCIceCandidate = {
	>RTCIceCandidate,
	@:optional
	var candidate : String;
	@:optional
	var sdpMid : String;
	@:optional
	var sdpMLineIndex : Float;
};
typedef MozRTCIceCandidate = {
	>RTCIceCandidate,
	@:optional
	var candidate : String;
	@:optional
	var sdpMid : String;
	@:optional
	var sdpMLineIndex : Float;
};
typedef RTCIceCandidateInit = {
	var candidate : String;
	var sdpMid : String;
	var sdpMLineIndex : Float;
};
typedef PeerConnectionIceEvent = {
	var peer : RTCPeerConnection;
	var candidate : RTCIceCandidate;
};
typedef RTCPeerConnectionConfig = {
	var iceServers : Array<RTCIceServer>;
};
typedef Window = {
	var RTCPeerConnection : RTCPeerConnection;
	var webkitRTCPeerConnection : WebkitRTCPeerConnection;
	var mozRTCPeerConnection : MozRTCPeerConnection;
	var RTCSessionDescription : RTCSessionDescription;
	var webkitRTCSessionDescription : WebkitRTCSessionDescription;
	var mozRTCSessionDescription : MozRTCSessionDescription;
	var RTCIceCandidate : RTCIceCandidate;
	var webkitRTCIceCandidate : WebkitRTCIceCandidate;
	var mozRTCIceCandidate : MozRTCIceCandidate;
	var URL : URL;
};
extern class RTCPeerConnectionTopLevel {
	static var RTCConfiguration : { var prototype : RTCConfiguration; function new():RTCConfiguration; };
	static var RTCIceServer : { var prototype : RTCIceServer; function new():RTCIceServer; };
	static var mozRTCPeerConnection : { var prototype : MozRTCPeerConnection; function new(settings:RTCPeerConnectionConfig, ?constraints:RTCMediaConstraints):MozRTCPeerConnection; };
	static var webkitRTCPeerConnection : { var prototype : WebkitRTCPeerConnection; function new(settings:RTCPeerConnectionConfig, ?constraints:RTCMediaConstraints):WebkitRTCPeerConnection; };
	static var RTCSessionDescription : { var prototype : RTCSessionDescription; function new(?descriptionInitDict:RTCSessionDescriptionInit):RTCSessionDescription; };
	static var webkitRTCSessionDescription : { var prototype : WebkitRTCSessionDescription; function new(?descriptionInitDict:RTCSessionDescriptionInit):WebkitRTCSessionDescription; };
	static var mozRTCSessionDescription : { var prototype : MozRTCSessionDescription; function new(?descriptionInitDict:RTCSessionDescriptionInit):MozRTCSessionDescription; };
	static var RTCDataChannel : { var prototype : RTCDataChannel; function new():RTCDataChannel; };
	static var RTCDataChannelEvent : { var prototype : RTCDataChannelEvent; function new(eventInitDict:RTCDataChannelEventInit):RTCDataChannelEvent; };
	static var RTCPeerConnection : { var prototype : RTCPeerConnection; function new(configuration:RTCConfiguration, ?constraints:RTCMediaConstraints):RTCPeerConnection; };
	static var RTCIceCandidate : { var prototype : RTCIceCandidate; function new(?candidateInitDict:RTCIceCandidate):RTCIceCandidate; };
	static var webkitRTCIceCandidate : { var prototype : WebkitRTCIceCandidate; function new(?candidateInitDict:WebkitRTCIceCandidate):WebkitRTCIceCandidate; };
	static var mozRTCIceCandidate : { var prototype : MozRTCIceCandidate; function new(?candidateInitDict:MozRTCIceCandidate):MozRTCIceCandidate; };
	static var RTCIceCandidateInit : { var prototype : RTCIceCandidateInit; function new():RTCIceCandidateInit; };
	static var PeerConnectionIceEvent : { var prototype : PeerConnectionIceEvent; function new():PeerConnectionIceEvent; };
	static var RTCPeerConnectionConfig : { var prototype : RTCPeerConnectionConfig; function new():RTCPeerConnectionConfig; };
}
