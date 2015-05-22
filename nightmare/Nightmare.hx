extern class Nightmare {
	function new(?options:Nightmare.IConstructorOptions):Void;
	function goto(url:String):Nightmare;
	function back():Nightmare;
	function forward():Nightmare;
	function refresh():Nightmare;
	function click(selector:String):Nightmare;
	function type(selector:String, text:String):Nightmare;
	function upload(selector:String, path:String):Nightmare;
	function scrollTo(top:Float, left:Float):Nightmare;
	function inject(type:String, file:String):Nightmare;
	@:overload(function<R>(fn:Void -> R, cb:R -> Void):Nightmare { })
	@:overload(function<T>(fn:T -> Void, cb:Void -> Void, arg:T):Nightmare { })
	@:overload(function<T, R>(fn:T -> R, cb:R -> Void, arg:T):Nightmare { })
	@:overload(function<T1, T2, R>(fn:T1 -> T2 -> R, cb:R -> Void, arg1:T1, arg2:T2):Nightmare { })
	@:overload(function<T1, T2, T3, R>(fn:T1 -> T2 -> T3 -> R, cb:R -> Void, arg1:T1, arg2:T2, arg3:T3):Nightmare { })
	function evaluate(fn:Void -> Void):Nightmare;
	@:overload(function(ms:Float):Nightmare { })
	@:overload(function(selector:String):Nightmare { })
	@:overload(function(fn:Void -> Dynamic, value:Dynamic, ?delay:Float):Nightmare { })
	function wait():Nightmare;
	function use(plugin:Nightmare -> Void):Nightmare;
	function run(?cb:Dynamic -> Nightmare -> Void):Nightmare;
	function exists(selector:String, cb:Bool -> Void):Nightmare;
	function visible(selector:String, cb:Bool -> Void):Nightmare;
	@:overload(function(event:Initialized, cb:Void -> Void):Nightmare { })
	@:overload(function(event:LoadStarted, cb:Void -> Void):Nightmare { })
	@:overload(function(event:LoadFinished, cb:String -> Void):Nightmare { })
	@:overload(function(event:UrlChanged, cb:String -> Void):Nightmare { })
	@:overload(function(event:NavigationRequested, cb:String -> String -> Bool -> Bool -> Void):Nightmare { })
	@:overload(function(event:ResourceRequested, cb:Nightmare.IRequest -> Nightmare.INetwordRequest -> Void):Nightmare { })
	@:overload(function(event:ResourceReceived, cb:Nightmare.IResponse -> Void):Nightmare { })
	@:overload(function(event:ResourceError, cb:Nightmare.IResourceError -> Void):Nightmare { })
	@:overload(function(event:ConsoleMessage, cb:String -> Float -> Float -> Void):Nightmare { })
	@:overload(function(event:Alert, cb:String -> Void):Nightmare { })
	@:overload(function(event:Confirm, cb:String -> Void):Nightmare { })
	@:overload(function(event:Prompt, cb:String -> ?String -> Void):Nightmare { })
	@:overload(function(event:Error, cb:String -> ?Array<Nightmare.IStackTrace> -> Void):Nightmare { })
	@:overload(function(event:Timeout, cb:String -> Void):Nightmare { })
	function on(event:String, cb:Void -> Void):Nightmare;
	function screenshot(path:String):Nightmare;
	function pdf(path:String):Nightmare;
	function title(cb:String -> Void):Nightmare;
	function url(cb:String -> Void):Nightmare;
	function authentication(user:String, password:String):Nightmare;
	function useragent(useragent:String):Nightmare;
	function viewport(width:Float, height:Float):Nightmare;
	function zoom(zoomFactor:Float):Nightmare;
	function headers(headers:Dynamic):Nightmare;
}
