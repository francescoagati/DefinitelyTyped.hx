@:enum abstract PnpObjectType(Int) {
	var unknown = 0;
	var deviceInterface = 1;
	var deviceContainer = 2;
	var device = 3;
	var deviceInterfaceClass = 4;
}
typedef IPnpObjectUpdate = {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var type : Windows.Devices.Enumeration.Pnp.PnpObjectType;
};
extern class PnpObjectUpdate {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var type : Windows.Devices.Enumeration.Pnp.PnpObjectType;
}
extern class PnpObjectCollection {
	var size : Float;
	function getAt(index:Float):Windows.Devices.Enumeration.Pnp.PnpObject;
	function indexOf(value:Windows.Devices.Enumeration.Pnp.PnpObject):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Devices.Enumeration.Pnp.PnpObject>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Devices.Enumeration.Pnp.PnpObject>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Devices.Enumeration.Pnp.PnpObject>>):Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	function join(seperator:String):String;
	function pop():Windows.Devices.Enumeration.Pnp.PnpObject;
	function push(items:haxe.extern.Rest<Windows.Devices.Enumeration.Pnp.PnpObject>):Void;
	function reverse():Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	function shift():Windows.Devices.Enumeration.Pnp.PnpObject;
	@:overload(function(start:Float, end:Float):Array<Windows.Devices.Enumeration.Pnp.PnpObject> { })
	function slice(start:Float):Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	@:overload(function(compareFn:Windows.Devices.Enumeration.Pnp.PnpObject -> Windows.Devices.Enumeration.Pnp.PnpObject -> Float):Array<Windows.Devices.Enumeration.Pnp.PnpObject> { })
	function sort():Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Devices.Enumeration.Pnp.PnpObject>):Array<Windows.Devices.Enumeration.Pnp.PnpObject> { })
	function splice(start:Float):Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	function unshift(items:haxe.extern.Rest<Windows.Devices.Enumeration.Pnp.PnpObject>):Float;
	@:overload(function(searchElement:Windows.Devices.Enumeration.Pnp.PnpObject, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Devices.Enumeration.Pnp.PnpObject):Float;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Void):Void;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool, thisArg:Dynamic):Array<Windows.Devices.Enumeration.Pnp.PnpObject> { })
	function filter(callbackfn:Windows.Devices.Enumeration.Pnp.PnpObject -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Bool):Array<Windows.Devices.Enumeration.Pnp.PnpObject>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Devices.Enumeration.Pnp.PnpObject> -> Dynamic):Dynamic;
	var length : Float;
}
typedef IPnpObjectWatcher = {
	var status : Windows.Devices.Enumeration.DeviceWatcherStatus;
	var onadded : Dynamic;
	var onupdated : Dynamic;
	var onremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
};
extern class PnpObjectWatcher {
	var status : Windows.Devices.Enumeration.DeviceWatcherStatus;
	var onadded : Dynamic;
	var onupdated : Dynamic;
	var onremoved : Dynamic;
	var onenumerationcompleted : Dynamic;
	var onstopped : Dynamic;
	function start():Void;
	function stop():Void;
}
extern class PnpObject {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var type : Windows.Devices.Enumeration.Pnp.PnpObjectType;
	function update(updateInfo:Windows.Devices.Enumeration.Pnp.PnpObjectUpdate):Void;
	static function createFromIdAsync(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, id:String, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObject>;
	@:overload(function(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>, aqsFilter:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObjectCollection> { })
	static function findAllAsync(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObjectCollection>;
	@:overload(function(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>, aqsFilter:String):Windows.Devices.Enumeration.Pnp.PnpObjectWatcher { })
	static function createWatcher(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Devices.Enumeration.Pnp.PnpObjectWatcher;
}
typedef IPnpObjectStatics = {
	function createFromIdAsync(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, id:String, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObject>;
	@:overload(function(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>, aqsFilter:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObjectCollection> { })
	function findAllAsync(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Devices.Enumeration.Pnp.PnpObjectCollection>;
	@:overload(function(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>, aqsFilter:String):Windows.Devices.Enumeration.Pnp.PnpObjectWatcher { })
	function createWatcher(type:Windows.Devices.Enumeration.Pnp.PnpObjectType, requestedProperties:Windows.Foundation.Collections.IIterable<String>):Windows.Devices.Enumeration.Pnp.PnpObjectWatcher;
};
typedef IPnpObject = {
	var id : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var type : Windows.Devices.Enumeration.Pnp.PnpObjectType;
	function update(updateInfo:Windows.Devices.Enumeration.Pnp.PnpObjectUpdate):Void;
};
