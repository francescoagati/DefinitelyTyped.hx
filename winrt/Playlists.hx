@:enum abstract PlaylistFormat(Int) {
	var windowsMedia = 0;
	var zune = 1;
	var m3u = 2;
}
typedef IPlaylist = {
	var files : Windows.Foundation.Collections.IVector<Windows.Storage.StorageFile>;
	function saveAsync():Windows.Foundation.IAsyncAction;
	@:overload(function(saveLocation:Windows.Storage.IStorageFolder, desiredName:String, option:Windows.Storage.NameCollisionOption, playlistFormat:Windows.Media.Playlists.PlaylistFormat):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function saveAsAsync(saveLocation:Windows.Storage.IStorageFolder, desiredName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
};
typedef IPlaylistStatics = {
	function loadAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Media.Playlists.Playlist>;
};
extern class Playlist {
	var files : Windows.Foundation.Collections.IVector<Windows.Storage.StorageFile>;
	function saveAsync():Windows.Foundation.IAsyncAction;
	@:overload(function(saveLocation:Windows.Storage.IStorageFolder, desiredName:String, option:Windows.Storage.NameCollisionOption, playlistFormat:Windows.Media.Playlists.PlaylistFormat):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile> { })
	function saveAsAsync(saveLocation:Windows.Storage.IStorageFolder, desiredName:String, option:Windows.Storage.NameCollisionOption):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	static function loadAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Media.Playlists.Playlist>;
}
