typedef IStandardDataFormatsStatics = {
	var bitmap : String;
	var html : String;
	var rtf : String;
	var storageItems : String;
	var text : String;
	var uri : String;
};
extern class StandardDataFormats {
	static var bitmap : String;
	static var html : String;
	static var rtf : String;
	static var storageItems : String;
	static var text : String;
	static var uri : String;
}
typedef IDataPackagePropertySetView = {
	>Windows.Foundation.Collections.IMapView<String, Dynamic>,
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>,
	var applicationListingUri : Windows.Foundation.Uri;
	var applicationName : String;
	var description : String;
	var fileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var thumbnail : Windows.Storage.Streams.RandomAccessStreamReference;
	var title : String;
};
typedef IDataPackagePropertySet = {
	>Windows.Foundation.Collections.IMap<String, Dynamic>,
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>,
	var applicationListingUri : Windows.Foundation.Uri;
	var applicationName : String;
	var description : String;
	var fileTypes : Windows.Foundation.Collections.IVector<String>;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
	var title : String;
};
extern class DataPackagePropertySetView {
	var applicationListingUri : Windows.Foundation.Uri;
	var applicationName : String;
	var description : String;
	var fileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var thumbnail : Windows.Storage.Streams.RandomAccessStreamReference;
	var title : String;
	var size : Float;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function split():{ var first : Windows.Foundation.Collections.IMapView<String, Dynamic>; var second : Windows.Foundation.Collections.IMapView<String, Dynamic>; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
extern class DataPackagePropertySet {
	var applicationListingUri : Windows.Foundation.Uri;
	var applicationName : String;
	var description : String;
	var fileTypes : Windows.Foundation.Collections.IVector<String>;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
	var title : String;
	var size : Float;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
typedef IDataProviderDeferral = {
	function complete():Void;
};
extern class DataProviderDeferral {
	function complete():Void;
}
typedef IDataProviderRequest = {
	var deadline : Date;
	var formatId : String;
	function getDeferral():Windows.ApplicationModel.DataTransfer.DataProviderDeferral;
	function setData(value:Dynamic):Void;
};
extern class DataProviderRequest {
	var deadline : Date;
	var formatId : String;
	function getDeferral():Windows.ApplicationModel.DataTransfer.DataProviderDeferral;
	function setData(value:Dynamic):Void;
}
typedef DataProviderHandler = { };
@:enum abstract DataPackageOperation(Int) {
	var none = 0;
	var copy = 1;
	var move = 2;
	var link = 3;
}
typedef IOperationCompletedEventArgs = {
	var operation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
};
extern class OperationCompletedEventArgs {
	var operation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
}
typedef IDataPackageView = {
	var availableFormats : Windows.Foundation.Collections.IVectorView<String>;
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView;
	var requestedOperation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
	function reportOperationCompleted(value:Windows.ApplicationModel.DataTransfer.DataPackageOperation):Void;
	function contains(formatId:String):Bool;
	function getDataAsync(formatId:String):Windows.Foundation.IAsyncOperation<Dynamic>;
	@:overload(function(formatId:String):Windows.Foundation.IAsyncOperation<String> { })
	function getTextAsync():Windows.Foundation.IAsyncOperation<String>;
	function getUriAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Uri>;
	function getHtmlFormatAsync():Windows.Foundation.IAsyncOperation<String>;
	function getResourceMapAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMapView<String, Windows.Storage.Streams.RandomAccessStreamReference>>;
	function getRtfAsync():Windows.Foundation.IAsyncOperation<String>;
	function getBitmapAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.RandomAccessStreamReference>;
	function getStorageItemsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
};
typedef IDataPackage = {
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySet;
	var requestedOperation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
	var resourceMap : Windows.Foundation.Collections.IMap<String, Windows.Storage.Streams.RandomAccessStreamReference>;
	function getView():Windows.ApplicationModel.DataTransfer.DataPackageView;
	var onoperationcompleted : Dynamic;
	var ondestroyed : Dynamic;
	function setData(formatId:String, value:Dynamic):Void;
	function setDataProvider(formatId:String, delayRenderer:Windows.ApplicationModel.DataTransfer.DataProviderHandler):Void;
	function setText(value:String):Void;
	function setUri(value:Windows.Foundation.Uri):Void;
	function setHtmlFormat(value:String):Void;
	function setRtf(value:String):Void;
	function setBitmap(value:Windows.Storage.Streams.RandomAccessStreamReference):Void;
	@:overload(function(value:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageItem>, readOnly:Bool):Void { })
	function setStorageItems(value:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageItem>):Void;
};
extern class DataPackageView {
	var availableFormats : Windows.Foundation.Collections.IVectorView<String>;
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView;
	var requestedOperation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
	function reportOperationCompleted(value:Windows.ApplicationModel.DataTransfer.DataPackageOperation):Void;
	function contains(formatId:String):Bool;
	function getDataAsync(formatId:String):Windows.Foundation.IAsyncOperation<Dynamic>;
	@:overload(function(formatId:String):Windows.Foundation.IAsyncOperation<String> { })
	function getTextAsync():Windows.Foundation.IAsyncOperation<String>;
	function getUriAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Uri>;
	function getHtmlFormatAsync():Windows.Foundation.IAsyncOperation<String>;
	function getResourceMapAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMapView<String, Windows.Storage.Streams.RandomAccessStreamReference>>;
	function getRtfAsync():Windows.Foundation.IAsyncOperation<String>;
	function getBitmapAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.RandomAccessStreamReference>;
	function getStorageItemsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
}
extern class DataPackage {
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySet;
	var requestedOperation : Windows.ApplicationModel.DataTransfer.DataPackageOperation;
	var resourceMap : Windows.Foundation.Collections.IMap<String, Windows.Storage.Streams.RandomAccessStreamReference>;
	function getView():Windows.ApplicationModel.DataTransfer.DataPackageView;
	var onoperationcompleted : Dynamic;
	var ondestroyed : Dynamic;
	function setData(formatId:String, value:Dynamic):Void;
	function setDataProvider(formatId:String, delayRenderer:Windows.ApplicationModel.DataTransfer.DataProviderHandler):Void;
	function setText(value:String):Void;
	function setUri(value:Windows.Foundation.Uri):Void;
	function setHtmlFormat(value:String):Void;
	function setRtf(value:String):Void;
	function setBitmap(value:Windows.Storage.Streams.RandomAccessStreamReference):Void;
	@:overload(function(value:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageItem>, readOnly:Bool):Void { })
	function setStorageItems(value:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageItem>):Void;
}
typedef IHtmlFormatHelperStatics = {
	function getStaticFragment(htmlFormat:String):String;
	function createHtmlFormat(htmlFragment:String):String;
};
extern class HtmlFormatHelper {
	static function getStaticFragment(htmlFormat:String):String;
	static function createHtmlFormat(htmlFragment:String):String;
}
typedef IClipboardStatics = {
	function getContent():Windows.ApplicationModel.DataTransfer.DataPackageView;
	function setContent(content:Windows.ApplicationModel.DataTransfer.DataPackage):Void;
	function flush():Void;
	function clear():Void;
	var oncontentchanged : Dynamic;
};
extern class Clipboard {
	static function getContent():Windows.ApplicationModel.DataTransfer.DataPackageView;
	static function setContent(content:Windows.ApplicationModel.DataTransfer.DataPackage):Void;
	static function flush():Void;
	static function clear():Void;
	static var oncontentchanged : Dynamic;
}
typedef IDataRequestDeferral = {
	function complete():Void;
};
extern class DataRequestDeferral {
	function complete():Void;
}
typedef IDataRequest = {
	var data : Windows.ApplicationModel.DataTransfer.DataPackage;
	var deadline : Date;
	function failWithDisplayText(value:String):Void;
	function getDeferral():Windows.ApplicationModel.DataTransfer.DataRequestDeferral;
};
extern class DataRequest {
	var data : Windows.ApplicationModel.DataTransfer.DataPackage;
	var deadline : Date;
	function failWithDisplayText(value:String):Void;
	function getDeferral():Windows.ApplicationModel.DataTransfer.DataRequestDeferral;
}
typedef IDataRequestedEventArgs = {
	var request : Windows.ApplicationModel.DataTransfer.DataRequest;
};
extern class DataRequestedEventArgs {
	var request : Windows.ApplicationModel.DataTransfer.DataRequest;
}
typedef ITargetApplicationChosenEventArgs = {
	var applicationName : String;
};
extern class TargetApplicationChosenEventArgs {
	var applicationName : String;
}
typedef IDataTransferManager = {
	var ondatarequested : Dynamic;
	var ontargetapplicationchosen : Dynamic;
};
extern class DataTransferManager {
	var ondatarequested : Dynamic;
	var ontargetapplicationchosen : Dynamic;
	static function showShareUI():Void;
	static function getForCurrentView():Windows.ApplicationModel.DataTransfer.DataTransferManager;
}
typedef IDataTransferManagerStatics = {
	function showShareUI():Void;
	function getForCurrentView():Windows.ApplicationModel.DataTransfer.DataTransferManager;
};
