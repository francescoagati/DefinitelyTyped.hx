typedef Xip = {
	var urlLimit : Float;
	var xipClientUrl : Dynamic;
	function createFacade():Dynamic;
	function destroyState(stateId:String):Void;
	function fragmentReceived(frag:Dynamic):Void;
	function fragmentReceivedEvent(evt:Dynamic):Void;
	function frameLoaded(stateId:String):Void;
	function makeServerUrl(stateId:Dynamic, cmd:Dynamic, message:Dynamic):String;
	function receive(stateId:String, urlEncodedData:String):Void;
	function send(facade:Dynamic):Dynamic;
	function sendRequest(stateId:Dynamic, encodedData:Dynamic):Void;
	function sendRequestPart(stateId:Dynamic):Void;
	function sendRequestStart(stateId:Dynamic):Void;
	function setServerUrl(stateId:Dynamic, cmd:Dynamic, message:Dynamic):Void;
	function unpackMessage(encodedMessage:Dynamic):Dynamic;
	function XhrIframeFacade(ifpServerUrl:Dynamic):Void;
};
