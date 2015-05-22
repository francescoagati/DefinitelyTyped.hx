@:enum abstract BackgroundTransferStatus(Int) {
	var idle = 0;
	var running = 1;
	var pausedByApplication = 2;
	var pausedCostedNetwork = 3;
	var pausedNoNetwork = 4;
	var completed = 5;
	var canceled = 6;
	var error = 7;
}
@:enum abstract BackgroundTransferCostPolicy(Int) {
	var default = 0;
	var unrestrictedOnly = 1;
	var always = 2;
}
typedef BackgroundDownloadProgress = {
	var bytesReceived : Float;
	var totalBytesToReceive : Float;
	var status : Windows.Networking.BackgroundTransfer.BackgroundTransferStatus;
	var hasResponseChanged : Bool;
	var hasRestarted : Bool;
};
typedef BackgroundUploadProgress = {
	var bytesReceived : Float;
	var bytesSent : Float;
	var totalBytesToReceive : Float;
	var totalBytesToSend : Float;
	var status : Windows.Networking.BackgroundTransfer.BackgroundTransferStatus;
	var hasResponseChanged : Bool;
	var hasRestarted : Bool;
};
typedef IBackgroundTransferBase = {
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var method : String;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	function setRequestHeader(headerName:String, headerValue:String):Void;
};
typedef IBackgroundDownloader = {
	>Windows.Networking.BackgroundTransfer.IBackgroundTransferBase,
	@:overload(function(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile, requestBodyFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.DownloadOperation { })
	function createDownload(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.DownloadOperation;
	function createDownloadAsync(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile, requestBodyStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.DownloadOperation>;
};
extern class DownloadOperation {
	var progress : Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress;
	var resultFile : Windows.Storage.IStorageFile;
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var guid : String;
	var method : String;
	var requestedUri : Windows.Foundation.Uri;
	function startAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation>;
	function attachAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation>;
	function pause():Void;
	function resume():Void;
	function getResultStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getResponseInformation():Windows.Networking.BackgroundTransfer.ResponseInformation;
}
typedef IBackgroundUploader = {
	>Windows.Networking.BackgroundTransfer.IBackgroundTransferBase,
	function createUpload(uri:Windows.Foundation.Uri, sourceFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.UploadOperation;
	function createUploadFromStreamAsync(uri:Windows.Foundation.Uri, sourceStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation>;
	@:overload(function(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>, subType:String):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation> { })
	@:overload(function(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>, subType:String, boundary:String):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation> { })
	function createUploadAsync(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation>;
};
extern class UploadOperation {
	var progress : Windows.Networking.BackgroundTransfer.BackgroundUploadProgress;
	var sourceFile : Windows.Storage.IStorageFile;
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var guid : String;
	var method : String;
	var requestedUri : Windows.Foundation.Uri;
	function startAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation>;
	function attachAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation>;
	function getResultStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getResponseInformation():Windows.Networking.BackgroundTransfer.ResponseInformation;
}
extern class BackgroundTransferContentPart {
	@:overload(function(name:String, fileName:String):Void { })
	@:overload(function():Void { })
	function new(name:String):Void;
	function setHeader(headerName:String, headerValue:String):Void;
	function setText(value:String):Void;
	function setFile(value:Windows.Storage.IStorageFile):Void;
}
typedef IBackgroundTransferOperation = {
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var guid : String;
	var method : String;
	var requestedUri : Windows.Foundation.Uri;
	function getResultStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getResponseInformation():Windows.Networking.BackgroundTransfer.ResponseInformation;
};
extern class ResponseInformation {
	var actualUri : Windows.Foundation.Uri;
	var headers : Windows.Foundation.Collections.IMapView<String, String>;
	var isResumable : Bool;
	var statusCode : Float;
}
typedef IDownloadOperation = {
	>Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation,
	var progress : Windows.Networking.BackgroundTransfer.BackgroundDownloadProgress;
	var resultFile : Windows.Storage.IStorageFile;
	function startAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation>;
	function attachAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.DownloadOperation, Windows.Networking.BackgroundTransfer.DownloadOperation>;
	function pause():Void;
	function resume():Void;
};
typedef IUploadOperation = {
	>Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation,
	var progress : Windows.Networking.BackgroundTransfer.BackgroundUploadProgress;
	var sourceFile : Windows.Storage.IStorageFile;
	function startAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation>;
	function attachAsync():Windows.Foundation.IAsyncOperationWithProgress<Windows.Networking.BackgroundTransfer.UploadOperation, Windows.Networking.BackgroundTransfer.UploadOperation>;
};
typedef IBackgroundDownloaderStaticMethods = {
	@:overload(function(group:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.DownloadOperation>> { })
	function getCurrentDownloadsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.DownloadOperation>>;
};
typedef IBackgroundUploaderStaticMethods = {
	@:overload(function(group:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.UploadOperation>> { })
	function getCurrentUploadsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.UploadOperation>>;
};
typedef IResponseInformation = {
	var actualUri : Windows.Foundation.Uri;
	var headers : Windows.Foundation.Collections.IMapView<String, String>;
	var isResumable : Bool;
	var statusCode : Float;
};
typedef IBackgroundTransferErrorStaticMethods = {
	function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
};
typedef IBackgroundTransferContentPart = {
	function setHeader(headerName:String, headerValue:String):Void;
	function setText(value:String):Void;
	function setFile(value:Windows.Storage.IStorageFile):Void;
};
typedef IBackgroundTransferContentPartFactory = {
	function createWithName(name:String):Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart;
	function createWithNameAndFileName(name:String, fileName:String):Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart;
};
extern class BackgroundDownloader {
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var method : String;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	@:overload(function(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile, requestBodyFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.DownloadOperation { })
	function createDownload(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.DownloadOperation;
	function createDownloadAsync(uri:Windows.Foundation.Uri, resultFile:Windows.Storage.IStorageFile, requestBodyStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.DownloadOperation>;
	function setRequestHeader(headerName:String, headerValue:String):Void;
	@:overload(function(group:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.DownloadOperation>> { })
	static function getCurrentDownloadsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.DownloadOperation>>;
}
extern class BackgroundUploader {
	var costPolicy : Windows.Networking.BackgroundTransfer.BackgroundTransferCostPolicy;
	var group : String;
	var method : String;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	function createUpload(uri:Windows.Foundation.Uri, sourceFile:Windows.Storage.IStorageFile):Windows.Networking.BackgroundTransfer.UploadOperation;
	function createUploadFromStreamAsync(uri:Windows.Foundation.Uri, sourceStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation>;
	@:overload(function(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>, subType:String):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation> { })
	@:overload(function(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>, subType:String, boundary:String):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation> { })
	function createUploadAsync(uri:Windows.Foundation.Uri, parts:Windows.Foundation.Collections.IIterable<Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart>):Windows.Foundation.IAsyncOperation<Windows.Networking.BackgroundTransfer.UploadOperation>;
	function setRequestHeader(headerName:String, headerValue:String):Void;
	@:overload(function(group:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.UploadOperation>> { })
	static function getCurrentUploadsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Networking.BackgroundTransfer.UploadOperation>>;
}
extern class BackgroundTransferError {
	static function getStatus(hresult:Float):Windows.Web.WebErrorStatus;
}
