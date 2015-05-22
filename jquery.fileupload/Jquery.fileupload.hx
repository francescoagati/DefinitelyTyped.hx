typedef JQueryFileInputOptions = {
	@:optional
	var dropZone : HTMLElement;
	@:optional
	var pasteZone : HTMLElement;
	@:optional
	var fileInput : HTMLElement;
	@:optional
	var replaceFileInput : Bool;
	@:optional
	var paramName : Dynamic;
	@:optional
	var singleFileUploads : Bool;
	@:optional
	var limitMultiFileUploads : Float;
	@:optional
	var limitMultiFileUploadSize : Float;
	@:optional
	var limitMultiFileUploadSizeOverhead : Float;
	@:optional
	var sequentialUploads : Bool;
	@:optional
	var limitConcurrentUploads : Float;
	@:optional
	var forceIframeTransport : Bool;
	@:optional
	var redirect : String;
	@:optional
	var redirectParamName : String;
	@:optional
	var postMessage : String;
	@:optional
	var multipart : Bool;
	@:optional
	var maxChunkSize : Float;
	@:optional
	var uploadedBytes : Float;
	@:optional
	var recalculateProgress : Bool;
	@:optional
	var progressInterval : Float;
	@:optional
	var bitrateInterval : Float;
	@:optional
	var autoUpload : Bool;
	@:optional
	var messages : Dynamic;
	@:optional
	var i18n : Dynamic;
	@:optional
	var formData : Dynamic;
	@:optional
	var add : Dynamic;
	@:optional
	var processData : Bool;
	@:optional
	var contentType : String;
	@:optional
	var cache : Bool;
};
typedef JQueryFileUpload = {
	var contentType : String;
};
typedef JQuery = {
	function fileupload(settings:JQueryFileInputOptions):JQueryFileUpload;
};
