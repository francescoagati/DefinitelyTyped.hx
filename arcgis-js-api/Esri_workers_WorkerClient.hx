extern class WorkerClient {
	var returnDeferreds : Bool;
	var worker : Worker;
	function new(path:String, ?deferreds:Bool):Void;
	function addWorkerCallback(module:String, ?name:String):Dynamic;
	@:overload(function(paths:Array<String>):Dynamic { })
	function importScripts(paths:String):Dynamic;
	@:overload(function(msg:Array<Dynamic>, ?transfers:Array<Dynamic>):Dynamic { })
	function postMessage(msg:Dynamic, ?transfers:Array<Dynamic>):Dynamic;
	@:overload(function(paths:Array<String>):Void { })
	function setWorker(paths:String):Void;
	function terminate():Void;
}
