typedef IUriRuntimeClass = {
	var absoluteUri : String;
	var displayUri : String;
	var domain : String;
	var extension : String;
	var fragment : String;
	var host : String;
	var password : String;
	var path : String;
	var port : Float;
	var query : String;
	var queryParsed : Windows.Foundation.WwwFormUrlDecoder;
	var rawUri : String;
	var schemeName : String;
	var suspicious : Bool;
	var userName : String;
	function equals(pUri:Windows.Foundation.Uri):Bool;
	function combineUri(relativeUri:String):Windows.Foundation.Uri;
};
extern class WwwFormUrlDecoder {
	function new(query:String):Void;
	var size : Float;
	function getFirstValueByName(name:String):String;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	function getAt(index:Float):Windows.Foundation.IWwwFormUrlDecoderEntry;
	function indexOf(value:Windows.Foundation.IWwwFormUrlDecoderEntry):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Foundation.IWwwFormUrlDecoderEntry>; var returnValue : Float; };
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Foundation.IWwwFormUrlDecoderEntry>>):Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	function join(seperator:String):String;
	function pop():Windows.Foundation.IWwwFormUrlDecoderEntry;
	function push(items:haxe.extern.Rest<Windows.Foundation.IWwwFormUrlDecoderEntry>):Void;
	function reverse():Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	function shift():Windows.Foundation.IWwwFormUrlDecoderEntry;
	@:overload(function(start:Float, end:Float):Array<Windows.Foundation.IWwwFormUrlDecoderEntry> { })
	function slice(start:Float):Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	@:overload(function(compareFn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Windows.Foundation.IWwwFormUrlDecoderEntry -> Float):Array<Windows.Foundation.IWwwFormUrlDecoderEntry> { })
	function sort():Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Foundation.IWwwFormUrlDecoderEntry>):Array<Windows.Foundation.IWwwFormUrlDecoderEntry> { })
	function splice(start:Float):Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	function unshift(items:haxe.extern.Rest<Windows.Foundation.IWwwFormUrlDecoderEntry>):Float;
	@:overload(function(searchElement:Windows.Foundation.IWwwFormUrlDecoderEntry, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Foundation.IWwwFormUrlDecoderEntry):Float;
	@:overload(function(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Void):Void;
	@:overload(function(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool, thisArg:Dynamic):Array<Windows.Foundation.IWwwFormUrlDecoderEntry> { })
	function filter(callbackfn:Windows.Foundation.IWwwFormUrlDecoderEntry -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Bool):Array<Windows.Foundation.IWwwFormUrlDecoderEntry>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Foundation.IWwwFormUrlDecoderEntry> -> Dynamic):Dynamic;
	var length : Float;
}
extern class Uri {
	@:overload(function(baseUri:String, relativeUri:String):Void { })
	function new(uri:String):Void;
	var absoluteUri : String;
	var displayUri : String;
	var domain : String;
	var extension : String;
	var fragment : String;
	var host : String;
	var password : String;
	var path : String;
	var port : Float;
	var query : String;
	var queryParsed : Windows.Foundation.WwwFormUrlDecoder;
	var rawUri : String;
	var schemeName : String;
	var suspicious : Bool;
	var userName : String;
	var absoluteCanonicalUri : String;
	var displayIri : String;
	function equals(pUri:Windows.Foundation.Uri):Bool;
	function combineUri(relativeUri:String):Windows.Foundation.Uri;
	static function unescapeComponent(toUnescape:String):String;
	static function escapeComponent(toEscape:String):String;
}
typedef IUriRuntimeClassWithAbsoluteCanonicalUri = {
	var absoluteCanonicalUri : String;
	var displayIri : String;
};
typedef IUriEscapeStatics = {
	function unescapeComponent(toUnescape:String):String;
	function escapeComponent(toEscape:String):String;
};
typedef IUriRuntimeClassFactory = {
	@:overload(function(baseUri:String, relativeUri:String):Windows.Foundation.Uri { })
	function createUri(uri:String):Windows.Foundation.Uri;
};
typedef IWwwFormUrlDecoderEntry = {
	var name : String;
	var value : String;
};
typedef IWwwFormUrlDecoderRuntimeClass = {
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.IWwwFormUrlDecoderEntry>,
	>Windows.Foundation.Collections.IVectorView<Windows.Foundation.IWwwFormUrlDecoderEntry>,
	function getFirstValueByName(name:String):String;
};
typedef IWwwFormUrlDecoderRuntimeClassFactory = {
	function createWwwFormUrlDecoder(query:String):Windows.Foundation.WwwFormUrlDecoder;
};
typedef IGetActivationFactory = {
	function getActivationFactory(activatableClassId:String):Dynamic;
};
typedef IClosable = {
	function close():Void;
};
@:enum abstract PropertyType(Int) {
	var empty = 0;
	var uInt8 = 1;
	var int16 = 2;
	var uInt16 = 3;
	var int32 = 4;
	var uInt32 = 5;
	var int64 = 6;
	var uInt64 = 7;
	var single = 8;
	var double = 9;
	var char16 = 10;
	var boolean = 11;
	var string = 12;
	var inspectable = 13;
	var dateTime = 14;
	var timeSpan = 15;
	var guid = 16;
	var point = 17;
	var size = 18;
	var rect = 19;
	var otherType = 20;
	var uInt8Array = 21;
	var int16Array = 22;
	var uInt16Array = 23;
	var int32Array = 24;
	var uInt32Array = 25;
	var int64Array = 26;
	var uInt64Array = 27;
	var singleArray = 28;
	var doubleArray = 29;
	var char16Array = 30;
	var booleanArray = 31;
	var stringArray = 32;
	var inspectableArray = 33;
	var dateTimeArray = 34;
	var timeSpanArray = 35;
	var guidArray = 36;
	var pointArray = 37;
	var sizeArray = 38;
	var rectArray = 39;
	var otherTypeArray = 40;
}
typedef Point = {
	var x : Float;
	var y : Float;
};
typedef Size = {
	var width : Float;
	var height : Float;
};
typedef Rect = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
typedef DateTime = {
	var universalTime : Float;
};
typedef TimeSpan = {
	var duration : Float;
};
typedef IPropertyValue = {
	var isNumericScalar : Bool;
	var type : Windows.Foundation.PropertyType;
	function getUInt8():Float;
	function getInt16():Float;
	function getUInt16():Float;
	function getInt32():Float;
	function getUInt32():Float;
	function getInt64():Float;
	function getUInt64():Float;
	function getSingle():Float;
	function getDouble():Float;
	function getChar16():String;
	function getBoolean():Bool;
	function getString():String;
	function getGuid():String;
	function getDateTime():Date;
	function getTimeSpan():Float;
	function getPoint():Windows.Foundation.Point;
	function getSize():Windows.Foundation.Size;
	function getRect():Windows.Foundation.Rect;
	function getUInt8Array():Uint8Array;
	function getInt16Array():Int16Array;
	function getUInt16Array():Uint16Array;
	function getInt32Array():Int32Array;
	function getUInt32Array():Uint32Array;
	function getInt64Array():Array<Float>;
	function getUInt64Array():Array<Float>;
	function getSingleArray():Float32Array;
	function getDoubleArray():Float64Array;
	function getChar16Array():Array<String>;
	function getBooleanArray():Array<Bool>;
	function getStringArray():Array<String>;
	function getInspectableArray():Array<Dynamic>;
	function getGuidArray():Array<String>;
	function getDateTimeArray():Array<Date>;
	function getTimeSpanArray():Array<Float>;
	function getPointArray():Array<Windows.Foundation.Point>;
	function getSizeArray():Array<Windows.Foundation.Size>;
	function getRectArray():Array<Windows.Foundation.Rect>;
};
typedef IPropertyValueStatics = {
	function createEmpty():Dynamic;
	function createUInt8(value:Float):Dynamic;
	function createInt16(value:Float):Dynamic;
	function createUInt16(value:Float):Dynamic;
	function createInt32(value:Float):Dynamic;
	function createUInt32(value:Float):Dynamic;
	function createInt64(value:Float):Dynamic;
	function createUInt64(value:Float):Dynamic;
	function createSingle(value:Float):Dynamic;
	function createDouble(value:Float):Dynamic;
	function createChar16(value:String):Dynamic;
	function createBoolean(value:Bool):Dynamic;
	function createString(value:String):Dynamic;
	function createInspectable(value:Dynamic):Dynamic;
	function createGuid(value:String):Dynamic;
	function createDateTime(value:Date):Dynamic;
	function createTimeSpan(value:Float):Dynamic;
	function createPoint(value:Windows.Foundation.Point):Dynamic;
	function createSize(value:Windows.Foundation.Size):Dynamic;
	function createRect(value:Windows.Foundation.Rect):Dynamic;
	function createUInt8Array(value:Uint8Array):Dynamic;
	function createInt16Array(value:Int16Array):Dynamic;
	function createUInt16Array(value:Uint16Array):Dynamic;
	function createInt32Array(value:Int32Array):Dynamic;
	function createUInt32Array(value:Uint32Array):Dynamic;
	function createInt64Array(value:Array<Float>):Dynamic;
	function createUInt64Array(value:Array<Float>):Dynamic;
	function createSingleArray(value:Float32Array):Dynamic;
	function createDoubleArray(value:Float64Array):Dynamic;
	function createChar16Array(value:Array<String>):Dynamic;
	function createBooleanArray(value:Array<Bool>):Dynamic;
	function createStringArray(value:Array<String>):Dynamic;
	function createInspectableArray(value:Array<Dynamic>):Dynamic;
	function createGuidArray(value:Array<String>):Dynamic;
	function createDateTimeArray(value:Array<Date>):Dynamic;
	function createTimeSpanArray(value:Array<Float>):Dynamic;
	function createPointArray(value:Array<Windows.Foundation.Point>):Dynamic;
	function createSizeArray(value:Array<Windows.Foundation.Size>):Dynamic;
	function createRectArray(value:Array<Windows.Foundation.Rect>):Dynamic;
};
extern class PropertyValue {
	static function createEmpty():Dynamic;
	static function createUInt8(value:Float):Dynamic;
	static function createInt16(value:Float):Dynamic;
	static function createUInt16(value:Float):Dynamic;
	static function createInt32(value:Float):Dynamic;
	static function createUInt32(value:Float):Dynamic;
	static function createInt64(value:Float):Dynamic;
	static function createUInt64(value:Float):Dynamic;
	static function createSingle(value:Float):Dynamic;
	static function createDouble(value:Float):Dynamic;
	static function createChar16(value:String):Dynamic;
	static function createBoolean(value:Bool):Dynamic;
	static function createString(value:String):Dynamic;
	static function createInspectable(value:Dynamic):Dynamic;
	static function createGuid(value:String):Dynamic;
	static function createDateTime(value:Date):Dynamic;
	static function createTimeSpan(value:Float):Dynamic;
	static function createPoint(value:Windows.Foundation.Point):Dynamic;
	static function createSize(value:Windows.Foundation.Size):Dynamic;
	static function createRect(value:Windows.Foundation.Rect):Dynamic;
	static function createUInt8Array(value:Uint8Array):Dynamic;
	static function createInt16Array(value:Int16Array):Dynamic;
	static function createUInt16Array(value:Uint16Array):Dynamic;
	static function createInt32Array(value:Int32Array):Dynamic;
	static function createUInt32Array(value:Uint32Array):Dynamic;
	static function createInt64Array(value:Array<Float>):Dynamic;
	static function createUInt64Array(value:Array<Float>):Dynamic;
	static function createSingleArray(value:Float32Array):Dynamic;
	static function createDoubleArray(value:Float64Array):Dynamic;
	static function createChar16Array(value:Array<String>):Dynamic;
	static function createBooleanArray(value:Array<Bool>):Dynamic;
	static function createStringArray(value:Array<String>):Dynamic;
	static function createInspectableArray(value:Array<Dynamic>):Dynamic;
	static function createGuidArray(value:Array<String>):Dynamic;
	static function createDateTimeArray(value:Array<Date>):Dynamic;
	static function createTimeSpanArray(value:Array<Float>):Dynamic;
	static function createPointArray(value:Array<Windows.Foundation.Point>):Dynamic;
	static function createSizeArray(value:Array<Windows.Foundation.Size>):Dynamic;
	static function createRectArray(value:Array<Windows.Foundation.Rect>):Dynamic;
}
typedef AsyncActionCompletedHandler = { };
@:enum abstract AsyncStatus(Int) {
	var canceled = 0;
	var completed = 1;
	var error = 2;
	var started = 3;
}
typedef EventRegistrationToken = {
	var value : Float;
};
typedef HResult = {
	var value : Float;
};
typedef IAsyncInfo = {
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function cancel():Void;
	function close():Void;
};
typedef IAsyncAction = {
	>Windows.Foundation.IAsyncInfo,
	@:overload(function<U>(?success:Void -> IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> IPromise<U>, ?progress:Dynamic -> Void):IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):IPromise<U> { })
	function then<U>(?success:Void -> IPromise<U>, ?error:Dynamic -> IPromise<U>, ?progress:Dynamic -> Void):IPromise<U>;
	@:optional
	function done<U>(?success:Void -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	function cancel():Void;
	var completed : Windows.Foundation.AsyncActionCompletedHandler;
	function getResults():Void;
};
typedef AsyncOperationWithProgressCompletedHandler<TResult, TProgress> = { };
typedef IAsyncOperationWithProgress<TResult, TProgress> = {
	>Windows.Foundation.IPromise<TResult>,
	var operation : { var progress : Windows.Foundation.AsyncOperationProgressHandler<TResult, TProgress>; var completed : Windows.Foundation.AsyncOperationWithProgressCompletedHandler<TResult, TProgress>; function getResults():TResult; };
};
typedef AsyncOperationCompletedHandler<TResult> = { };
typedef IAsyncOperation<TResult> = {
	>Windows.Foundation.IPromise<TResult>,
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<TResult>; function getResults():TResult; };
};
typedef AsyncActionWithProgressCompletedHandler<TProgress> = { };
typedef IAsyncActionWithProgress<TProgress> = {
	>Windows.Foundation.IAsyncInfo,
	>Windows.Foundation.IPromise<Void>,
	var progress : Windows.Foundation.AsyncActionProgressHandler<TProgress>;
	var completed : Windows.Foundation.AsyncActionWithProgressCompletedHandler<TProgress>;
	function getResults():Void;
};
typedef AsyncOperationProgressHandler<TResult, TProgress> = { };
typedef AsyncActionProgressHandler<TProgress> = { };
typedef IReference<T> = {
	>Windows.Foundation.IPropertyValue,
	var value : T;
};
typedef IReferenceArray<T> = {
	>Windows.Foundation.IPropertyValue,
	var value : Array<T>;
};
typedef TypedEventHandler<TSender, TResult> = { };
typedef EventHandler<T> = { };
