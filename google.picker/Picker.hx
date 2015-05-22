extern class PickerBuilder {
	function new():Void;
	function addView(viewOrId:Dynamic):PickerBuilder;
	function addViewGroup(viewGroup:Dynamic):PickerBuilder;
	function disableFeature(feature:String):PickerBuilder;
	function enableFeature(feature:String):PickerBuilder;
	function getRelayUrl():String;
	function getTitle():String;
	function hideTitleBar():PickerBuilder;
	function isFeatureEnabled(feature:String):Bool;
	function setAppId(appId:String):PickerBuilder;
	function setCallback(method:haxe.Constraints.Function):PickerBuilder;
	function setDeveloperKey(key:String):PickerBuilder;
	function setDocument(document:String):PickerBuilder;
	function setLocale(locale:String):PickerBuilder;
	function setOAuthToken(token:String):PickerBuilder;
	function setOrigin(origin:String):PickerBuilder;
	function setRelayUrl(url:String):PickerBuilder;
	function setSelectableMimeTypes(type:String):PickerBuilder;
	function setSize():PickerBuilder;
	function setTitle(title:String):PickerBuilder;
	function setUploadToAlbumId(albumId:String):PickerBuilder;
	function toUri():String;
	function build():Picker;
}
typedef Picker = {
	function isVisible():Bool;
	function setCallback():Picker;
	function setRelayUrl(url:String):Picker;
	function setVisible(visible:Bool):Picker;
};
extern class DocsUploadView {
	function new():Void;
	function setIncludeFolders(included:Bool):DocsUploadView;
	function setParent(parentId:String):DocsUploadView;
}
extern class DocsView {
	function new(?viewId:String):Void;
	function setIncludeFolders(included:Bool):DocsView;
	function setSelectFolderEnabled(enabled:Bool):DocsView;
	function setMode(mode:String):DocsView;
	function setOwnedByMe(?me:Bool):DocsView;
	function setParent(parentId:String):DocsView;
	function setStarred(starred:Bool):DocsView;
}
extern class PickerTopLevel {
	static var DocsViewMode : { var GRID : String; var LIST : String; };
	static var Feature : { var MINE_ONLY : String; var MULTISELECT_ENABLED : String; var NAV_HIDDEN : String; var SIMPLE_UPLOAD_ENABLED : String; };
	static var ViewId : { var DOCS : String; var DOCS_IMAGES : String; var DOCS_IMAGES_AND_VIDEOS : String; var DOCS_VIDEOS : String; var DOCUMENTS : String; var DRAWINGS : String; var FOLDERS : String; var FORMS : String; var IMAGE_SEARCH : String; var MAPS : String; var PDFS : String; var PHOTOS : String; var PHOTO_ALBUMS : String; var PHOTO_UPLOAD : String; var PRESENTATIONS : String; var RECENTLY_PICKED : String; var SPREADSHEETS : String; var VIDEO_SEARCH : String; var WEBCAM : String; var YOUTUBE : String; };
	static var Action : { var CANCEL : String; var PICKED : String; };
	static var Document : { var ADDRESS_LINES : String; var AUDIENCE : String; var DESCRIPTION : String; var DURATION : String; var EMBEDDABLE_URL : String; var ICON_URL : String; var ID : String; var IS_NEW : String; var LAST_EDITED_UTC : String; var LATITUDE : String; var LONGITUDE : String; var MIME_TYPE : String; var NAME : String; var NUM_CHILDREN : String; var PARENT_ID : String; var PHONE_NUMBERS : String; var SERVICE_ID : String; var THUMBNAILS : String; var TYPE : String; var URL : String; };
	static var Response : { var ACTION : String; var DOCUMENTS : String; var PARENTS : String; var VIEW : String; };
	static var Type : { var ALBUM : String; var DOCUMENT : String; var LOCATION : String; var PHOTO : String; var URL : String; var VIDEO : String; };
}
