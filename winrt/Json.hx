@:enum abstract JsonValueType(Int) {
	var null_ = 0;
	var boolean = 1;
	var number = 2;
	var string = 3;
	var array = 4;
	var object = 5;
}
@:enum abstract JsonErrorStatus(Int) {
	var unknown = 0;
	var invalidJsonString = 1;
	var invalidJsonNumber = 2;
	var jsonValueNotFound = 3;
	var implementationLimit = 4;
}
typedef IJsonValue = {
	var valueType : Windows.Data.Json.JsonValueType;
	function stringify():String;
	function getString():String;
	function getNumber():Float;
	function getBoolean():Bool;
	function getArray():Windows.Data.Json.JsonArray;
	function getObject():Windows.Data.Json.JsonObject;
};
extern class JsonArray {
	var valueType : Windows.Data.Json.JsonValueType;
	var size : Float;
	function getObjectAt(index:Float):Windows.Data.Json.JsonObject;
	function getArrayAt(index:Float):Windows.Data.Json.JsonArray;
	function getStringAt(index:Float):String;
	function getNumberAt(index:Float):Float;
	function getBooleanAt(index:Float):Bool;
	function stringify():String;
	function getString():String;
	function getNumber():Float;
	function getBoolean():Bool;
	function getArray():Windows.Data.Json.JsonArray;
	function getObject():Windows.Data.Json.JsonObject;
	function getAt(index:Float):Windows.Data.Json.IJsonValue;
	function getView():Windows.Foundation.Collections.IVectorView<Windows.Data.Json.IJsonValue>;
	function indexOf(value:Windows.Data.Json.IJsonValue):{ var index : Float; var returnValue : Bool; };
	function setAt(index:Float, value:Windows.Data.Json.IJsonValue):Void;
	function insertAt(index:Float, value:Windows.Data.Json.IJsonValue):Void;
	function removeAt(index:Float):Void;
	function append(value:Windows.Data.Json.IJsonValue):Void;
	function removeAtEnd():Void;
	function clear():Void;
	function getMany(startIndex:Float):{ var items : Array<Windows.Data.Json.IJsonValue>; var returnValue : Float; };
	function replaceAll(items:Array<Windows.Data.Json.IJsonValue>):Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Data.Json.IJsonValue>;
	static function parse(input:String):Windows.Data.Json.JsonArray;
	static function tryParse(input:String):{ var result : Windows.Data.Json.JsonArray; var succeeded : Bool; };
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Data.Json.IJsonValue>>):Array<Windows.Data.Json.IJsonValue>;
	function join(seperator:String):String;
	function pop():Windows.Data.Json.IJsonValue;
	function push(items:haxe.extern.Rest<Windows.Data.Json.IJsonValue>):Void;
	function reverse():Array<Windows.Data.Json.IJsonValue>;
	function shift():Windows.Data.Json.IJsonValue;
	@:overload(function(start:Float, end:Float):Array<Windows.Data.Json.IJsonValue> { })
	function slice(start:Float):Array<Windows.Data.Json.IJsonValue>;
	@:overload(function(compareFn:Windows.Data.Json.IJsonValue -> Windows.Data.Json.IJsonValue -> Float):Array<Windows.Data.Json.IJsonValue> { })
	function sort():Array<Windows.Data.Json.IJsonValue>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Data.Json.IJsonValue>):Array<Windows.Data.Json.IJsonValue> { })
	function splice(start:Float):Array<Windows.Data.Json.IJsonValue>;
	function unshift(items:haxe.extern.Rest<Windows.Data.Json.IJsonValue>):Float;
	@:overload(function(searchElement:Windows.Data.Json.IJsonValue, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Data.Json.IJsonValue):Float;
	@:overload(function(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Void):Void;
	@:overload(function(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool, thisArg:Dynamic):Array<Windows.Data.Json.IJsonValue> { })
	function filter(callbackfn:Windows.Data.Json.IJsonValue -> Float -> Array<Windows.Data.Json.IJsonValue> -> Bool):Array<Windows.Data.Json.IJsonValue>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Json.IJsonValue> -> Dynamic):Dynamic;
	var length : Float;
}
extern class JsonObject {
	var valueType : Windows.Data.Json.JsonValueType;
	var size : Float;
	function getNamedValue(name:String):Windows.Data.Json.JsonValue;
	function setNamedValue(name:String, value:Windows.Data.Json.IJsonValue):Void;
	function getNamedObject(name:String):Windows.Data.Json.JsonObject;
	function getNamedArray(name:String):Windows.Data.Json.JsonArray;
	function getNamedString(name:String):String;
	function getNamedNumber(name:String):Float;
	function getNamedBoolean(name:String):Bool;
	function stringify():String;
	function getString():String;
	function getNumber():Float;
	function getBoolean():Bool;
	function getArray():Windows.Data.Json.JsonArray;
	function getObject():Windows.Data.Json.JsonObject;
	function lookup(key:String):Windows.Data.Json.IJsonValue;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Windows.Data.Json.IJsonValue>;
	function insert(key:String, value:Windows.Data.Json.IJsonValue):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Data.Json.IJsonValue>>;
	static function parse(input:String):Windows.Data.Json.JsonObject;
	static function tryParse(input:String):{ var result : Windows.Data.Json.JsonObject; var succeeded : Bool; };
}
typedef IJsonValueStatics = {
	function parse(input:String):Windows.Data.Json.JsonValue;
	function tryParse(input:String):{ var result : Windows.Data.Json.JsonValue; var succeeded : Bool; };
	function createBooleanValue(input:Bool):Windows.Data.Json.JsonValue;
	function createNumberValue(input:Float):Windows.Data.Json.JsonValue;
	function createStringValue(input:String):Windows.Data.Json.JsonValue;
};
extern class JsonValue {
	var valueType : Windows.Data.Json.JsonValueType;
	function stringify():String;
	function getString():String;
	function getNumber():Float;
	function getBoolean():Bool;
	function getArray():Windows.Data.Json.JsonArray;
	function getObject():Windows.Data.Json.JsonObject;
	static function parse(input:String):Windows.Data.Json.JsonValue;
	static function tryParse(input:String):{ var result : Windows.Data.Json.JsonValue; var succeeded : Bool; };
	static function createBooleanValue(input:Bool):Windows.Data.Json.JsonValue;
	static function createNumberValue(input:Float):Windows.Data.Json.JsonValue;
	static function createStringValue(input:String):Windows.Data.Json.JsonValue;
}
typedef IJsonObject = {
	>Windows.Data.Json.IJsonValue,
	function getNamedValue(name:String):Windows.Data.Json.JsonValue;
	function setNamedValue(name:String, value:Windows.Data.Json.IJsonValue):Void;
	function getNamedObject(name:String):Windows.Data.Json.JsonObject;
	function getNamedArray(name:String):Windows.Data.Json.JsonArray;
	function getNamedString(name:String):String;
	function getNamedNumber(name:String):Float;
	function getNamedBoolean(name:String):Bool;
};
typedef IJsonObjectStatics = {
	function parse(input:String):Windows.Data.Json.JsonObject;
	function tryParse(input:String):{ var result : Windows.Data.Json.JsonObject; var succeeded : Bool; };
};
typedef IJsonArray = {
	>Windows.Data.Json.IJsonValue,
	function getObjectAt(index:Float):Windows.Data.Json.JsonObject;
	function getArrayAt(index:Float):Windows.Data.Json.JsonArray;
	function getStringAt(index:Float):String;
	function getNumberAt(index:Float):Float;
	function getBooleanAt(index:Float):Bool;
};
typedef IJsonArrayStatics = {
	function parse(input:String):Windows.Data.Json.JsonArray;
	function tryParse(input:String):{ var result : Windows.Data.Json.JsonArray; var succeeded : Bool; };
};
typedef IJsonErrorStatics = {
	function getStatus(hresult:Float):Windows.Data.Json.JsonErrorStatus;
};
extern class JsonError {
	static function getStatus(hresult:Float):Windows.Data.Json.JsonErrorStatus;
}
