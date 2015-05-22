typedef PhantomJS = {
	function createPage(callback:WebPage -> Void):Void;
	function exit(?returnValue:Float):Void;
	function injectJs(filename:String, ?callback:Bool -> Void):Void;
	function addCookie(name:String, value:String, domain:String, ?callback:Bool -> Void):Void;
	function clearCookies(?callback:Void -> Void):Void;
	function getCookies(callback:Array<{ var name : String; var value : String; @:optional
	var domain : String; }> -> Void):Void;
};
typedef WebPage = {
	function open(url:String, callback:String -> Void):Void;
	function close():Void;
	function get(key:String, callback:Dynamic -> Void):Void;
	function set(key:String, value:Dynamic, ?callback:Dynamic -> Void):Void;
	function setHeaders(headers:Dynamic, ?callback:Void -> Void):Void;
	function setViewportSize(width:Float, height:Float, ?callback:Void -> Void):Void;
	function setPaperSize(options:IPaperSizeOptions, ?callback:Void -> Void):Void;
	function setZoomFactor(factor:Float, ?callback:Void -> Void):Void;
	@:overload(function<R>(callback:Void -> R, returnCallback:R -> Void):Void { })
	@:overload(function<T>(callback:T -> Void, returnCallback:Void -> Void, arg:T):Void { })
	@:overload(function<T, R>(callback:T -> R, returnCallback:R -> Void, arg:T):Void { })
	@:overload(function<T1, T2, R>(callback:T1 -> T2 -> R, returnCallback:R -> Void, arg1:T1, arg2:T2):Void { })
	@:overload(function<T1, T2, T3, R>(callback:T1 -> T2 -> T3 -> R, returnCallback:R -> Void, arg1:T1, arg2:T2, arg3:T3):Void { })
	function evaluate(callback:Void -> Void):Void;
	function includeJs(url:String, ?callback:Void -> Void):Void;
	function injectJs(filename:String, ?callback:Bool -> Void):Void;
	@:overload(function(keyboardEventType:String, key:String, ?null1:Void, ?null2:Void, ?modifier:Float):Void { })
	function sendEvent(mouseEventType:String, mouseX:Float, mouseY:Float, ?button:String):Void;
	function uploadFile(selector:String, filename:String):Void;
	@:overload(function(filename:String, ?options:{ @:optional
	var format : String; @:optional
	var quality : String; }, ?callback:Void -> Void):Void { })
	function render(filename:String, ?callback:Void -> Void):Void;
	function renderBase64(type:String, callback:String -> Void):Void;
	function goBack():Void;
	function goForward():Void;
	function reload():Void;
	function getContent(callback:String -> Void):Void;
	function setContent(html:String, url:String, ?callback:String -> Void):Void;
	function getCookies(callback:Array<{ var name : String; var value : String; @:optional
	var domain : String; }> -> Void):Void;
};
typedef ICreateOptions = {
	@:optional
	var binary : String;
	@:optional
	var hostname : String;
	@:optional
	var path : String;
	@:optional
	var port : Float;
};
typedef IPaperSizeOptions = {
	@:optional
	var width : String;
	@:optional
	var height : String;
	@:optional
	var format : String;
	@:optional
	var orientation : String;
	@:optional
	var margin : Dynamic;
};
extern class PhantomTopLevel {
	static function create(callback:PhantomJS -> Void):Void;
	static function create(options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg:String, callback:PhantomJS -> Void):Void;
	static function create(arg:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, arg3:String, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, arg3:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
}
extern class PhantomTopLevel {
	static function create(callback:PhantomJS -> Void):Void;
	static function create(options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg:String, callback:PhantomJS -> Void):Void;
	static function create(arg:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, arg3:String, callback:PhantomJS -> Void):Void;
	static function create(arg1:String, arg2:String, arg3:String, options:ICreateOptions, callback:PhantomJS -> Void):Void;
}
