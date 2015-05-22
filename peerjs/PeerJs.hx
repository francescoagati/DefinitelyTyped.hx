typedef PeerJSOption = {
	@:optional
	var key : String;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var path : String;
	@:optional
	var secure : Bool;
	@:optional
	var config : RTCPeerConnectionConfig;
	@:optional
	var debug : Float;
};
typedef PeerConnectOption = {
	@:optional
	var label : String;
	@:optional
	var metadata : Dynamic;
	@:optional
	var serialization : String;
	@:optional
	var reliable : Bool;
};
typedef DataConnection = {
	function send(data:Dynamic):Void;
	function close():Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Open, cb:Void -> Void):Void { })
	@:overload(function(event:Close, cb:Void -> Void):Void { })
	@:overload(function(event:Error, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	var dataChannel : RTCDataChannel;
	var label : String;
	var metadata : Dynamic;
	var open : Bool;
	var peerConnection : Dynamic;
	var peer : String;
	var reliable : Bool;
	var serialization : String;
	var type : String;
	var buffSize : Float;
};
typedef MediaConnection = {
	function answer(?stream:Dynamic):Void;
	function close():Void;
	@:overload(function(event:Stream, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Close, cb:Void -> Void):Void { })
	@:overload(function(event:Error, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	var open : Bool;
	var metadata : Dynamic;
	var peer : String;
	var type : String;
};
typedef UtilSupportsObj = {
	var audioVideo : Bool;
	var data : Bool;
	var binary : Bool;
	var reliable : Bool;
};
typedef Util = {
	var browser : String;
	var supports : UtilSupportsObj;
};
typedef Peer = {
	function connect(id:String, ?options:PeerJs.PeerJSOption):PeerJs.DataConnection;
	function call(id:String, stream:Dynamic, ?options:Dynamic):PeerJs.MediaConnection;
	@:overload(function(event:Open, cb:String -> Void):Void { })
	@:overload(function(event:Connection, cb:PeerJs.DataConnection -> Void):Void { })
	@:overload(function(event:Call, cb:PeerJs.MediaConnection -> Void):Void { })
	@:overload(function(event:Close, cb:Void -> Void):Void { })
	@:overload(function(event:Disconnected, cb:Void -> Void):Void { })
	@:overload(function(event:Error, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	function disconnect():Void;
	function reconnect():Void;
	function destroy():Void;
	function getConnection(peer:Peer, id:String):Dynamic;
	function listAllPeers(callback:Array<String> -> Void):Void;
	var id : String;
	var connections : Dynamic;
	var disconnected : Bool;
	var destroyed : Bool;
};
