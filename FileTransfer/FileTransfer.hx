typedef FileTransfer = {
	var onprogress : ProgressEvent -> Void;
	function upload(fileURL:String, server:String, successCallback:FileUploadResult -> Void, errorCallback:FileTransferError -> Void, ?options:FileUploadOptions, ?trustAllHosts:Bool):Void;
	function download(source:String, target:String, successCallback:FileEntry -> Void, errorCallback:FileTransferError -> Void, ?options:FileDownloadOptions, ?trustAllHosts:Bool):Void;
	function abort():Void;
};
typedef FileUploadResult = {
	var bytesSent : Float;
	var responseCode : Float;
	var response : String;
	var headers : Dynamic;
};
typedef FileUploadOptions = {
	@:optional
	var fileKey : String;
	@:optional
	var fileName : String;
	@:optional
	var httpMethod : String;
	@:optional
	var mimeType : String;
	@:optional
	var params : Dynamic;
	@:optional
	var chunkedMode : Bool;
	@:optional
	var headers : Array<Dynamic>;
};
typedef FileDownloadOptions = {
	@:optional
	var headers : Array<Dynamic>;
};
typedef FileTransferError = {
	var code : Float;
	var source : String;
	var target : String;
	var http_status : Float;
	var body : String;
	var exception : Dynamic;
};
extern class FileTransferTopLevel {
	static var FileTransfer : { function new():FileTransfer; };
	static var FileTransferError : { function new(?code:Float, ?source:String, ?target:String, ?status:Float, ?body:Dynamic, ?exception:Dynamic):FileTransferError; var FILE_NOT_FOUND_ERR : Float; var INVALID_URL_ERR : Float; var CONNECTION_ERR : Float; var ABORT_ERR : Float; var NOT_MODIFIED_ERR : Float; };
}
