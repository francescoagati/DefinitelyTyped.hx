typedef IKnownFoldersStatics = {
	var documentsLibrary : Windows.Storage.StorageFolder;
	var homeGroup : Windows.Storage.StorageFolder;
	var mediaServerDevices : Windows.Storage.StorageFolder;
	var musicLibrary : Windows.Storage.StorageFolder;
	var picturesLibrary : Windows.Storage.StorageFolder;
	var removableDevices : Windows.Storage.StorageFolder;
	var videosLibrary : Windows.Storage.StorageFolder;
};
extern class StorageFolder {
	var attributes : Windows.Storage.FileAttributes;
	var dateCreated : Date;
	var name : String;
	var path : String;
	var displayName : String;
	var displayType : String;
	var folderRelativeId : String;
	var properties : Windows.Storage.FileProperties.StorageItemContentProperties;
	@:overload(function(desiredName:String, options:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function createFileAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(desiredName:String, options:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function createFolderAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function getFileAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function getFolderAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function getItemAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem>;
	@:overload(function(query:Windows.Storage.Search.CommonFileQuery, startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>> { })
	@:overload(function(query:Windows.Storage.Search.CommonFileQuery):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>> { })
	function getFilesAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery, startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>> { })
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>> { })
	function getFoldersAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>>;
	@:overload(function(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>> { })
	function getItemsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
	@:overload(function(desiredName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncAction { })
	function renameAsync(desiredName:String):Windows.Foundation.IAsyncAction;
	@:overload(function(option:Windows.Storage.StorageDeleteOption):Windows.Foundation.IAsyncAction { })
	function deleteAsync():Windows.Foundation.IAsyncAction;
	function getBasicPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.BasicProperties>;
	function isOfType(type:Windows.Storage.StorageItemTypes):Bool;
	function getIndexedStateAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Search.IndexedState>;
	@:overload(function(query:Windows.Storage.Search.CommonFileQuery):Windows.Storage.Search.StorageFileQueryResult { })
	function createFileQuery():Windows.Storage.Search.StorageFileQueryResult;
	function createFileQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageFileQueryResult;
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery):Windows.Storage.Search.StorageFolderQueryResult { })
	function createFolderQuery():Windows.Storage.Search.StorageFolderQueryResult;
	function createFolderQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageFolderQueryResult;
	function createItemQuery():Windows.Storage.Search.StorageItemQueryResult;
	function createItemQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageItemQueryResult;
	function areQueryOptionsSupported(queryOptions:Windows.Storage.Search.QueryOptions):Bool;
	function isCommonFolderQuerySupported(query:Windows.Storage.Search.CommonFolderQuery):Bool;
	function isCommonFileQuerySupported(query:Windows.Storage.Search.CommonFileQuery):Bool;
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	function getThumbnailAsync(mode:Windows.Storage.FileProperties.ThumbnailMode):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail>;
	static function getFolderFromPathAsync(path:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
}
extern class KnownFolders {
	static var documentsLibrary : Windows.Storage.StorageFolder;
	static var homeGroup : Windows.Storage.StorageFolder;
	static var mediaServerDevices : Windows.Storage.StorageFolder;
	static var musicLibrary : Windows.Storage.StorageFolder;
	static var picturesLibrary : Windows.Storage.StorageFolder;
	static var removableDevices : Windows.Storage.StorageFolder;
	static var videosLibrary : Windows.Storage.StorageFolder;
}
@:enum abstract CreationCollisionOption(Int) {
	var generateUniqueName = 0;
	var replaceExisting = 1;
	var failIfExists = 2;
	var openIfExists = 3;
}
typedef IDownloadsFolderStatics = {
	@:overload(function(desiredName:String, option:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function createFileAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(desiredName:String, option:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function createFolderAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
};
extern class StorageFile {
	var contentType : String;
	var fileType : String;
	var attributes : Windows.Storage.FileAttributes;
	var dateCreated : Date;
	var name : String;
	var path : String;
	var displayName : String;
	var displayType : String;
	var folderRelativeId : String;
	var properties : Windows.Storage.FileProperties.StorageItemContentProperties;
	function openAsync(accessMode:Windows.Storage.FileAccessMode):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStream>;
	function openTransactedWriteAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageStreamTransaction>;
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function copyAsync(destinationFolder:Windows.Storage.IStorageFolder):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function copyAndReplaceAsync(fileToReplace:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String):Windows.Foundation.IAsyncAction { })
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncAction { })
	function moveAsync(destinationFolder:Windows.Storage.IStorageFolder):Windows.Foundation.IAsyncAction;
	function moveAndReplaceAsync(fileToReplace:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	@:overload(function(desiredName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncAction { })
	function renameAsync(desiredName:String):Windows.Foundation.IAsyncAction;
	@:overload(function(option:Windows.Storage.StorageDeleteOption):Windows.Foundation.IAsyncAction { })
	function deleteAsync():Windows.Foundation.IAsyncAction;
	function getBasicPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.BasicProperties>;
	function isOfType(type:Windows.Storage.StorageItemTypes):Bool;
	function openReadAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamWithContentType>;
	function openSequentialReadAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IInputStream>;
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	function getThumbnailAsync(mode:Windows.Storage.FileProperties.ThumbnailMode):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail>;
	static function getFileFromPathAsync(path:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function getFileFromApplicationUriAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function createStreamedFileAsync(displayNameWithExtension:String, dataRequested:Windows.Storage.StreamedFileDataRequestedHandler, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function replaceWithStreamedFileAsync(fileToReplace:Windows.Storage.IStorageFile, dataRequested:Windows.Storage.StreamedFileDataRequestedHandler, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function createStreamedFileFromUriAsync(displayNameWithExtension:String, uri:Windows.Foundation.Uri, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function replaceWithStreamedFileFromUriAsync(fileToReplace:Windows.Storage.IStorageFile, uri:Windows.Foundation.Uri, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
}
extern class DownloadsFolder {
	@:overload(function(desiredName:String, option:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	static function createFileAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(desiredName:String, option:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	static function createFolderAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
}
@:enum abstract NameCollisionOption(Int) {
	var generateUniqueName = 0;
	var replaceExisting = 1;
	var failIfExists = 2;
}
@:enum abstract StorageDeleteOption(Int) {
	var default = 0;
	var permanentDelete = 1;
}
@:enum abstract StorageItemTypes(Int) {
	var none = 0;
	var file = 1;
	var folder = 2;
}
@:enum abstract FileAttributes(Int) {
	var normal = 0;
	var readOnly = 1;
	var directory = 2;
	var archive = 3;
	var temporary = 4;
}
@:enum abstract FileAccessMode(Int) {
	var read = 0;
	var readWrite = 1;
}
@:enum abstract StreamedFileFailureMode(Int) {
	var failed = 0;
	var currentlyUnavailable = 1;
	var incomplete = 2;
}
typedef IStreamedFileDataRequest = {
	function failAndClose(failureMode:Windows.Storage.StreamedFileFailureMode):Void;
};
extern class StreamedFileDataRequest {
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function dispose():Void;
	function failAndClose(failureMode:Windows.Storage.StreamedFileFailureMode):Void;
	function close():Void;
}
typedef StreamedFileDataRequestedHandler = { };
typedef IStorageFileStatics = {
	function getFileFromPathAsync(path:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function getFileFromApplicationUriAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function createStreamedFileAsync(displayNameWithExtension:String, dataRequested:Windows.Storage.StreamedFileDataRequestedHandler, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function replaceWithStreamedFileAsync(fileToReplace:Windows.Storage.IStorageFile, dataRequested:Windows.Storage.StreamedFileDataRequestedHandler, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function createStreamedFileFromUriAsync(displayNameWithExtension:String, uri:Windows.Foundation.Uri, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function replaceWithStreamedFileFromUriAsync(fileToReplace:Windows.Storage.IStorageFile, uri:Windows.Foundation.Uri, thumbnail:Windows.Storage.Streams.IRandomAccessStreamReference):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
};
extern class StorageStreamTransaction {
	var stream : Windows.Storage.Streams.IRandomAccessStream;
	function commitAsync():Windows.Foundation.IAsyncAction;
	function dispose():Void;
	function close():Void;
}
typedef IStorageItem = {
	var attributes : Windows.Storage.FileAttributes;
	var dateCreated : Date;
	var name : String;
	var path : String;
	@:overload(function(desiredName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncAction { })
	function renameAsync(desiredName:String):Windows.Foundation.IAsyncAction;
	@:overload(function(option:Windows.Storage.StorageDeleteOption):Windows.Foundation.IAsyncAction { })
	function deleteAsync():Windows.Foundation.IAsyncAction;
	function getBasicPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.BasicProperties>;
	function isOfType(type:Windows.Storage.StorageItemTypes):Bool;
};
typedef IStorageFolder = {
	>Windows.Storage.IStorageItem,
	@:overload(function(desiredName:String, options:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function createFileAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	@:overload(function(desiredName:String, options:Windows.Storage.CreationCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder> { })
	function createFolderAsync(desiredName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function getFileAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function getFolderAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
	function getItemAsync(name:String):Windows.Foundation.IAsyncOperation<Windows.Storage.IStorageItem>;
	function getFilesAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
	function getFoldersAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>>;
	@:overload(function(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>> { })
	function getItemsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
};
typedef IStorageFile = {
	>Windows.Storage.IStorageItem,
	>Windows.Storage.Streams.IRandomAccessStreamReference,
	>Windows.Storage.Streams.IInputStreamReference,
	var contentType : String;
	var fileType : String;
	function openAsync(accessMode:Windows.Storage.FileAccessMode):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStream>;
	function openTransactedWriteAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageStreamTransaction>;
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function copyAsync(destinationFolder:Windows.Storage.IStorageFolder):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function copyAndReplaceAsync(fileToReplace:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String):Windows.Foundation.IAsyncAction { })
	@:overload(function(destinationFolder:Windows.Storage.IStorageFolder, desiredNewName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncAction { })
	function moveAsync(destinationFolder:Windows.Storage.IStorageFolder):Windows.Foundation.IAsyncAction;
	function moveAndReplaceAsync(fileToReplace:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
};
typedef IStorageFolderStatics = {
	function getFolderFromPathAsync(path:String):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFolder>;
};
typedef IStorageItemProperties = {
	var displayName : String;
	var displayType : String;
	var folderRelativeId : String;
	var properties : Windows.Storage.FileProperties.StorageItemContentProperties;
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	function getThumbnailAsync(mode:Windows.Storage.FileProperties.ThumbnailMode):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail>;
};
typedef IFileIOStatics = {
	@:overload(function(file:Windows.Storage.IStorageFile, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<String> { })
	function readTextAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<String>;
	@:overload(function(file:Windows.Storage.IStorageFile, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function writeTextAsync(file:Windows.Storage.IStorageFile, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function appendTextAsync(file:Windows.Storage.IStorageFile, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>> { })
	function readLinesAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>>;
	@:overload(function(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function writeLinesAsync(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function appendLinesAsync(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	function readBufferAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function writeBufferAsync(file:Windows.Storage.IStorageFile, buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncAction;
	function writeBytesAsync(file:Windows.Storage.IStorageFile, buffer:Uint8Array):Windows.Foundation.IAsyncAction;
};
extern class FileIO {
	@:overload(function(file:Windows.Storage.IStorageFile, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<String> { })
	static function readTextAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<String>;
	@:overload(function(file:Windows.Storage.IStorageFile, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function writeTextAsync(file:Windows.Storage.IStorageFile, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function appendTextAsync(file:Windows.Storage.IStorageFile, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>> { })
	static function readLinesAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>>;
	@:overload(function(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function writeLinesAsync(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	@:overload(function(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function appendLinesAsync(file:Windows.Storage.IStorageFile, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	static function readBufferAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	static function writeBufferAsync(file:Windows.Storage.IStorageFile, buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncAction;
	static function writeBytesAsync(file:Windows.Storage.IStorageFile, buffer:Uint8Array):Windows.Foundation.IAsyncAction;
}
typedef IPathIOStatics = {
	@:overload(function(absolutePath:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<String> { })
	function readTextAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<String>;
	@:overload(function(absolutePath:String, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function writeTextAsync(absolutePath:String, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function appendTextAsync(absolutePath:String, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>> { })
	function readLinesAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>>;
	@:overload(function(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function writeLinesAsync(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	function appendLinesAsync(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	function readBufferAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function writeBufferAsync(absolutePath:String, buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncAction;
	function writeBytesAsync(absolutePath:String, buffer:Uint8Array):Windows.Foundation.IAsyncAction;
};
extern class PathIO {
	@:overload(function(absolutePath:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<String> { })
	static function readTextAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<String>;
	@:overload(function(absolutePath:String, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function writeTextAsync(absolutePath:String, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, contents:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function appendTextAsync(absolutePath:String, contents:String):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>> { })
	static function readLinesAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVector<String>>;
	@:overload(function(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function writeLinesAsync(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	@:overload(function(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>, encoding:Windows.Storage.Streams.UnicodeEncoding):Windows.Foundation.IAsyncAction { })
	static function appendLinesAsync(absolutePath:String, lines:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncAction;
	static function readBufferAsync(absolutePath:String):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	static function writeBufferAsync(absolutePath:String, buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncAction;
	static function writeBytesAsync(absolutePath:String, buffer:Uint8Array):Windows.Foundation.IAsyncAction;
}
typedef ICachedFileManagerStatics = {
	function deferUpdates(file:Windows.Storage.IStorageFile):Void;
	function completeUpdatesAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Storage.Provider.FileUpdateStatus>;
};
extern class CachedFileManager {
	static function deferUpdates(file:Windows.Storage.IStorageFile):Void;
	static function completeUpdatesAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Storage.Provider.FileUpdateStatus>;
}
typedef IStorageStreamTransaction = {
	>Windows.Foundation.IClosable,
	var stream : Windows.Storage.Streams.IRandomAccessStream;
	function commitAsync():Windows.Foundation.IAsyncAction;
};
@:enum abstract ApplicationDataLocality(Int) {
	var local = 0;
	var roaming = 1;
	var temporary = 2;
}
@:enum abstract ApplicationDataCreateDisposition(Int) {
	var always = 0;
	var existing = 1;
}
typedef IApplicationDataStatics = {
	var current : Windows.Storage.ApplicationData;
};
extern class ApplicationData {
	var localFolder : Windows.Storage.StorageFolder;
	var localSettings : Windows.Storage.ApplicationDataContainer;
	var roamingFolder : Windows.Storage.StorageFolder;
	var roamingSettings : Windows.Storage.ApplicationDataContainer;
	var roamingStorageQuota : Float;
	var temporaryFolder : Windows.Storage.StorageFolder;
	var version : Float;
	function setVersionAsync(desiredVersion:Float, handler:Windows.Storage.ApplicationDataSetVersionHandler):Windows.Foundation.IAsyncAction;
	@:overload(function(locality:Windows.Storage.ApplicationDataLocality):Windows.Foundation.IAsyncAction { })
	function clearAsync():Windows.Foundation.IAsyncAction;
	var ondatachanged : Dynamic;
	function signalDataChanged():Void;
	static var current : Windows.Storage.ApplicationData;
}
typedef IApplicationData = {
	var localFolder : Windows.Storage.StorageFolder;
	var localSettings : Windows.Storage.ApplicationDataContainer;
	var roamingFolder : Windows.Storage.StorageFolder;
	var roamingSettings : Windows.Storage.ApplicationDataContainer;
	var roamingStorageQuota : Float;
	var temporaryFolder : Windows.Storage.StorageFolder;
	var version : Float;
	function setVersionAsync(desiredVersion:Float, handler:Windows.Storage.ApplicationDataSetVersionHandler):Windows.Foundation.IAsyncAction;
	@:overload(function(locality:Windows.Storage.ApplicationDataLocality):Windows.Foundation.IAsyncAction { })
	function clearAsync():Windows.Foundation.IAsyncAction;
	var ondatachanged : Dynamic;
	function signalDataChanged():Void;
};
typedef ApplicationDataSetVersionHandler = { };
extern class SetVersionRequest {
	var currentVersion : Float;
	var desiredVersion : Float;
	function getDeferral():Windows.Storage.SetVersionDeferral;
}
extern class ApplicationDataContainer {
	var containers : Windows.Foundation.Collections.IMapView<String, Windows.Storage.ApplicationDataContainer>;
	var locality : Windows.Storage.ApplicationDataLocality;
	var name : String;
	var values : Windows.Foundation.Collections.IPropertySet;
	function createContainer(name:String, disposition:Windows.Storage.ApplicationDataCreateDisposition):Windows.Storage.ApplicationDataContainer;
	function deleteContainer(name:String):Void;
}
typedef ISetVersionRequest = {
	var currentVersion : Float;
	var desiredVersion : Float;
	function getDeferral():Windows.Storage.SetVersionDeferral;
};
extern class SetVersionDeferral {
	function complete():Void;
}
typedef ISetVersionDeferral = {
	function complete():Void;
};
typedef IApplicationDataContainer = {
	var containers : Windows.Foundation.Collections.IMapView<String, Windows.Storage.ApplicationDataContainer>;
	var locality : Windows.Storage.ApplicationDataLocality;
	var name : String;
	var values : Windows.Foundation.Collections.IPropertySet;
	function createContainer(name:String, disposition:Windows.Storage.ApplicationDataCreateDisposition):Windows.Storage.ApplicationDataContainer;
	function deleteContainer(name:String):Void;
};
extern class ApplicationDataContainerSettings {
	var size : Float;
	var onmapchanged : Dynamic;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
extern class ApplicationDataCompositeValue {
	var size : Float;
	var onmapchanged : Dynamic;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
