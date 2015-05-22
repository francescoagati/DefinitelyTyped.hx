@:enum abstract PropertyPrefetchOptions(Int) {
	var none = 0;
	var musicProperties = 1;
	var videoProperties = 2;
	var imageProperties = 3;
	var documentProperties = 4;
	var basicProperties = 5;
}
@:enum abstract ThumbnailType(Int) {
	var image = 0;
	var icon = 1;
}
typedef IThumbnailProperties = {
	var originalHeight : Float;
	var originalWidth : Float;
	var returnedSmallerCachedSize : Bool;
	var type : Windows.Storage.FileProperties.ThumbnailType;
};
extern class StorageItemThumbnail {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	var contentType : String;
	var originalHeight : Float;
	var originalWidth : Float;
	var returnedSmallerCachedSize : Bool;
	var type : Windows.Storage.FileProperties.ThumbnailType;
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
@:enum abstract ThumbnailMode(Int) {
	var picturesView = 0;
	var videosView = 1;
	var musicView = 2;
	var documentsView = 3;
	var listView = 4;
	var singleItem = 5;
}
@:enum abstract ThumbnailOptions(Int) {
	var none = 0;
	var returnOnlyIfCached = 1;
	var resizeThumbnail = 2;
	var useCurrentScale = 3;
}
@:enum abstract PhotoOrientation(Int) {
	var unspecified = 0;
	var normal = 1;
	var flipHorizontal = 2;
	var rotate180 = 3;
	var flipVertical = 4;
	var transpose = 5;
	var rotate270 = 6;
	var transverse = 7;
	var rotate90 = 8;
}
@:enum abstract VideoOrientation(Int) {
	var normal = 0;
	var rotate90 = 1;
	var rotate180 = 2;
	var rotate270 = 3;
}
typedef IStorageItemExtraProperties = {
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
};
typedef IStorageItemContentProperties = {
	>Windows.Storage.FileProperties.IStorageItemExtraProperties,
	function getMusicPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.MusicProperties>;
	function getVideoPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.VideoProperties>;
	function getImagePropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.ImageProperties>;
	function getDocumentPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.DocumentProperties>;
};
extern class MusicProperties {
	var album : String;
	var albumArtist : String;
	var artist : String;
	var bitrate : Float;
	var composers : Windows.Foundation.Collections.IVector<String>;
	var conductors : Windows.Foundation.Collections.IVector<String>;
	var duration : Float;
	var genre : Windows.Foundation.Collections.IVector<String>;
	var producers : Windows.Foundation.Collections.IVector<String>;
	var publisher : String;
	var rating : Float;
	var subtitle : String;
	var title : String;
	var trackNumber : Float;
	var writers : Windows.Foundation.Collections.IVector<String>;
	var year : Float;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
extern class VideoProperties {
	var bitrate : Float;
	var directors : Windows.Foundation.Collections.IVector<String>;
	var duration : Float;
	var height : Float;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var latitude : Float;
	var longitude : Float;
	var orientation : Windows.Storage.FileProperties.VideoOrientation;
	var producers : Windows.Foundation.Collections.IVector<String>;
	var publisher : String;
	var rating : Float;
	var subtitle : String;
	var title : String;
	var width : Float;
	var writers : Windows.Foundation.Collections.IVector<String>;
	var year : Float;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
extern class ImageProperties {
	var cameraManufacturer : String;
	var cameraModel : String;
	var dateTaken : Date;
	var height : Float;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var latitude : Float;
	var longitude : Float;
	var orientation : Windows.Storage.FileProperties.PhotoOrientation;
	var peopleNames : Windows.Foundation.Collections.IVectorView<String>;
	var rating : Float;
	var title : String;
	var width : Float;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
extern class DocumentProperties {
	var author : Windows.Foundation.Collections.IVector<String>;
	var comment : String;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var title : String;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
typedef IMusicProperties = {
	>Windows.Storage.FileProperties.IStorageItemExtraProperties,
	var album : String;
	var albumArtist : String;
	var artist : String;
	var bitrate : Float;
	var composers : Windows.Foundation.Collections.IVector<String>;
	var conductors : Windows.Foundation.Collections.IVector<String>;
	var duration : Float;
	var genre : Windows.Foundation.Collections.IVector<String>;
	var producers : Windows.Foundation.Collections.IVector<String>;
	var publisher : String;
	var rating : Float;
	var subtitle : String;
	var title : String;
	var trackNumber : Float;
	var writers : Windows.Foundation.Collections.IVector<String>;
	var year : Float;
};
typedef IImageProperties = {
	>Windows.Storage.FileProperties.IStorageItemExtraProperties,
	var cameraManufacturer : String;
	var cameraModel : String;
	var dateTaken : Date;
	var height : Float;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var latitude : Float;
	var longitude : Float;
	var orientation : Windows.Storage.FileProperties.PhotoOrientation;
	var peopleNames : Windows.Foundation.Collections.IVectorView<String>;
	var rating : Float;
	var title : String;
	var width : Float;
};
typedef IVideoProperties = {
	>Windows.Storage.FileProperties.IStorageItemExtraProperties,
	var bitrate : Float;
	var directors : Windows.Foundation.Collections.IVector<String>;
	var duration : Float;
	var height : Float;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var latitude : Float;
	var longitude : Float;
	var orientation : Windows.Storage.FileProperties.VideoOrientation;
	var producers : Windows.Foundation.Collections.IVector<String>;
	var publisher : String;
	var rating : Float;
	var subtitle : String;
	var title : String;
	var width : Float;
	var writers : Windows.Foundation.Collections.IVector<String>;
	var year : Float;
};
typedef IDocumentProperties = {
	>Windows.Storage.FileProperties.IStorageItemExtraProperties,
	var author : Windows.Foundation.Collections.IVector<String>;
	var comment : String;
	var keywords : Windows.Foundation.Collections.IVector<String>;
	var title : String;
};
typedef IBasicProperties = {
	var dateModified : Date;
	var itemDate : Date;
	var size : Float;
};
extern class StorageItemContentProperties {
	function getMusicPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.MusicProperties>;
	function getVideoPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.VideoProperties>;
	function getImagePropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.ImageProperties>;
	function getDocumentPropertiesAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.FileProperties.DocumentProperties>;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
extern class BasicProperties {
	var dateModified : Date;
	var itemDate : Date;
	var size : Float;
	function retrievePropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IMap<String, Dynamic>>;
	@:overload(function():Windows.Foundation.IAsyncAction { })
	function savePropertiesAsync(propertiesToSave:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>):Windows.Foundation.IAsyncAction;
}
