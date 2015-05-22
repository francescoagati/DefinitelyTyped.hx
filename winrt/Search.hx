typedef ISearchPaneQueryLinguisticDetails = {
	var queryTextAlternatives : Windows.Foundation.Collections.IVectorView<String>;
	var queryTextCompositionLength : Float;
	var queryTextCompositionStart : Float;
};
extern class SearchPaneQueryLinguisticDetails {
	var queryTextAlternatives : Windows.Foundation.Collections.IVectorView<String>;
	var queryTextCompositionLength : Float;
	var queryTextCompositionStart : Float;
}
typedef ISearchPaneVisibilityChangedEventArgs = {
	var visible : Bool;
};
extern class SearchPaneVisibilityChangedEventArgs {
	var visible : Bool;
}
typedef ISearchPaneQueryChangedEventArgs = {
	var language : String;
	var linguisticDetails : Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails;
	var queryText : String;
};
extern class SearchPaneQueryChangedEventArgs {
	var language : String;
	var linguisticDetails : Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails;
	var queryText : String;
}
typedef ISearchPaneQuerySubmittedEventArgs = {
	var language : String;
	var queryText : String;
};
extern class SearchPaneQuerySubmittedEventArgs {
	var language : String;
	var queryText : String;
}
typedef ISearchPaneResultSuggestionChosenEventArgs = {
	var tag : String;
};
extern class SearchPaneResultSuggestionChosenEventArgs {
	var tag : String;
}
typedef ISearchSuggestionCollection = {
	var size : Float;
	function appendQuerySuggestion(text:String):Void;
	function appendQuerySuggestions(suggestions:Windows.Foundation.Collections.IIterable<String>):Void;
	function appendResultSuggestion(text:String, detailText:String, tag:String, image:Windows.Storage.Streams.IRandomAccessStreamReference, imageAlternateText:String):Void;
	function appendSearchSeparator(label:String):Void;
};
extern class SearchSuggestionCollection {
	var size : Float;
	function appendQuerySuggestion(text:String):Void;
	function appendQuerySuggestions(suggestions:Windows.Foundation.Collections.IIterable<String>):Void;
	function appendResultSuggestion(text:String, detailText:String, tag:String, image:Windows.Storage.Streams.IRandomAccessStreamReference, imageAlternateText:String):Void;
	function appendSearchSeparator(label:String):Void;
}
typedef ISearchPaneSuggestionsRequestDeferral = {
	function complete():Void;
};
typedef ISearchPaneSuggestionsRequest = {
	var isCanceled : Bool;
	var searchSuggestionCollection : Windows.ApplicationModel.Search.SearchSuggestionCollection;
	function getDeferral():Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral;
};
extern class SearchPaneSuggestionsRequestDeferral {
	function complete():Void;
}
extern class SearchPaneSuggestionsRequest {
	var isCanceled : Bool;
	var searchSuggestionCollection : Windows.ApplicationModel.Search.SearchSuggestionCollection;
	function getDeferral():Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral;
}
typedef ISearchPaneSuggestionsRequestedEventArgs = {
	>Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs,
	var request : Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest;
};
extern class SearchPaneSuggestionsRequestedEventArgs {
	var request : Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest;
	var language : String;
	var linguisticDetails : Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails;
	var queryText : String;
}
typedef ILocalContentSuggestionSettings = {
	var aqsFilter : String;
	var enabled : Bool;
	var locations : Windows.Foundation.Collections.IVector<Windows.Storage.StorageFolder>;
	var propertiesToMatch : Windows.Foundation.Collections.IVector<String>;
};
extern class LocalContentSuggestionSettings {
	var aqsFilter : String;
	var enabled : Bool;
	var locations : Windows.Foundation.Collections.IVector<Windows.Storage.StorageFolder>;
	var propertiesToMatch : Windows.Foundation.Collections.IVector<String>;
}
typedef ISearchPaneStatics = {
	function getForCurrentView():Windows.ApplicationModel.Search.SearchPane;
};
extern class SearchPane {
	var language : String;
	var placeholderText : String;
	var queryText : String;
	var searchHistoryContext : String;
	var searchHistoryEnabled : Bool;
	var showOnKeyboardInput : Bool;
	var visible : Bool;
	var onvisibilitychanged : Dynamic;
	var onquerychanged : Dynamic;
	var onsuggestionsrequested : Dynamic;
	var onquerysubmitted : Dynamic;
	var onresultsuggestionchosen : Dynamic;
	function setLocalContentSuggestionSettings(settings:Windows.ApplicationModel.Search.LocalContentSuggestionSettings):Void;
	@:overload(function(query:String):Void { })
	function show():Void;
	function trySetQueryText(query:String):Bool;
	static function getForCurrentView():Windows.ApplicationModel.Search.SearchPane;
}
typedef ISearchPane = {
	var language : String;
	var placeholderText : String;
	var queryText : String;
	var searchHistoryContext : String;
	var searchHistoryEnabled : Bool;
	var showOnKeyboardInput : Bool;
	var visible : Bool;
	var onvisibilitychanged : Dynamic;
	var onquerychanged : Dynamic;
	var onsuggestionsrequested : Dynamic;
	var onquerysubmitted : Dynamic;
	var onresultsuggestionchosen : Dynamic;
	function setLocalContentSuggestionSettings(settings:Windows.ApplicationModel.Search.LocalContentSuggestionSettings):Void;
	@:overload(function(query:String):Void { })
	function show():Void;
	function trySetQueryText(query:String):Bool;
};
typedef SortEntry = {
	var propertyName : String;
	var ascendingOrder : Bool;
};
@:enum abstract DateStackOption(Int) {
	var none = 0;
	var year = 1;
	var month = 2;
}
@:enum abstract IndexerOption(Int) {
	var useIndexerWhenAvailable = 0;
	var onlyUseIndexer = 1;
	var doNotUseIndexer = 2;
}
@:enum abstract FolderDepth(Int) {
	var shallow = 0;
	var deep = 1;
}
@:enum abstract CommonFileQuery(Int) {
	var defaultQuery = 0;
	var orderByName = 1;
	var orderByTitle = 2;
	var orderByMusicProperties = 3;
	var orderBySearchRank = 4;
	var orderByDate = 5;
}
@:enum abstract CommonFolderQuery(Int) {
	var defaultQuery = 0;
	var groupByYear = 1;
	var groupByMonth = 2;
	var groupByArtist = 3;
	var groupByAlbum = 4;
	var groupByAlbumArtist = 5;
	var groupByComposer = 6;
	var groupByGenre = 7;
	var groupByPublishedYear = 8;
	var groupByRating = 9;
	var groupByTag = 10;
	var groupByAuthor = 11;
	var groupByType = 12;
}
@:enum abstract IndexedState(Int) {
	var unknown = 0;
	var notIndexed = 1;
	var partiallyIndexed = 2;
	var fullyIndexed = 3;
}
typedef IQueryOptions = {
	var applicationSearchFilter : String;
	var dateStackOption : Windows.Storage.Search.DateStackOption;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var folderDepth : Windows.Storage.Search.FolderDepth;
	var groupPropertyName : String;
	var indexerOption : Windows.Storage.Search.IndexerOption;
	var language : String;
	var sortOrder : Windows.Foundation.Collections.IVector<Windows.Storage.Search.SortEntry>;
	var userSearchFilter : String;
	function saveToString():String;
	function loadFromString(value:String):Void;
	function setThumbnailPrefetch(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Void;
	function setPropertyPrefetch(options:Windows.Storage.FileProperties.PropertyPrefetchOptions, propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Void;
};
typedef IQueryOptionsFactory = {
	function createCommonFileQuery(query:Windows.Storage.Search.CommonFileQuery, fileTypeFilter:Windows.Foundation.Collections.IIterable<String>):Windows.Storage.Search.QueryOptions;
	function createCommonFolderQuery(query:Windows.Storage.Search.CommonFolderQuery):Windows.Storage.Search.QueryOptions;
};
extern class QueryOptions {
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery):Void { })
	@:overload(function():Void { })
	function new(query:Windows.Storage.Search.CommonFileQuery, fileTypeFilter:Windows.Foundation.Collections.IIterable<String>):Void;
	var applicationSearchFilter : String;
	var dateStackOption : Windows.Storage.Search.DateStackOption;
	var fileTypeFilter : Windows.Foundation.Collections.IVector<String>;
	var folderDepth : Windows.Storage.Search.FolderDepth;
	var groupPropertyName : String;
	var indexerOption : Windows.Storage.Search.IndexerOption;
	var language : String;
	var sortOrder : Windows.Foundation.Collections.IVector<Windows.Storage.Search.SortEntry>;
	var userSearchFilter : String;
	function saveToString():String;
	function loadFromString(value:String):Void;
	function setThumbnailPrefetch(mode:Windows.Storage.FileProperties.ThumbnailMode, requestedSize:Float, options:Windows.Storage.FileProperties.ThumbnailOptions):Void;
	function setPropertyPrefetch(options:Windows.Storage.FileProperties.PropertyPrefetchOptions, propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Void;
}
typedef IStorageQueryResultBase = {
	var folder : Windows.Storage.StorageFolder;
	function getItemCountAsync():Windows.Foundation.IAsyncOperation<Float>;
	var oncontentschanged : Dynamic;
	var onoptionschanged : Dynamic;
	function findStartIndexAsync(value:Dynamic):Windows.Foundation.IAsyncOperation<Float>;
	function getCurrentQueryOptions():Windows.Storage.Search.QueryOptions;
	function applyNewQueryOptions(newQueryOptions:Windows.Storage.Search.QueryOptions):Void;
};
typedef IStorageFileQueryResult = {
	>Windows.Storage.Search.IStorageQueryResultBase,
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>> { })
	function getFilesAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
};
typedef IStorageFolderQueryResult = {
	>Windows.Storage.Search.IStorageQueryResultBase,
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>> { })
	function getFoldersAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>>;
};
typedef IStorageItemQueryResult = {
	>Windows.Storage.Search.IStorageQueryResultBase,
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>> { })
	function getItemsAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
};
typedef IStorageFolderQueryOperations = {
	function getIndexedStateAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Search.IndexedState>;
	@:overload(function(query:Windows.Storage.Search.CommonFileQuery):Windows.Storage.Search.StorageFileQueryResult { })
	function createFileQuery():Windows.Storage.Search.StorageFileQueryResult;
	function createFileQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageFileQueryResult;
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery):Windows.Storage.Search.StorageFolderQueryResult { })
	function createFolderQuery():Windows.Storage.Search.StorageFolderQueryResult;
	function createFolderQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageFolderQueryResult;
	function createItemQuery():Windows.Storage.Search.StorageItemQueryResult;
	function createItemQueryWithOptions(queryOptions:Windows.Storage.Search.QueryOptions):Windows.Storage.Search.StorageItemQueryResult;
	@:overload(function(query:Windows.Storage.Search.CommonFileQuery):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>> { })
	function getFilesAsync(query:Windows.Storage.Search.CommonFileQuery, startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
	@:overload(function(query:Windows.Storage.Search.CommonFolderQuery):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>> { })
	function getFoldersAsync(query:Windows.Storage.Search.CommonFolderQuery, startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>>;
	function getItemsAsync(startIndex:Float, maxItemsToRetrieve:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
	function areQueryOptionsSupported(queryOptions:Windows.Storage.Search.QueryOptions):Bool;
	function isCommonFolderQuerySupported(query:Windows.Storage.Search.CommonFolderQuery):Bool;
	function isCommonFileQuerySupported(query:Windows.Storage.Search.CommonFileQuery):Bool;
};
extern class StorageFileQueryResult {
	var folder : Windows.Storage.StorageFolder;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>> { })
	function getFilesAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFile>>;
	function getItemCountAsync():Windows.Foundation.IAsyncOperation<Float>;
	var oncontentschanged : Dynamic;
	var onoptionschanged : Dynamic;
	function findStartIndexAsync(value:Dynamic):Windows.Foundation.IAsyncOperation<Float>;
	function getCurrentQueryOptions():Windows.Storage.Search.QueryOptions;
	function applyNewQueryOptions(newQueryOptions:Windows.Storage.Search.QueryOptions):Void;
}
extern class StorageFolderQueryResult {
	var folder : Windows.Storage.StorageFolder;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>> { })
	function getFoldersAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.StorageFolder>>;
	function getItemCountAsync():Windows.Foundation.IAsyncOperation<Float>;
	var oncontentschanged : Dynamic;
	var onoptionschanged : Dynamic;
	function findStartIndexAsync(value:Dynamic):Windows.Foundation.IAsyncOperation<Float>;
	function getCurrentQueryOptions():Windows.Storage.Search.QueryOptions;
	function applyNewQueryOptions(newQueryOptions:Windows.Storage.Search.QueryOptions):Void;
}
extern class StorageItemQueryResult {
	var folder : Windows.Storage.StorageFolder;
	@:overload(function():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>> { })
	function getItemsAsync(startIndex:Float, maxNumberOfItems:Float):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>>;
	function getItemCountAsync():Windows.Foundation.IAsyncOperation<Float>;
	var oncontentschanged : Dynamic;
	var onoptionschanged : Dynamic;
	function findStartIndexAsync(value:Dynamic):Windows.Foundation.IAsyncOperation<Float>;
	function getCurrentQueryOptions():Windows.Storage.Search.QueryOptions;
	function applyNewQueryOptions(newQueryOptions:Windows.Storage.Search.QueryOptions):Void;
}
extern class SortEntryVector {
	var size : Float;
	function getAt(index:Float):Windows.Storage.Search.SortEntry;
	function getView():Windows.Foundation.Collections.IVectorView<Windows.Storage.Search.SortEntry>;
	function indexOf(value:Windows.Storage.Search.SortEntry):{ var index : Float; var returnValue : Bool; };
	function setAt(index:Float, value:Windows.Storage.Search.SortEntry):Void;
	function insertAt(index:Float, value:Windows.Storage.Search.SortEntry):Void;
	function removeAt(index:Float):Void;
	function append(value:Windows.Storage.Search.SortEntry):Void;
	function removeAtEnd():Void;
	function clear():Void;
	function getMany(startIndex:Float):{ var items : Array<Windows.Storage.Search.SortEntry>; var returnValue : Float; };
	function replaceAll(items:Array<Windows.Storage.Search.SortEntry>):Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Storage.Search.SortEntry>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Storage.Search.SortEntry>>):Array<Windows.Storage.Search.SortEntry>;
	function join(seperator:String):String;
	function pop():Windows.Storage.Search.SortEntry;
	function push(items:haxe.extern.Rest<Windows.Storage.Search.SortEntry>):Void;
	function reverse():Array<Windows.Storage.Search.SortEntry>;
	function shift():Windows.Storage.Search.SortEntry;
	@:overload(function(start:Float, end:Float):Array<Windows.Storage.Search.SortEntry> { })
	function slice(start:Float):Array<Windows.Storage.Search.SortEntry>;
	@:overload(function(compareFn:Windows.Storage.Search.SortEntry -> Windows.Storage.Search.SortEntry -> Float):Array<Windows.Storage.Search.SortEntry> { })
	function sort():Array<Windows.Storage.Search.SortEntry>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Storage.Search.SortEntry>):Array<Windows.Storage.Search.SortEntry> { })
	function splice(start:Float):Array<Windows.Storage.Search.SortEntry>;
	function unshift(items:haxe.extern.Rest<Windows.Storage.Search.SortEntry>):Float;
	@:overload(function(searchElement:Windows.Storage.Search.SortEntry, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Storage.Search.SortEntry):Float;
	@:overload(function(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Void):Void;
	@:overload(function(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool, thisArg:Dynamic):Array<Windows.Storage.Search.SortEntry> { })
	function filter(callbackfn:Windows.Storage.Search.SortEntry -> Float -> Array<Windows.Storage.Search.SortEntry> -> Bool):Array<Windows.Storage.Search.SortEntry>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Storage.Search.SortEntry> -> Dynamic):Dynamic;
	var length : Float;
}
