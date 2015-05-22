typedef IQuickLink = {
	var id : String;
	var supportedDataFormats : Windows.Foundation.Collections.IVector<String>;
	var supportedFileTypes : Windows.Foundation.Collections.IVector<String>;
	var thumbnail : Windows.Storage.Streams.RandomAccessStreamReference;
	var title : String;
};
extern class QuickLink {
	var id : String;
	var supportedDataFormats : Windows.Foundation.Collections.IVector<String>;
	var supportedFileTypes : Windows.Foundation.Collections.IVector<String>;
	var thumbnail : Windows.Storage.Streams.RandomAccessStreamReference;
	var title : String;
}
typedef IShareOperation = {
	var data : Windows.ApplicationModel.DataTransfer.DataPackageView;
	var quickLinkId : String;
	function removeThisQuickLink():Void;
	function reportStarted():Void;
	function reportDataRetrieved():Void;
	function reportSubmittedBackgroundTask():Void;
	@:overload(function():Void { })
	function reportCompleted(quicklink:Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink):Void;
	function reportError(value:String):Void;
};
extern class ShareOperation {
	var data : Windows.ApplicationModel.DataTransfer.DataPackageView;
	var quickLinkId : String;
	function removeThisQuickLink():Void;
	function reportStarted():Void;
	function reportDataRetrieved():Void;
	function reportSubmittedBackgroundTask():Void;
	@:overload(function():Void { })
	function reportCompleted(quicklink:Windows.ApplicationModel.DataTransfer.ShareTarget.QuickLink):Void;
	function reportError(value:String):Void;
}
