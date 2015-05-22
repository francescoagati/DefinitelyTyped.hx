extern class Durandal_systemTopLevel {
	static var theModule : DurandalSystemModule;
}
typedef DurandalSystemModule = {
	var version : String;
	var noop : haxe.Constraints.Function;
	function getModuleId(obj:Dynamic):String;
	function setModuleId(obj:Dynamic, id:String):Void;
	function resolveObject(module:Dynamic):Dynamic;
	function debug(?enable:Bool):Bool;
	function log(msgs:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(error:Error):Void { })
	function error(error:String):Void;
	function assert(condition:Bool, message:String):Void;
	function defer<T>(?action:JQueryDeferred<T> -> Void):JQueryDeferred<T>;
	function guid():String;
	@:overload(function(modules:Array<String>):JQueryPromise<Array<Dynamic>> { })
	@:overload(function(moduleIds:haxe.extern.Rest<String>):JQueryPromise<Array<Dynamic>> { })
	function acquire(moduleId:String):JQueryPromise<Dynamic>;
	function extend(obj:Dynamic, extensions:haxe.extern.Rest<Dynamic>):Dynamic;
	function wait(milliseconds:Float):JQueryPromise<Dynamic>;
	function keys(obj:Dynamic):Array<String>;
	function isElement(obj:Dynamic):Bool;
	function isArray(obj:Dynamic):Bool;
	function isObject(obj:Dynamic):Bool;
	function isPromise(obj:Dynamic):Bool;
	function isArguments(obj:Dynamic):Bool;
	function isFunction(obj:Dynamic):Bool;
	function isString(obj:Dynamic):Bool;
	function isNumber(obj:Dynamic):Bool;
	function isDate(obj:Dynamic):Bool;
	function isBoolean(obj:Dynamic):Bool;
};
