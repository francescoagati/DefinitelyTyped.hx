typedef HistoryAdapter = {
	function bind(element:Dynamic, event:String, callback:Void -> Void):Dynamic;
	function trigger(element:Dynamic, event:String):Dynamic;
	function onDomLoad(callback:Void -> Void):Dynamic;
};
typedef Historyjs = {
	var enabled : Bool;
	function pushState(data:Dynamic, title:String, url:String):Dynamic;
	function replaceState(data:Dynamic, title:String, url:String):Dynamic;
	function getState():HistoryState;
	function getStateByIndex(index:Float):HistoryState;
	function getCurrentIndex():Float;
	function getHash():String;
	var Adapter : HistoryAdapter;
	function back():Void;
	function forward():Void;
	function go(x:Number):Void;
	function log(messages:haxe.extern.Rest<Dynamic>):Void;
	function debug(messages:haxe.extern.Rest<Dynamic>):Void;
	var options : HistoryOptions;
};
typedef HistoryState = {
	@:optional
	var data : Dynamic;
	@:optional
	var title : String;
	var url : String;
};
typedef HistoryOptions = {
	@:optional
	var hashChangeInterval : Float;
	@:optional
	var safariPollInterval : Float;
	@:optional
	var doubleCheckInterval : Float;
	@:optional
	var disableSuid : Bool;
	@:optional
	var storeInterval : Float;
	@:optional
	var busyDelay : Float;
	@:optional
	var debug : Bool;
	@:optional
	var initialTitle : String;
	@:optional
	var html4Mode : Bool;
	@:optional
	var delayInit : Float;
};
