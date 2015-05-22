typedef DropzoneFile = {
	>File,
	var previewElement : HTMLElement;
	var previewTemplate : HTMLElement;
	var previewsContainer : HTMLElement;
	var status : String;
	var accepted : Bool;
};
typedef DropzoneOptions = {
	@:optional
	var url : String;
	@:optional
	var method : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var parallelUploads : Float;
	@:optional
	var maxFilesize : Float;
	@:optional
	var paramName : String;
	@:optional
	var uploadMultiple : Bool;
	@:optional
	var headers : Dynamic;
	@:optional
	var addRemoveLinks : Bool;
	@:optional
	var previewsContainer : String;
	@:optional
	var clickable : Dynamic;
	@:optional
	var createImageThumbnails : Bool;
	@:optional
	var maxThumbnailFilesize : Float;
	@:optional
	var thumbnailWidth : Float;
	@:optional
	var thumbnailHeight : Float;
	@:optional
	var maxFiles : Float;
	@:optional
	var resize : ?Dynamic -> Dynamic;
	@:optional
	var init : Void -> Void;
	@:optional
	var acceptedFiles : String;
	@:optional
	var accept : DropzoneFile -> haxe.extern.Rest<Dynamic> -> Void -> Void;
	@:optional
	var autoProcessQueue : Bool;
	@:optional
	var previewTemplate : String;
	@:optional
	var forceFallback : Bool;
	@:optional
	var fallback : Void -> Void;
	@:optional
	var dictDefaultMessage : String;
	@:optional
	var dictFallbackMessage : String;
	@:optional
	var dictFallbackText : String;
	@:optional
	var dictInvalidFileType : String;
	@:optional
	var dictFileTooBig : String;
	@:optional
	var dictResponseError : String;
	@:optional
	var dictCancelUpload : String;
	@:optional
	var dictCancelUploadConfirmation : String;
	@:optional
	var dictRemoveFile : String;
	@:optional
	var dictRemoveFileConfirmation : String;
	@:optional
	var dictMaxFilesExceeded : String;
};
extern class Dropzone {
	@:overload(function(container:HTMLElement, ?options:DropzoneOptions):Void { })
	function new(container:String, ?options:DropzoneOptions):Void;
	static var autoDiscover : Bool;
	static var options : Dynamic;
	static var confirm : String -> Void -> Void -> ?Void -> Void -> Void;
	var files : Array<DropzoneFile>;
	function on(eventName:Dynamic, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	function off(eventName:Dynamic):Void;
	function removeFile(file:DropzoneFile):Void;
	function removeAllFiles(?cancelIfNecessary:Bool):Void;
	function processQueue():Void;
	function getAcceptedFiles():Array<DropzoneFile>;
	function getRejectedFiles():Array<DropzoneFile>;
	function getQueuedFiles():Array<DropzoneFile>;
	function getUploadingFiles():Array<DropzoneFile>;
	@:overload(function(eventName:Thumbnail, file:DropzoneFile, path:String):Dynamic { })
	@:overload(function(eventName:Addedfile, file:DropzoneFile):Dynamic { })
	@:overload(function(eventName:Removedfile, file:DropzoneFile):Dynamic { })
	@:overload(function(eventName:Processing, file:DropzoneFile):Dynamic { })
	@:overload(function(eventName:Canceled, file:DropzoneFile):Dynamic { })
	@:overload(function(eventName:Complete, file:DropzoneFile):Dynamic { })
	@:overload(function(eventName:String, e:Event):Dynamic { })
	@:overload(function(eventName:Drop, e:Event):Dynamic { })
	@:overload(function(eventName:Dragstart, e:Event):Dynamic { })
	@:overload(function(eventName:Dragend, e:Event):Dynamic { })
	@:overload(function(eventName:Dragenter, e:Event):Dynamic { })
	@:overload(function(eventName:Dragover, e:Event):Dynamic { })
	@:overload(function(eventName:Dragleave, e:Event):Dynamic { })
	function emit(eventName:String, file:DropzoneFile, ?str:String):Dynamic;
}
typedef JQuery = {
	function dropzone(options:DropzoneOptions):Dropzone;
};
