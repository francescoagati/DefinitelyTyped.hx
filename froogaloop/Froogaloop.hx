typedef VimeoParams = {
	var name : String;
	var value : Dynamic;
};
typedef VimeoPlayerAPI = { };
typedef VimeoPlayer = {
	var api : VimeoPlayerAPI;
	function addEvent(eventName:String, callback:Dynamic -> Void):Dynamic;
	function removeEvent(eventName:String):Void;
	function postMessage(method:String, params:Array<VimeoParams>, target:Dynamic):Void;
	function onMessagReceived(event:Dynamic):Dynamic;
	function storeCallback(eventName:String, callback:Dynamic, target_id:String):Dynamic;
	function getCallback(eventName:String, target_id:String):Dynamic;
	function removeCallback(eventName:String, target_id:String):Dynamic;
	function getDomainFromUrl(url:String):String;
};
extern class FroogaloopTopLevel {
	static var $f : VimeoPlayerAPI;
}
