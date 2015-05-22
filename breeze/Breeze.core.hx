typedef ErrorCallback = { };
typedef IEnum = {
	function contains(object:Dynamic):Bool;
	function fromName(name:String):EnumSymbol;
	function getNames():Array<String>;
	function getSymbols():Array<EnumSymbol>;
};
extern class Enum {
	function new(name:String, ?methodObj:Dynamic):Void;
	function addSymbol(?propertiesObj:Dynamic):EnumSymbol;
	function contains(object:Dynamic):Bool;
	function fromName(name:String):EnumSymbol;
	function getNames():Array<String>;
	function getSymbols():Array<EnumSymbol>;
	static function isSymbol(object:Dynamic):Bool;
	function resolveSymbols():Void;
}
extern class EnumSymbol {
	var parentEnum : IEnum;
	function getName():String;
	function toString():String;
}
extern class Event {
	function new(name:String, publisher:Dynamic, ?defaultErrorCallback:ErrorCallback):Void;
	@:overload(function(eventName:String, target:Dynamic, isEnabled:Bool):Void { })
	@:overload(function(eventName:String, target:Dynamic, isEnabled:haxe.Constraints.Function):Void { })
	static function enable(eventName:String, target:Dynamic):Void;
	static function isEnabled(eventName:String, target:Dynamic):Bool;
	function publish(data:Dynamic, ?publishAsync:Bool, ?errorCallback:ErrorCallback):Void;
	function publishAsync(data:Dynamic, ?errorCallback:ErrorCallback):Void;
	function subscribe(?callback:Dynamic -> Void):Float;
	function unsubscribe(unsubKey:Float):Bool;
	function clear():Void;
}
extern class Breeze.coreTopLevel {
	static function objectForEach(obj:Dynamic, kvfn:String -> Dynamic -> Void):Void;
	static function extend(target:Dynamic, source:Dynamic):Dynamic;
	static function propEq(propertyName:String, value:Dynamic):Dynamic -> Bool;
	static function pluck(propertyName:String):Dynamic -> Dynamic;
	static function arrayEquals(a1:Array<Dynamic>, a2:Array<Dynamic>, equalsFn:Dynamic -> Dynamic -> Bool):Bool;
	static function arrayFirst(a1:Array<Dynamic>, predicate:Dynamic -> Bool):Dynamic;
	static function arrayIndexOf(a1:Array<Dynamic>, predicate:Dynamic -> Bool):Float;
	static function arrayRemoveItem(array:Array<Dynamic>, item:Dynamic, shouldRemoveMultiple:Bool):Dynamic;
	static function arrayRemoveItem(array:Array<Dynamic>, predicate:Dynamic -> Bool, shouldRemoveMultiple:Bool):Dynamic;
	static function arrayZip(a1:Array<Dynamic>, a2:Array<Dynamic>, callback:Dynamic -> Dynamic -> Dynamic):Array<Dynamic>;
	static function requireLib(libnames:String, errMessage:String):Dynamic;
	static function using(obj:Dynamic, property:String, tempValue:Dynamic, fn:Void -> Dynamic):Dynamic;
	static function memoize(fn:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	static function getUuid():String;
	static function durationToSeconds(duration:String):Float;
	static function isDate(o:Dynamic):Bool;
	static function isGuid(o:Dynamic):Bool;
	static function isDuration(o:Dynamic):Bool;
	static function isFunction(o:Dynamic):Bool;
	static function isEmpty(o:Dynamic):Bool;
	static function isNumeric(o:Dynamic):Bool;
	static function stringStartsWith(str:String, prefix:String):Bool;
	static function stringEndsWith(str:String, suffix:String):Bool;
	static function formatString(format:String, args:haxe.extern.Rest<Dynamic>):String;
}
