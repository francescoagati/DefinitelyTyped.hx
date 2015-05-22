typedef GeolocationError = {
	var code : Float;
	var message : String;
};
typedef Acceleration = {
	var x : Float;
	var y : Float;
	var z : Float;
	var timestamp : Float;
};
typedef AccelerometerOptions = {
	@:optional
	var frequency : Float;
};
typedef Accelerometer = {
	function getCurrentAcceleration(accelerometerSuccess:Acceleration -> Void, accelerometerError:Void -> Void):Void;
	function watchAcceleration(accelerometerSuccess:Acceleration -> Void, accelerometerError:Void -> Void, ?accelerometerOptions:AccelerometerOptions):Void;
	function clearWatch(watchID:Float):Void;
};
typedef CameraPopoverOptions = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var arrowDir : Float;
};
typedef CameraOptions = {
	@:optional
	var quality : Float;
	@:optional
	var destinationType : Float;
	@:optional
	var sourceType : Float;
	@:optional
	var allowEdit : Bool;
	@:optional
	var encodingType : Float;
	@:optional
	var targetWidth : Float;
	@:optional
	var targetHeight : Float;
	@:optional
	var mediaType : Float;
	@:optional
	var correctOrientation : Bool;
	@:optional
	var saveToPhotoAlbum : Bool;
	@:optional
	var popoverOptions : CameraPopoverOptions;
};
typedef CameraPictureSourceTypeObject = {
	var CAMERA : Float;
	var PHOTOLIBRARY : Float;
	var SAVEDPHOTOALBUM : Float;
};
typedef CameraDestinationTypeObject = {
	var FILE_URI : Float;
	var DATA_URL : Float;
};
typedef CameraEncodingTypeObject = {
	var JPEG : Float;
	var PNG : Float;
};
typedef CameraMediaTypeObject = {
	var PICTURE : Float;
	var VIDEO : Float;
	var ALLMEDIA : Float;
};
typedef CameraPopoverArrowDirectionObject = {
	var ARROW_UP : Float;
	var ARROW_DOWN : Float;
	var ARROW_LEFT : Float;
	var ARROW_RIGHT : Float;
	var ARROW_ANY : Float;
};
typedef Camera = {
	var sourceType : Dynamic;
	var PictureSourceType : CameraPictureSourceTypeObject;
	var DestinationType : CameraDestinationTypeObject;
	var EncodingType : CameraEncodingTypeObject;
	var MediaType : CameraMediaTypeObject;
	var PopoverArrowDirection : CameraPopoverArrowDirectionObject;
	function getPicture(cameraSuccess:String -> Void, cameraError:String -> Void, ?cameraOptions:CameraOptions):Void;
	function cleanup(cameraSuccess:String -> Void, cameraError:String -> Void):Void;
};
typedef CaptureAudioOptions = {
	@:optional
	var limit : Float;
	@:optional
	var duration : Float;
	@:optional
	var mode : Float;
};
typedef CaptureImageOptions = {
	@:optional
	var limit : Float;
	@:optional
	var mode : Float;
};
typedef MediaFile = {
	var name : String;
	var fullPath : String;
	var type : String;
	var lastModifiedDate : Date;
	var size : Float;
	function getFormatData(successCallback:haxe.Constraints.Function, ?errorCallback:haxe.Constraints.Function):Void;
};
typedef CaptureError = {
	var code : Float;
	var message : String;
};
typedef Capture = {
	function captureAudio(captureSuccess:Array<MediaFile> -> Void, captureError:CaptureError -> Void, ?options:CaptureAudioOptions):Void;
	function captureImage(captureSuccess:Array<MediaFile> -> Void, captureError:CaptureError -> Void, ?options:CaptureImageOptions):Void;
	function captureVideo(captureSuccess:Array<MediaFile> -> Void, captureError:CaptureError -> Void, ?options:CaptureImageOptions):Void;
};
typedef Connection = {
	var UNKNOWN : Float;
	var ETHERNET : Float;
	var WIFI : Float;
	var CELL_2G : Float;
	var CELL_3G : Float;
	var CELL_4G : Float;
	var NONE : Float;
};
typedef CompassOptions = {
	@:optional
	var frequency : Float;
	@:optional
	var filter : Float;
};
typedef CompassHeading = {
	@:optional
	var magneticHeading : Float;
	@:optional
	var trueHeading : Float;
	@:optional
	var headingAccuracy : Float;
	@:optional
	var timestamp : Float;
};
typedef CompassError = {
	var code : Float;
};
typedef Compass = {
	function getCurrentHeading(compassSuccess:CompassHeading -> Void, compassError:CompassError -> Void, ?compassOptions:CompassOptions):Void;
	function watchHeading(compassSuccess:CompassHeading -> Void, compassError:CompassError -> Void, ?compassOptions:CompassOptions):Void;
	function clearWatch(watchID:Float):Void;
};
typedef Connection = {
	var type : Float;
};
typedef ContactAddress = {
	var pref : Bool;
	var type : String;
	var formatted : String;
	var streetAddress : String;
	var locality : String;
	var region : String;
	var postalCode : String;
	var country : String;
};
typedef ContactField = {
	var type : String;
	var value : String;
	var pref : Bool;
};
typedef Contact = {
	var id : String;
	var displayName : String;
	var name : ContactName;
	var nickname : String;
	var phoneNumbers : Array<ContactField>;
	var emails : Array<ContactField>;
	var addresses : Array<ContactAddress>;
	var ims : Array<ContactField>;
	var organizations : Array<ContactOrganization>;
	var birthday : Date;
	var note : String;
	var photos : Array<ContactField>;
	var categories : Array<ContactField>;
	var urls : Array<ContactField>;
	function save(?onSuccess:Contacts -> Void, ?onError:ContactError -> Void):Void;
	function remove(?onSuccess:Contacts -> Void, ?onError:ContactError -> Void):Void;
	function clone():Contact;
};
typedef ContactFindOptions = {
	@:optional
	var filter : String;
	@:optional
	var multiple : Bool;
};
typedef ContactName = {
	var formatted : String;
	var familyName : String;
	var givenName : String;
	var middleName : String;
	var honorificPrefix : String;
	var honorificSuffix : String;
};
typedef ContactOrganization = {
	var pref : Bool;
	var type : String;
	var name : String;
	var department : String;
	var title : String;
};
typedef ContactError = {
	var code : Float;
};
typedef Contacts = {
	function create(?properties:Dynamic):Contact;
	function find(contactFields:Array<String>, contactSuccess:Array<Contact> -> Void, contactError:ContactError -> Void, ?contactFindOptions:ContactFindOptions):Void;
};
typedef Device = {
	var available : Bool;
	var name : String;
	var cordova : String;
	var platform : String;
	var uuid : String;
	var version : String;
	var model : String;
	var capture : Capture;
};
typedef FileWriter = {
	var readyState : Dynamic;
	var fileName : String;
	var length : Float;
	var position : Float;
	var error : FileError;
	var onwritestart : haxe.Constraints.Function;
	var onprogress : haxe.Constraints.Function;
	var onwrite : haxe.Constraints.Function;
	var onabort : haxe.Constraints.Function;
	var onerror : haxe.Constraints.Function;
	var onwriteend : haxe.Constraints.Function;
	function abort():Void;
	function seek(arg:Float):Void;
	function truncate(arg:Float):Void;
	function write(arg:Dynamic):Void;
};
typedef FileSystem = {
	var name : String;
	var root : DirectoryEntry;
};
typedef FileSystemEntry = {
	var isFile : Bool;
	var isDirectory : Bool;
	var name : String;
	var fullPath : String;
	var filesystem : FileSystem;
	function getMetadata(?onSuccess:Metadata -> Void, ?onError:FileError -> Void):Void;
	function setMetadata(?onSuccess:Metadata -> Void, ?onError:FileError -> Void, ?options:Dynamic):Void;
	function toURL():String;
	function remove(?onSuccess:Void -> Void, ?onError:FileError -> Void):Void;
	function getParent(?onSuccess:DirectoryEntry -> Void, ?onError:FileError -> Void):Void;
};
typedef FileEntry = {
	>FileSystemEntry,
	function moveTo(parentEntry:DirectoryEntry, file:String, onSuccess:DirectoryEntry -> Void, onError:FileError -> Void):Void;
	function copyTo(parentEntry:DirectoryEntry, file:String, onSuccess:DirectoryEntry -> Void, onError:FileError -> Void):Void;
	function createWriter(?onSuccess:FileWriter -> Void, ?onError:FileError -> Void):Void;
	function file(?onSuccess:File -> Void, ?onError:FileError -> Void):Void;
};
typedef DirectoryEntry = {
	>FileSystemEntry,
	function createReader():DirectoryReader;
	function getDirectory(path:String, options:Flags, successCallback:DirectoryEntry -> Void, errorCallback:FileError -> Void):Void;
	function getFile(path:String, options:Flags, successCallback:FileEntry -> Void, errorCallback:FileError -> Void):Void;
	function removeRecursively(successCallback:Void -> Void, errorCallback:FileError -> Void):Void;
};
typedef DirectoryReader = {
	function readEntries(successCallback:FileSystemEntry -> Void, errorCallback:FileError -> Void):Void;
};
typedef FileTransfer = {
	var onprogress : haxe.Constraints.Function;
	function upload(filePath:String, server:String, successCallback:FileUploadResult -> Void, errorCallback:FileError -> Void, ?options:Dynamic):Void;
	function download(source:String, target:String, successCallback:FileEntry -> Void, errorCallback:FileError -> Void, ?options:Dynamic):Void;
	function abort():Void;
};
typedef FileUploadOptions = {
	@:optional
	var fileKey : String;
	@:optional
	var fileName : String;
	@:optional
	var mimeType : String;
	@:optional
	var params : Dynamic;
	@:optional
	var chunkedMode : Bool;
	@:optional
	var headers : Dynamic;
};
typedef FileUploadResult = {
	var bytesSent : Float;
	var responseCode : Float;
	var response : String;
};
typedef Flags = {
	var create : Bool;
	@:optional
	var exclusive : Bool;
};
typedef LocalFileSystem = {
	var PERSISTENT : Float;
	var TEMPORARY : Float;
};
typedef Metadata = {
	var modificationTime : Date;
};
typedef FileError = {
	var code : Float;
};
typedef FileTransferError = {
	var code : Float;
	var source : String;
	var target : String;
	var http_status : Float;
};
typedef GeolocationOptions = {
	@:optional
	var enableHighAccuracy : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var maximumAge : Float;
};
typedef GlobalizationError = {
	var code : Float;
	var message : String;
};
typedef GlobalizationDate = {
	var year : Float;
	var month : Float;
	var day : Float;
	var hour : Float;
	var minute : Float;
	var second : Float;
	var millisecond : Float;
};
typedef GlobalizationDateOptions = {
	@:optional
	var formatLength : String;
	@:optional
	var selector : String;
};
typedef GlobalizationDatePattern = {
	var pattern : String;
	var timezone : String;
	var utc_offset : Float;
	var dst_offset : Float;
};
typedef GlobalizationDateNameOptions = {
	@:optional
	var type : String;
	@:optional
	var item : String;
};
typedef GlobalizationNumberOptions = {
	@:optional
	var type : String;
};
typedef GlobalizationNumberPattern = {
	var pattern : String;
	var symbol : String;
	var fraction : Float;
	var rounding : Float;
	var positive : String;
	var negative : String;
	var decimal : String;
	var grouping : String;
};
typedef GlobalizationCurrencyPattern = {
	var pattern : String;
	var code : String;
	var fraction : Float;
	var rounding : Float;
	var decimal : String;
	var grouping : String;
};
typedef Globalization = {
	function getPreferredLanguage(successCallback:{ var value : String; } -> Void, errorCallback:GlobalizationError -> Void):Void;
	function getLocaleName(successCallback:{ var value : String; } -> Void, errorCallback:GlobalizationError -> Void):Void;
	function dateToString(date:Date, successCallback:{ var value : String; } -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationDateOptions):Void;
	function stringToDate(dateString:String, successCallback:GlobalizationDate -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationDateOptions):Void;
	function getDatePattern(successCallback:GlobalizationDatePattern -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationDateOptions):Void;
	function getDateNames(successCallback:{ var value : Array<String>; } -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationDateNameOptions):Void;
	function isDayLightSavingsTime(date:Date, successCallback:{ var dst : Bool; } -> Void, errorCallback:GlobalizationError -> Void):Void;
	function getFirstDayOfWeek(successCallback:{ var value : Float; } -> Void, errorCallback:GlobalizationError -> Void):Void;
	function numberToString(number:Float, successCallback:{ var value : String; } -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationNumberOptions):Void;
	function stringToNumber(string:String, successCallback:{ var value : Float; } -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationNumberOptions):Void;
	function getNumberPattern(successCallback:GlobalizationNumberPattern -> Void, errorCallback:GlobalizationError -> Void, ?options:GlobalizationNumberOptions):Void;
	function getCurrencyPattern(currencyCode:String, successCallback:GlobalizationCurrencyPattern -> Void, errorCallback:GlobalizationError -> Void):Void;
};
typedef Media = {
	function new(src:String, mediaSuccess:haxe.Constraints.Function, ?mediaError:MediaError -> Dynamic, ?mediaStatus:haxe.Constraints.Function):Media;
	function getCurrentPosition(mediaSuccess:haxe.Constraints.Function, ?mediaError:MediaError -> Dynamic):Void;
	function getDuration():Dynamic;
	function play():Void;
	function pause():Void;
	function release():Void;
	function seekTo(milliseconds:Float):Void;
	function startRecord():Void;
	function stopRecord():Void;
	function stop():Void;
};
typedef Notification = {
	function alert(message:String, alertCallback:haxe.Constraints.Function, ?title:String, ?buttonName:String):Void;
	@:overload(function(message:String, confirmCallback:haxe.Constraints.Function, ?title:String, ?buttonLabels:Array<String>):Void { })
	function confirm(message:String, confirmCallback:haxe.Constraints.Function, ?title:String, ?buttonLabels:String):Void;
	function beep(times:Float):Void;
	function vibrate(milliseconds:Float):Void;
};
typedef Splashscreen = {
	function show():Void;
	function hide():Void;
};
typedef Database = {
	function transaction(?populateDB:SQLTransaction -> Dynamic, ?errorCB:Dynamic -> Dynamic, ?successCB:Void -> Dynamic):Void;
	function changeVersion(var1:String, var2:String):Void;
};
typedef SQLResultSetRowList = {
	var length : Float;
	function item(index:Float):Dynamic;
};
typedef SQLError = {
	var code : Float;
	var message : String;
};
typedef SQLResultSet = {
	var insertId : Float;
	var rowsAffected : Float;
	var rows : SQLResultSetRowList;
};
typedef SQLTransaction = {
	function executeSql(sql:String):SQLResultSet;
};
typedef StatusBar = {
	var isVisible : Bool;
	function overlaysWebView(doOverlay:Bool):Void;
	function styleDefault():Void;
	function styleLightContent():Void;
	function styleBlackTranslucent():Void;
	function styleBlackOpaque():Void;
	function backgroundColorByName(colorname:String):Void;
	function backgroundColorByHexString(hexString:String):Void;
	function hide():Void;
	function show():Void;
};
typedef Keyboard = {
	var automaticScrollToTopOnHiding : Bool;
	var isVisible : Bool;
	var onshow : haxe.Constraints.Function;
	var onhide : haxe.Constraints.Function;
	var onshowing : haxe.Constraints.Function;
	var onhiding : haxe.Constraints.Function;
	function disableScrollingInShrinkView(disable:Bool):Void;
	function hideFormAccessoryBar(hide:Bool):Void;
	function shrinkView(shrink:Bool):Void;
};
typedef Navigator = {
	var accelerometer : Accelerometer;
	var camera : Camera;
	var capture : Capture;
	var compass : Compass;
	var connection : Connection;
	var contacts : Contacts;
	var device : Device;
	var globalization : Globalization;
	var notification : Notification;
	var splashscreen : Splashscreen;
};
typedef Window = {
	var requestFileSystem : Dynamic;
	function openDatabase(database_name:String, database_version:String, database_displayname:String, database_size:Float):Database;
};
extern class PhonegapTopLevel {
	static var Acceleration : { function new():Acceleration; };
	static var CameraPopoverOptions : { function new(x:Float, y:Float, width:Float, height:Float, arrowDir:Float):CameraPopoverOptions; };
	static var Connection : Connection;
	static var CompassError : { var COMPASS_INTERNAL_ERR : Float; var COMPASS_NOT_SUPPORTED : Float; };
	static var ContactField : { function new(type:String, calue:String, perf:Bool):ContactField; };
	static var ContactFindOptions : { function new():ContactFindOptions; };
	static var ContactName : { function new():ContactName; };
	static var ContactError : { var UNKNOWN_ERROR : Float; var INVALID_ARGUMENT_ERROR : Float; var TIMEOUT_ERROR : Float; var PENDING_OPERATION_ERROR : Float; var IO_ERROR : Float; var NOT_SUPPORTED_ERROR : Float; var PERMISSION_DENIED_ERROR : Float; };
	static var DirectoryEntry : { function new(name:String, root:DirectoryEntry):DirectoryEntry; };
	static var FileTransfer : { function new():FileTransfer; };
	static var FileUploadOptions : { function new():FileUploadOptions; };
	static var LocalFileSystem : LocalFileSystem;
	static var FileError : { var NOT_FOUND_ERR : Float; var SECURITY_ERR : Float; var ABORT_ERR : Float; var NOT_READABLE_ERR : Float; var ENCODING_ERR : Float; var NO_MODIFICATION_ALLOWED_ERR : Float; var INVALID_STATE_ERR : Float; var SYNTAX_ERR : Float; var INVALID_MODIFICATION_ERR : Float; var QUOTA_EXCEEDED_ERR : Float; var TYPE_MISMATCH_ERR : Float; var PATH_EXISTS_ERR : Float; };
	static var FileTransferError : { var FILE_NOT_FOUND_ERR : Float; var INVALID_URL_ERR : Float; var CONNECTION_ERR : Float; var ABORT_ERR : Float; };
	static var GlobalizationError : { var UNKNOWN_ERROR : Float; var FORMATTING_ERROR : Float; var PARSING_ERROR : Float; var PATTERN_ERROR : Float; };
	static var Media : { function new(src:String, onSuccess:Dynamic -> Dynamic, onError:Dynamic -> Dynamic):Media; };
	static var StatusBar : StatusBar;
	static var Keyboard : Keyboard;
	static var device : Device;
	static var phoneGapNavigator : Navigator;
}
