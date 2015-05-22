typedef IStorageItemInformation = {
	var basicProperties : Windows.Storage.FileProperties.BasicProperties;
	var documentProperties : Windows.Storage.FileProperties.DocumentProperties;
	var imageProperties : Windows.Storage.FileProperties.ImageProperties;
	var musicProperties : Windows.Storage.FileProperties.MusicProperties;
	var thumbnail : Windows.Storage.FileProperties.StorageItemThumbnail;
	var videoProperties : Windows.Storage.FileProperties.VideoProperties;
	var onthumbnailupdated : Dynamic;
	var onpropertiesupdated : Dynamic;
};
typedef IFileInformationFactoryFactory = {
	function createWithMode(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode):Windows.Storage.BulkAccess.FileInformationFactory;
	function createWithModeAndSize(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float):Windows.Storage.BulkAccess.FileInformationFactory;
	function createWithModeAndSizeAndOptions(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float, thumbnailOptions:Windows.Storage.FileProperties.ThumbnailOptions):Windows.Storage.BulkAccess.FileInformationFactory;
	function createWithModeAndSizeAndOptionsAndFlags(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float, thumbnailOptions:Windows.Storage.FileProperties.ThumbnailOptions, delayLoad:Bool):Windows.Storage.BulkAccess.FileInformationFactory;
};
extern class FileInformationFactory {
	@:overload(function(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float):Void { })
	@:overload(function(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float, thumbnailOptions:Windows.Storage.FileProperties.ThumbnailOptions):Void { })
	@:overload(function(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode, requestedThumbnailSize:Float, thumbnailOptions:Windows.Storage.FileProperties.ThumbnailOptions, delayLoad:Bool):Void { })
	function new(queryResult:Windows.Storage.Search.IStorageQueryResultBase, mode:Windows.Storage.FileProperties.ThumbnailMode):Void;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.IStorageItemInformation>> { })
	function getItemsAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.IStorageItemInformation>>;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FileInformation>> { })
	function getFilesAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FileInformation>>;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FolderInformation>> { })
	function getFoldersAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FolderInformation>>;
	function getVirtualizedItemsVector():Dynamic;
	function getVirtualizedFilesVector():Dynamic;
	function getVirtualizedFoldersVector():Dynamic;
}
typedef IFileInformationFactory = {
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.IStorageItemInformation>> { })
	function getItemsAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.IStorageItemInformation>>;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FileInformation>> { })
	function getFilesAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FileInformation>>;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FolderInformation>> { })
	function getFoldersAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.BulkAccess.FolderInformation>>;
	function getVirtualizedItemsVector():Dynamic;
	function getVirtualizedFilesVector():Dynamic;
	function getVirtualizedFoldersVector():Dynamic;
};
extern class FileInformation {
	var basicProperties : Windows.Storage.FileProperties.BasicProperties;
	var documentProperties : Windows.Storage.FileProperties.DocumentProperties;
	var imageProperties : Windows.Storage.FileProperties.ImageProperties;
	var musicProperties : Windows.Storage.FileProperties.MusicProperties;
	var thumbnail : Windows.Storage.FileProperties.StorageItemThumbnail;
	var videoProperties : Windows.Storage.FileProperties.VideoProperties;
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
	var onthumbnailupdated : Dynamic;
	var onpropertiesupdated : Dynamic;
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
}
extern class FolderInformation {
	var basicProperties : Windows.Storage.FileProperties.BasicProperties;
	var documentProperties : Windows.Storage.FileProperties.DocumentProperties;
	var imageProperties : Windows.Storage.FileProperties.ImageProperties;
	var musicProperties : Windows.Storage.FileProperties.MusicProperties;
	var thumbnail : Windows.Storage.FileProperties.StorageItemThumbnail;
	var videoProperties : Windows.Storage.FileProperties.VideoProperties;
	var attributes : Windows.Storage.FileAttributes;
	var dateCreated : Date;
	var name : String;
	var path : String;
	var displayName : String;
	var displayType : String;
	var folderRelativeId : String;
	var properties : Windows.Storage.FileProperties.StorageItemContentProperties;
	var onthumbnailupdated : Dynamic;
	var onpropertiesupdated : Dynamic;
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
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	@:overload(function(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail> { })
	function getThumbnailAsync(mode:Windows.Storage.FileProperties.ThumbnailMode):Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.StorageItemThumbnail>;
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
}
