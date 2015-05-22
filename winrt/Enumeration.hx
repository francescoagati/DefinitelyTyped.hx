@:enum abstract DeviceClass(Int) {
	var all = 0;
	var audioCapture = 1;
	var audioRender = 2;
	var portableStorageDevice = 3;
	var videoCapture = 4;
}
@:enum abstract DeviceWatcherStatus(Int) {
	var created = 0;
	var started = 1;
	var enumerationCompleted = 2;
	var stopping = 3;
	var stopped = 4;
	var aborted = 5;
}
extern class DeviceThumbnail {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	var contentType : String;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
	function dispose():Void;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function close():Void;
}
@:enum abstract Panel(Int) {
	var unknown = 0;
	var front = 1;
	var back = 2;
	var top = 3;
	var bottom = 4;
	var left = 5;
	var right = 6;
}
typedef IEnclosureLocation = {
	var inDock : Bool;
	var inLid : Bool;
	var panel : Windows.Devices.Enumeration.Panel;
};
extern class EnclosureLocation {
	var inDock : Bool;
	var inLid : Bool;
	var panel : Windows.Devices.Enumeration.Panel;
}
typedef IDeviceInformationUpdate = {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
};
extern class DeviceInformationUpdate {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
}
extern class DeviceInformationCollection {
	var size : Float;
	function getAt(index:Float):Windows.Devices.Enumeration.DeviceInformation;
	function indexOf(value:Windows.Devices.Enumeration.DeviceInformation):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Devices.Enumeration.DeviceInformation>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Devices.Enumeration.DeviceInformation>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Devices.Enumeration.DeviceInformation>>):Array<Windows.Devices.Enumeration.DeviceInformation>;
	function join(seperator:String):String;
	function pop():Windows.Devices.Enumeration.DeviceInformation;
	function push(items:haxe.extern.Rest<Windows.Devices.Enumeration.DeviceInformation>):Void;
	function reverse():Array<Windows.Devices.Enumeration.DeviceInformation>;
	function shift():Windows.Devices.Enumeration.DeviceInformation;
	@:overload(function(start:Float, end:Float):Array<Windows.Devices.Enumeration.DeviceInformation> { })
	function slice(start:Float):Array<Windows.Devices.Enumeration.DeviceInformation>;
	@:overload(function(compareFn:Windows.Devices.Enumeration.DeviceInformation -> Windows.Devices.Enumeration.DeviceInformation -> Float):Array<Windows.Devices.Enumeration.DeviceInformation> { })
	function sort():Array<Windows.Devices.Enumeration.DeviceInformation>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Devices.Enumeration.DeviceInformation>):Array<Windows.Devices.Enumeration.DeviceInformation> { })
	function splice(start:Float):Array<Windows.Devices.Enumeration.DeviceInformation>;
	function unshift(items:haxe.extern.Rest<Windows.Devices.Enumeration.DeviceInformation>):Float;
	@:overload(function(searchElement:Windows.Devices.Enumeration.DeviceInformation, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Devices.Enumeration.DeviceInformation):Float;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Void):Void;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool, thisArg:Dynamic):Array<Windows.Devices.Enumeration.DeviceInformation> { })
	function filter(callbackfn:Windows.Devices.Enumeration.DeviceInformation -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Bool):Array<Windows.Devices.Enumeration.DeviceInformation>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.DeviceInformation> -> Dynamic):Dynamic;
	var length : Float;
}
typedef IDeviceWatcher = {
	var status : Windows.Devices.Enumeration.DeviceWatcherStatus;
	var onadded : Dynamic;
	var onupdated : Dynamic;
	var onremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
};
extern class DeviceWatcher {
	var status : Windows.Devices.Enumeration.DeviceWatcherStatus;
	var onadded : Dynamic;
	var onupdated : Dynamic;
	var onremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
}
extern class DeviceInformation {
	var enclosureLocation : Windows.Devices.Enumeration.EnclosureLocation;
	var id : String;
	var isDefault : Bool;
	var isEnabled : Bool;
	var name : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function update(updateInfo:Windows.Devices.Enumeration.DeviceInformationUpdate):Void;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceThumbnail>;
	function getGlyphThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceThumbnail>;
	@:overload(function(id:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformation> { })
	static function createFromIdAsync(id:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformation>;
	@:overload(function(deviceClass:Windows.Devices.Enumeration.DeviceClass):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	@:overload(function(aqsFilter:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	@:overload(function(aqsFilter:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	static function findAllAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection>;
	@:overload(function(deviceClass:Windows.Devices.Enumeration.DeviceClass):Windows.Devices.Enumeration.DeviceWatcher { })
	@:overload(function(aqsFilter:String):Windows.Devices.Enumeration.DeviceWatcher { })
	@:overload(function(aqsFilter:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Devices.Enumeration.DeviceWatcher { })
	static function createWatcher():Windows.Devices.Enumeration.DeviceWatcher;
}
typedef IDeviceInformationStatics = {
	@:overload(function(id:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformation> { })
	function createFromIdAsync(id:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformation>;
	@:overload(function(deviceClass:Windows.Devices.Enumeration.DeviceClass):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	@:overload(function(aqsFilter:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	@:overload(function(aqsFilter:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection> { })
	function findAllAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceInformationCollection>;
	@:overload(function(deviceClass:Windows.Devices.Enumeration.DeviceClass):Windows.Devices.Enumeration.DeviceWatcher { })
	@:overload(function(aqsFilter:String):Windows.Devices.Enumeration.DeviceWatcher { })
	@:overload(function(aqsFilter:String, additionalProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Devices.Enumeration.DeviceWatcher { })
	function createWatcher():Windows.Devices.Enumeration.DeviceWatcher;
};
typedef IDeviceInformation = {
	var enclosureLocation : Windows.Devices.Enumeration.EnclosureLocation;
	var id : String;
	var isDefault : Bool;
	var isEnabled : Bool;
	var name : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function update(updateInfo:Windows.Devices.Enumeration.DeviceInformationUpdate):Void;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceThumbnail>;
	function getGlyphThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.DeviceThumbnail>;
};
