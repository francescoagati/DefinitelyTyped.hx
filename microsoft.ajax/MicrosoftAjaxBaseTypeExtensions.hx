typedef Function = {
	function new(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
	var prototype : haxe.Constraints.Function;
	function createCallback(method:haxe.Constraints.Function, context:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	function createDelegate(instance:Dynamic, method:haxe.Constraints.Function):haxe.Constraints.Function;
	function emptyMethod():haxe.Constraints.Function;
	function validateParameters(parameters:Dynamic, expectedParameters:Array<Dynamic>, ?validateParameterCount:Bool):Dynamic;
};
typedef Error = {
	var name : String;
	var message : String;
	function new(?message:String):Error;
	var prototype : Error;
	function parameterCount(?message:String):Error;
	function notImplemented(?message:String):Error;
	function argument(?paramName:Dynamic, ?message:String):Error;
	function argumentNull(?paramName:Dynamic, ?message:String):Error;
	function argumentOutOfRange(?paramName:String, ?actualValue:Dynamic, ?message:String):Error;
	function argumentType(?paramName:String, ?actualType:Dynamic, ?expectedType:Dynamic, ?message:String):Error;
	function argumentUndefined(?paramName:String, ?message:String):Error;
	function create(?message:String, ?errorInfo:Dynamic):Error;
	function format(?message:String):Error;
	function invalidOperation(?message:String):Error;
	function popStackFrame():Void;
};
typedef String = {
	function new(?value:Dynamic):String;
	var prototype : String;
	function fromCharCode(codes:haxe.extern.Rest<Float>):String;
	function toString():String;
	function charAt(pos:Float):String;
	function charCodeAt(index:Float):Float;
	function concat(strings:haxe.extern.Rest<String>):String;
	function indexOf(searchString:String, ?position:Float):Float;
	function lastIndexOf(searchString:String, ?position:Float):Float;
	function localeCompare(that:String):Float;
	@:overload(function(regexp:js.RegExp):Array<String> { })
	function match(regexp:String):Array<String>;
	@:overload(function(searchValue:String, replaceValue:String -> haxe.extern.Rest<Dynamic> -> String):String { })
	@:overload(function(searchValue:js.RegExp, replaceValue:String):String { })
	@:overload(function(searchValue:js.RegExp, replaceValue:String -> haxe.extern.Rest<Dynamic> -> String):String { })
	function replace(searchValue:String, replaceValue:String):String;
	@:overload(function(regexp:js.RegExp):Float { })
	function search(regexp:String):Float;
	function slice(?start:Float, ?end:Float):String;
	@:overload(function(separator:js.RegExp, ?limit:Float):Array<String> { })
	function split(separator:String, ?limit:Float):Array<String>;
	function substring(start:Float, ?end:Float):String;
	function toLowerCase():String;
	function toLocaleLowerCase():String;
	function toUpperCase():String;
	function toLocaleUpperCase():String;
	var length : Float;
	function substr(from:Float, ?length:Float):String;
	function endsWith(suffix:String):Bool;
	function format(format:String, args:haxe.extern.Rest<Dynamic>):String;
	function localeFormat(format:String, args:haxe.extern.Rest<Dynamic>):String;
	function trim():String;
	function trimEnd():String;
	function trimStart():String;
};
typedef Boolean = {
	function new(?value:Dynamic):Boolean;
	var prototype : Boolean;
	function parse(value:String):Boolean;
};
extern class Type {
	function callBaseMethod(instance:Dynamic, name:String, ?baseArguments:Array<Dynamic>):Dynamic;
	static function createCallback(method:haxe.Constraints.Function, context:Dynamic):haxe.Constraints.Function;
	static function createDelegate(instance:Dynamic, method:haxe.Constraints.Function):haxe.Constraints.Function;
	function getBaseMethod(instance:Dynamic, name:String):Dynamic;
	function getBaseType():Type;
	function getInterfaces():Array<Dynamic>;
	function getName():String;
	static function getRootNamespaces():Dynamic;
	function implementsInterface(interfaceType:Type):Bool;
	function inheritsFrom(parentType:String):Bool;
	function initializeBase(instance:Dynamic, ?baseArguments:Array<Dynamic>):Dynamic;
	static function isClass(type:Dynamic):Bool;
	static function isEnum(type:Dynamic):Bool;
	static function isFlags(type:Dynamic):Bool;
	function isImplementedBy(typeInstanceVar:Dynamic):Bool;
	function isInstanceOfType(instance:Dynamic):Bool;
	static function isInterface(type:Dynamic):Bool;
	static function isNamespace(object:Dynamic):Bool;
	static function parse(typeName:String, ?ns:String):Dynamic;
	function registerClass(typeName:String, ?baseType:Dynamic, ?interfaceTypes:Array<Dynamic>):Dynamic;
	function registerEnum(name:String, ?flags:Bool):Void;
	function registerInterface(typeName:String):Dynamic;
	static function registerNamespace(namespacePath:String):Void;
	function resolveInheritance():Void;
}
