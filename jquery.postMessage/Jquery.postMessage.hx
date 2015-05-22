typedef JQueryStatic = {
	@:overload(function(message:{ }, targetUrl:String, ?target:Window):Void { })
	function postMessage(message:String, targetUrl:String, ?target:Window):Void;
	@:overload(function(callback:MessageEvent -> Dynamic, ?sourceOrigin:String -> Bool, ?delay:Float):Void { })
	function receiveMessage(callback:MessageEvent -> Dynamic, ?sourceOrigin:String, ?delay:Float):Void;
};
