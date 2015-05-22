typedef Window = {
	@:overload(function(url:String, ?target:_blank, ?options:String):InAppBrowser { })
	@:overload(function(url:String, ?target:_system, ?options:String):InAppBrowser { })
	@:overload(function(url:String, ?target:String, ?options:String, ?replace:Bool):InAppBrowser { })
	function open(url:String, ?target:_self, ?options:String):InAppBrowser;
};
typedef InAppBrowser = {
	>Window,
	var onloadstart : InAppBrowserEvent -> Void;
	var onloadstop : InAppBrowserEvent -> Void;
	var onloaderror : InAppBrowserEvent -> Void;
	var onexit : InAppBrowserEvent -> Void;
	@:overload(function(type:Loadstop, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:Loaderror, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:Exit, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:String, callback:InAppBrowserEvent -> Void):Void { })
	function addEventListener(type:Loadstart, callback:InAppBrowserEvent -> Void):Void;
	@:overload(function(type:Loadstop, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:Loaderror, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:Exit, callback:InAppBrowserEvent -> Void):Void { })
	@:overload(function(type:String, callback:InAppBrowserEvent -> Void):Void { })
	function removeEventListener(type:Loadstart, callback:InAppBrowserEvent -> Void):Void;
	function close():Void;
	function show():Void;
	@:overload(function(script:{ var file : String; }, callback:Dynamic -> Void):Void { })
	function executeScript(script:{ var code : String; }, callback:Dynamic -> Void):Void;
	@:overload(function(css:{ var file : String; }, callback:Void -> Void):Void { })
	function insertCSS(css:{ var code : String; }, callback:Void -> Void):Void;
};
typedef InAppBrowserEvent = {
	>Event,
	var type : String;
	var url : String;
	var code : Float;
	var message : String;
};
