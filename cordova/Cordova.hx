typedef Cordova = {
	function exec(success:Void -> Dynamic, fail:Void -> Dynamic, service:String, action:String, ?args:Array<String>):Void;
	var platformId : String;
	var version : String;
	function define(moduleName:String, factory:Dynamic -> Dynamic -> Dynamic -> Dynamic):Void;
	function require(moduleName:String):Dynamic;
	var plugins : CordovaPlugins;
};
typedef CordovaPlugins = { };
typedef Document = {
	@:overload(function(type:Pause, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Resume, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Backbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Menubutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Searchbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Startcallbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Endcallbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Volumedownbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Volumeupbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	function addEventListener(type:Deviceready, listener:Event -> Dynamic, ?useCapture:Bool):Void;
	@:overload(function(type:Pause, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Resume, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Backbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Menubutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Searchbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Startcallbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Endcallbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Volumedownbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:Volumeupbutton, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:Event -> Dynamic, ?useCapture:Bool):Void { })
	function removeEventListener(type:Deviceready, listener:Event -> Dynamic, ?useCapture:Bool):Void;
};
typedef Window = {
	var cordova : Cordova;
};
typedef ArgsCheck = {
	function checkArgs(argsSpec:String, functionName:String, args:Array<Dynamic>, ?callee:Dynamic):Void;
	function getValue(?value:Dynamic, ?defaultValue:Dynamic):Dynamic;
	var enableChecks : Bool;
};
typedef UrlUtil = {
	function makeAbsolute(url:String):String;
};
extern class CordovaTopLevel {
	static var cordova : Cordova;
}
