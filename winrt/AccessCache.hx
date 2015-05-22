typedef AccessListEntry = {
	var token : String;
	var metadata : String;
};
typedef IItemRemovedEventArgs = {
	var removedEntry : Windows.Storage.AccessCache.AccessListEntry;
};
extern class AccessListEntryView {
	var size : Float;
	function getAt(index:Float):Windows.Storage.AccessCache.AccessListEntry;
	function indexOf(value:Windows.Storage.AccessCache.AccessListEntry):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Storage.AccessCache.AccessListEntry>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Storage.AccessCache.AccessListEntry>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Storage.AccessCache.AccessListEntry>>):Array<Windows.Storage.AccessCache.AccessListEntry>;
	function join(seperator:String):String;
	function pop():Windows.Storage.AccessCache.AccessListEntry;
	function push(items:haxe.extern.Rest<Windows.Storage.AccessCache.AccessListEntry>):Void;
	function reverse():Array<Windows.Storage.AccessCache.AccessListEntry>;
	function shift():Windows.Storage.AccessCache.AccessListEntry;
	@:overload(function(start:Float, end:Float):Array<Windows.Storage.AccessCache.AccessListEntry> { })
	function slice(start:Float):Array<Windows.Storage.AccessCache.AccessListEntry>;
	@:overload(function(compareFn:Windows.Storage.AccessCache.AccessListEntry -> Windows.Storage.AccessCache.AccessListEntry -> Float):Array<Windows.Storage.AccessCache.AccessListEntry> { })
	function sort():Array<Windows.Storage.AccessCache.AccessListEntry>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Storage.AccessCache.AccessListEntry>):Array<Windows.Storage.AccessCache.AccessListEntry> { })
	function splice(start:Float):Array<Windows.Storage.AccessCache.AccessListEntry>;
	function unshift(items:haxe.extern.Rest<Windows.Storage.AccessCache.AccessListEntry>):Float;
	@:overload(function(searchElement:Windows.Storage.AccessCache.AccessListEntry, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Storage.AccessCache.AccessListEntry):Float;
	@:overload(function(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Void):Void;
	@:overload(function(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool, thisArg:Dynamic):Array<Windows.Storage.AccessCache.AccessListEntry> { })
	function filter(callbackfn:Windows.Storage.AccessCache.AccessListEntry -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Bool):Array<Windows.Storage.AccessCache.AccessListEntry>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.AccessCache.AccessListEntry> -> Dynamic):Dynamic;
	var length : Float;
}
@:enum abstract AccessCacheOptions(Int) {
	var none = 0;
	var disallowUserInput = 1;
	var fastLocationsOnly = 2;
	var useReadOnlyCachedCopy = 3;
	var suppressAccessTimeUpdate = 4;
}
typedef IStorageItemAccessList = {
	var entries : Windows.Storage.AccessCache.AccessListEntryView;
	var maximumItemsAllowed : Float;
	@:overload(function(file:Windows.Storage.IStorageItem, metadata:String):String { })
	function add(file:Windows.Storage.IStorageItem):String;
	@:overload(function(token:String, file:Windows.Storage.IStorageItem, metadata:String):Void { })
	function addOrReplace(token:String, file:Windows.Storage.IStorageItem):Void;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem> { })
	function getItemAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function getFileAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function getFolderAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function remove(token:String):Void;
	function containsItem(token:String):Bool;
	function clear():Void;
	function checkAccess(file:Windows.Storage.IStorageItem):Bool;
};
typedef IStorageItemMostRecentlyUsedList = {
	>Windows.Storage.AccessCache.IStorageItemAccessList,
	var onitemremoved : Dynamic;
};
extern class StorageItemMostRecentlyUsedList {
	var entries : Windows.Storage.AccessCache.AccessListEntryView;
	var maximumItemsAllowed : Float;
	var onitemremoved : Dynamic;
	@:overload(function(file:Windows.Storage.IStorageItem, metadata:String):String { })
	function add(file:Windows.Storage.IStorageItem):String;
	@:overload(function(token:String, file:Windows.Storage.IStorageItem, metadata:String):Void { })
	function addOrReplace(token:String, file:Windows.Storage.IStorageItem):Void;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem> { })
	function getItemAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function getFileAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function getFolderAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function remove(token:String):Void;
	function containsItem(token:String):Bool;
	function clear():Void;
	function checkAccess(file:Windows.Storage.IStorageItem):Bool;
}
extern class ItemRemovedEventArgs {
	var removedEntry : Windows.Storage.AccessCache.AccessListEntry;
}
typedef IStorageApplicationPermissionsStatics = {
	var futureAccessList : Windows.Storage.AccessCache.StorageItemAccessList;
	var mostRecentlyUsedList : Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList;
};
extern class StorageItemAccessList {
	var entries : Windows.Storage.AccessCache.AccessListEntryView;
	var maximumItemsAllowed : Float;
	@:overload(function(file:Windows.Storage.IStorageItem, metadata:String):String { })
	function add(file:Windows.Storage.IStorageItem):String;
	@:overload(function(token:String, file:Windows.Storage.IStorageItem, metadata:String):Void { })
	function addOrReplace(token:String, file:Windows.Storage.IStorageItem):Void;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem> { })
	function getItemAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function getFileAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(token:String, options:Windows.Storage.AccessCache.AccessCacheOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function getFolderAsync(token:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function remove(token:String):Void;
	function containsItem(token:String):Bool;
	function clear():Void;
	function checkAccess(file:Windows.Storage.IStorageItem):Bool;
}
extern class StorageApplicationPermissions {
	static var futureAccessList : Windows.Storage.AccessCache.StorageItemAccessList;
	static var mostRecentlyUsedList : Windows.Storage.AccessCache.StorageItemMostRecentlyUsedList;
}
