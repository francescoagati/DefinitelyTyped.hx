typedef IUserInfo = {
	var name : String;
	var id : String;
};
typedef ISharedWith = {
	var access : String;
};
typedef IObject = {
	var type : String;
};
typedef IObjectCollection<T> = {
	var data : Array<T>;
};
typedef IAlbum = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var parent_id : String;
	var upload_location : String;
	var is_embeddable : Bool;
	var count : Float;
	var link : String;
	var type : String;
	var shared_with : ISharedWith;
	var created_time : String;
	var updated_time : String;
	var client_updated_time : String;
};
typedef INewAlbum = {
	var name : String;
	@:optional
	var description : String;
};
typedef IAudio = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var parent_id : String;
	var size : Float;
	var upload_location : String;
	var comments_count : Float;
	var comments_enabled : Bool;
	var is_embeddable : Bool;
	var source : String;
	var link : String;
	var type : String;
	var title : String;
	var artist : String;
	var album : String;
	var album_artist : String;
	var genre : String;
	var duration : Float;
	var picture : String;
	var shared_with : ISharedWith;
	var created_time : String;
	var updated_time : String;
};
typedef INewAudio = {
	var name : String;
	@:optional
	var description : String;
	@:optional
	var title : String;
	@:optional
	var artist : String;
	@:optional
	var album : String;
	@:optional
	var album_artist : String;
	@:optional
	var genre : String;
};
typedef ICalendar = {
	var id : String;
	var name : String;
	var description : String;
	var created_time : String;
	var updated_time : String;
	var from : IUserInfo;
	var is_default : Bool;
	var subscription_location : String;
	var permissions : String;
};
typedef INewCalendar = {
	var name : String;
	@:optional
	var description : String;
};
typedef INewCalendarSubscription = {
	var name : String;
	var subscription_location : String;
};
typedef IComment = {
	var id : String;
	var from : IUserInfo;
	var message : String;
	var created_time : String;
};
typedef INewComment = {
	var message : String;
};
typedef IContact = {
	var id : String;
	var first_name : String;
	var last_name : String;
	var name : String;
	var is_friend : Bool;
	var is_favorite : Bool;
	var user_id : String;
	var email_hashes : Array<String>;
	var updated_time : String;
	var birth_day : Float;
	var birth_month : Float;
};
typedef INewContact = {
	@:optional
	var first_name : String;
	@:optional
	var last_name : String;
	@:optional
	var work : Array<{ var employer : { var name : String; }; }>;
	@:optional
	var emails : { @:optional
	var preferred : String; @:optional
	var personal : String; @:optional
	var business : String; @:optional
	var other : String; };
};
typedef IError = {
	var error : { var code : String; var message : String; };
};
typedef IEvent = {
	var id : String;
	var name : String;
	var created_time : String;
	var updated_time : String;
	var description : String;
	var calendar_id : String;
	var from : IUserInfo;
	var start_time : String;
	var end_time : String;
	var location : String;
	var is_all_day_event : Bool;
	var is_recurrent : Bool;
	var recurrence : String;
	var reminder_time : Float;
	var availability : String;
	var visibility : String;
};
typedef INewEvent = {
	var name : String;
	var description : String;
	var start_time : Dynamic;
	@:optional
	var end_time : Dynamic;
	@:optional
	var location : String;
	@:optional
	var is_all_day_event : Bool;
	@:optional
	var reminder_time : Float;
	@:optional
	var availability : String;
	@:optional
	var visibility : String;
};
typedef INewEventResponse = {
	var name : String;
	var description : String;
	var start_time : String;
	var end_time : String;
	var location : String;
	var is_all_day_event : Bool;
	var is_recurrent : Bool;
	var recurrence : String;
	var reminder_time : Float;
	var availability : String;
	var visibility : String;
	var updated_time : String;
};
typedef IFile = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var parent_id : String;
	var size : Float;
	var upload_location : String;
	var comments_count : Float;
	var comments_enabled : Bool;
	var is_embeddable : Bool;
	var source : String;
	var link : String;
	var type : String;
	var shared_with : ISharedWith;
	var created_time : String;
	var updated_time : String;
	var client_updated_time : String;
	var sort_by : String;
};
typedef INewFileResponse = {
	var id : String;
	var name : String;
	var source : String;
};
typedef IFileDownloadLink = {
	var location : String;
};
typedef IFolder = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var count : Float;
	var link : String;
	var parent_id : String;
	var upload_location : String;
	var is_embeddable : Bool;
	var type : String;
	var created_time : String;
	var updated_time : String;
	var client_updated_time : String;
	var shared_with : ISharedWith;
	var sort_by : String;
};
typedef INewFolder = {
	var name : String;
	@:optional
	var description : String;
	@:optional
	var sort_by : String;
};
typedef IFriend = {
	var id : String;
	var name : String;
};
typedef IPermissions = { };
typedef IImageInfo = {
	var height : Float;
	var width : Float;
	var source : String;
	var type : String;
};
typedef ILocation = {
	var latitude : Float;
	var longitude : Float;
	var altitude : Float;
};
typedef IPhoto = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var parent_id : String;
	var size : Float;
	var comments_count : Float;
	var comments_enabled : Bool;
	var tags_count : Float;
	var tags_enabled : Bool;
	var is_embeddable : Bool;
	var picture : String;
	var source : String;
	var upload_location : String;
	var images : Array<IImageInfo>;
	var link : String;
	var when_taken : String;
	var height : Float;
	var width : Float;
	var type : String;
	var location : ILocation;
	var camera_make : String;
	var camera_model : String;
	var focal_ratio : Float;
	var focal_length : Float;
	var exposure_numerator : Float;
	var exposure_denominator : Float;
	var shared_with : ISharedWith;
	var created_time : String;
	var updated_time : String;
};
typedef ISearch = {
	var data : Array<IObject>;
	@:optional
	var paging : { @:optional
	var next : String; @:optional
	var previous : String; };
};
typedef ITag = {
	var id : String;
	var user : IUserInfo;
	var x : Float;
	var y : Float;
	var created_time : String;
};
typedef IWorkInfo = {
	var employer : { var name : String; };
	var position : { var name : String; };
};
typedef IPostalAddress = {
	var street : String;
	var street_2 : String;
	var city : String;
	var state : String;
	var postal_code : String;
	var region : String;
};
typedef IUser = {
	var id : String;
	var name : String;
	var first_name : String;
	var last_name : String;
	var gender : String;
	var link : String;
	var birth_day : Float;
	var birth_month : Float;
	var birth_year : Float;
	var work : Array<IWorkInfo>;
	var emails : { var preferred : String; var account : String; var personal : String; var business : String; var other : String; };
	var addresses : { var personal : IPostalAddress; var business : IPostalAddress; };
	var phones : { var personal : String; var business : String; var mobile : String; };
	var locale : String;
	var updated_time : String;
};
typedef IVideo = {
	var id : String;
	var from : IUserInfo;
	var name : String;
	var description : String;
	var parent_id : String;
	var size : Float;
	var comments_count : Float;
	var comments_enabled : Bool;
	var tags_count : Float;
	var tags_enabled : Bool;
	var is_embeddable : Bool;
	var picture : String;
	var source : String;
	var upload_location : String;
	var link : String;
	var height : Float;
	var width : Float;
	var duration : Float;
	var bitrate : Float;
	var type : String;
	var shared_with : ISharedWith;
	var created_time : String;
	var updated_time : String;
};
typedef IAPIProperties = {
	var path : String;
	@:optional
	var method : String;
	@:optional
	var body : Dynamic;
};
typedef IBackgroundDownloadProperties = {
	var path : String;
	@:optional
	var file_output : Windows.Storage.StorageFile;
};
typedef IBackgroundUploadProperties = {
	var path : String;
	@:optional
	var file_name : String;
	@:optional
	var file_input : Dynamic;
	@:optional
	var stream_input : Windows.Storage.Streams.IInputStream;
	@:optional
	var overwrite : String;
};
typedef IDownloadProperties = {
	var path : String;
};
typedef IFileDialogProperties = {
	var mode : String;
	@:optional
	var select : String;
	@:optional
	var lightbox : String;
};
typedef IInitProperties = {
	@:optional
	var client_id : String;
	@:optional
	var redirect_uri : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var logging : Bool;
	@:optional
	var status : Bool;
	@:optional
	var response_type : String;
	@:optional
	var secure_cookie : String;
};
typedef ILoginProperties = {
	@:optional
	var redirect_uri : String;
	var scope : Dynamic;
	@:optional
	var state : String;
};
typedef IUIProperties = {
	var name : String;
	var element : String;
	@:optional
	var state : String;
};
typedef ISkyDrivePickerProperies = {
	>IUIProperties,
	var mode : String;
	@:optional
	var select : String;
	@:optional
	var theme : String;
	@:optional
	var lightbox : String;
	@:optional
	var onselected : haxe.Constraints.Function;
	@:optional
	var onerror : haxe.Constraints.Function;
};
typedef ISignInProperties = {
	>IUIProperties,
	@:optional
	var brand : String;
	@:optional
	var theme : String;
	@:optional
	var type : String;
	@:optional
	var sign_in_text : String;
	@:optional
	var sign_out_text : String;
	@:optional
	var onloggedin : haxe.Constraints.Function;
	@:optional
	var onloggedout : haxe.Constraints.Function;
	@:optional
	var onerror : haxe.Constraints.Function;
};
typedef IUploadProperties = {
	var path : String;
	var element : String;
	@:optional
	var overwrite : String;
};
typedef ISession = {
	var access_token : String;
	var authentication_token : String;
	@:optional
	var scope : Array<String>;
	@:optional
	var expires_in : Float;
	@:optional
	var expires : Float;
};
typedef ILoginStatus = {
	var status : String;
	var session : ISession;
};
typedef IEventAPI = {
	function subscribe(event:String, callback:haxe.Constraints.Function):Void;
	function unsubscribe(event:String, ?callback:haxe.Constraints.Function):Void;
};
typedef IFilePickerResult = {
	var data : { @:optional
	var files : Array<IFile>; @:optional
	var folders : Array<IFolder>; };
};
typedef IPromise<T> = {
	function then(onSuccess:T -> Void, ?onError:Dynamic -> Void, ?onProgress:Dynamic -> Void):IPromise<T>;
	function cancel():Void;
};
typedef IJSError = {
	var error : String;
	var error_description : String;
};
typedef API = {
	function api<T>(properties:IAPIProperties, ?callback:Dynamic -> Void):IPromise<T>;
	function backgroundDownload<T>(properties:IBackgroundDownloadProperties, ?callback:Dynamic -> Void):IPromise<T>;
	function backgroundUpload<T>(properties:IBackgroundUploadProperties, ?callback:Dynamic -> Void):IPromise<T>;
	function canLogout():Bool;
	function download(properties:IDownloadProperties, ?callback:Dynamic -> Void):IPromise<Void>;
	var Event : IEventAPI;
	function fileDialog(properties:IFileDialogProperties, ?callback:Dynamic -> Void):IPromise<IFilePickerResult>;
	function getLoginStatus(?callback:ILoginStatus -> Void, ?force:Bool):IPromise<ILoginStatus>;
	function getSession():ISession;
	function init(properties:IInitProperties):IPromise<ILoginStatus>;
	function login(properties:ILoginProperties, ?callback:Dynamic -> Void):IPromise<ILoginStatus>;
	function logout(?callback:ILoginStatus -> Void):IPromise<ILoginStatus>;
	function ui(properties:IUIProperties, ?callback:Void -> Void):Void;
	function upload<T>(properties:IUploadProperties, ?callback:Dynamic -> Void):IPromise<T>;
};
