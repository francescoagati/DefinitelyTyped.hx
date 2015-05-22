@:enum abstract PickerViewMode(Int) {
	var list = 0;
	var thumbnail = 1;
}
@:enum abstract PickerLocationId(Int) {
	var documentsLibrary = 0;
	var computerFolder = 1;
	var desktop = 2;
	var downloads = 3;
	var homeGroup = 4;
	var musicLibrary = 5;
	var picturesLibrary = 6;
	var videosLibrary = 7;
}
extern class FilePickerSelectedFilesArray {
	var size : Float;
	function getAt(index:Float):Windows.Storage.StorageFile;
	function indexOf(value:Windows.Storage.StorageFile):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Storage.StorageFile>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Storage.StorageFile>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Storage.StorageFile>>):Array<Windows.Storage.StorageFile>;
	function join(seperator:String):String;
	function pop():Windows.Storage.StorageFile;
	function push(items:haxe.extern.Rest<Windows.Storage.StorageFile>):Void;
	function reverse():Array<Windows.Storage.StorageFile>;
	function shift():Windows.Storage.StorageFile;
	@:overload(function(start:Float, end:Float):Array<Windows.Storage.StorageFile> { })
	function slice(start:Float):Array<Windows.Storage.StorageFile>;
	@:overload(function(compareFn:Windows.Storage.StorageFile -> Windows.Storage.StorageFile -> Float):Array<Windows.Storage.StorageFile> { })
	function sort():Array<Windows.Storage.StorageFile>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Storage.StorageFile>):Array<Windows.Storage.StorageFile> { })
	function splice(start:Float):Array<Windows.Storage.StorageFile>;
	function unshift(items:haxe.extern.Rest<Windows.Storage.StorageFile>):Float;
	@:overload(function(searchElement:Windows.Storage.StorageFile, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Storage.StorageFile):Float;
	@:overload(function(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Void):Void;
	@:overload(function(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool, thisArg:Dynamic):Array<Windows.Storage.StorageFile> { })
	function filter(callbackfn:Windows.Storage.StorageFile -> Float -> Array<Windows.Storage.StorageFile> -> Bool):Array<Windows.Storage.StorageFile>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.StorageFile> -> Dynamic):Dynamic;
	var length : Float;
}
extern class FilePickerFileTypesOrderedMap {
	var size : Float;
	function lookup(key:String):Windows.Foundation.Collections.IVector<String>;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Windows.Foundation.Collections.IVector<String>>;
	function insert(key:String, value:Windows.Foundation.Collections.IVector<String>):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Foundation.Collections.IVector<String>>>;
}
extern class FileExtensionVector {
	var size : Float;
	function getAt(index:Float):String;
	function getView():Windows.Foundation.Collections.IVectorView<String>;
	function indexOf(value:String):{ var index : Float; var returnValue : Bool; };
	function setAt(index:Float, value:String):Void;
	function insertAt(index:Float, value:String):Void;
	function removeAt(index:Float):Void;
	function append(value:String):Void;
	function removeAtEnd():Void;
	function clear():Void;
	function getMany(startIndex:Float):{ var items : Array<String>; var returnValue : Float; };
	function replaceAll(items:Array<String>):Void;
	function first():Windows.Foundation.Collections.IIterator<String>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<String>>):Array<String>;
	function join(seperator:String):String;
	function pop():String;
	function push(items:haxe.extern.Rest<String>):Void;
	function reverse():Array<String>;
	function shift():String;
	@:overload(function(start:Float, end:Float):Array<String> { })
	function slice(start:Float):Array<String>;
	@:overload(function(compareFn:String -> String -> Float):Array<String> { })
	function sort():Array<String>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<String>):Array<String> { })
	function splice(start:Float):Array<String>;
	function unshift(items:haxe.extern.Rest<String>):Float;
	@:overload(function(searchElement:String, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:String):Float;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:String -> Float -> Array<String> -> Bool):Bool;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:String -> Float -> Array<String> -> Bool):Bool;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:String -> Float -> Array<String> -> Void):Void;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:String -> Float -> Array<String> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Array<String> { })
	function filter(callbackfn:String -> Float -> Array<String> -> Bool):Array<String>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic):Dynamic;
	var length : Float;
}
typedef IFileOpenPicker = {
	var commitButtonText : String;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var settingsIdentifier : String;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	var viewMode : Windows.Storage.Pickers.PickerViewMode;
	function pickSingleFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function pickMultipleFilesAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
};
typedef IFileSavePicker = {
	var commitButtonText : String;
	var defaultFileExtension : String;
	var fileTypeChoices : Windows.Foundation.Collections.IMap<String, Windows.Foundation.Collections.IVector<String>>;
	var settingsIdentifier : String;
	var suggestedFileName : String;
	var suggestedSaveFile : Windows.Storage.StorageFile;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	function pickSaveFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
};
typedef IFolderPicker = {
	var commitButtonText : String;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var settingsIdentifier : String;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	var viewMode : Windows.Storage.Pickers.PickerViewMode;
	function pickSingleFolderAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
};
extern class FileOpenPicker {
	var commitButtonText : String;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var settingsIdentifier : String;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	var viewMode : Windows.Storage.Pickers.PickerViewMode;
	function pickSingleFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function pickMultipleFilesAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
}
extern class FileSavePicker {
	var commitButtonText : String;
	var defaultFileExtension : String;
	var fileTypeChoices : Windows.Foundation.Collections.IMap<String, Windows.Foundation.Collections.IVector<String>>;
	var settingsIdentifier : String;
	var suggestedFileName : String;
	var suggestedSaveFile : Windows.Storage.StorageFile;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	function pickSaveFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
}
extern class FolderPicker {
	var commitButtonText : String;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var settingsIdentifier : String;
	var suggestedStartLocation : Windows.Storage.Pickers.PickerLocationId;
	var viewMode : Windows.Storage.Pickers.PickerViewMode;
	function pickSingleFolderAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
}
