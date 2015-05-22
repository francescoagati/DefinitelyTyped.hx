typedef Navigator = {
	var mozApps : Apps;
};
typedef Apps = {
	function install(url:String, ?receipts:Array<Dynamic>):DOMRequest<App>;
	function getSelf():DOMRequest<App>;
	function getInstalled():DOMRequest<Array<App>>;
	function checkInstalled(url:String):DOMRequest<App>;
};
typedef DOMRequest<T> = {
	var onsuccess : haxe.Constraints.Function;
	var onerror : haxe.Constraints.Function;
	var readyState : String;
	var result : T;
	var error : DOMError;
};
typedef App = {
	var manifest : Dynamic;
	var manifestURL : String;
	var origin : String;
	var installOrigin : String;
	var installTime : Float;
	var receipts : Array<Dynamic>;
	function launch():Void;
	function checkForUpdate():DOMRequest<Dynamic>;
};
