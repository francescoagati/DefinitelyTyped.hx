@:enum abstract CameraCaptureUIMode(Int) {
	var photoOrVideo = 0;
	var photo = 1;
	var video = 2;
}
@:enum abstract CameraCaptureUIPhotoFormat(Int) {
	var jpeg = 0;
	var png = 1;
	var jpegXR = 2;
}
@:enum abstract CameraCaptureUIVideoFormat(Int) {
	var mp4 = 0;
	var wmv = 1;
}
@:enum abstract CameraCaptureUIMaxVideoResolution(Int) {
	var highestAvailable = 0;
	var lowDefinition = 1;
	var standardDefinition = 2;
	var highDefinition = 3;
}
@:enum abstract CameraCaptureUIMaxPhotoResolution(Int) {
	var highestAvailable = 0;
	var verySmallQvga = 1;
	var smallVga = 2;
	var mediumXga = 3;
	var large3M = 4;
	var veryLarge5M = 5;
}
typedef ICameraCaptureUIPhotoCaptureSettings = {
	var allowCropping : Bool;
	var croppedAspectRatio : Windows.Foundation.Size;
	var croppedSizeInPixels : Windows.Foundation.Size;
	var format : Windows.Media.Capture.CameraCaptureUIPhotoFormat;
	var maxResolution : Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution;
};
extern class CameraCaptureUIPhotoCaptureSettings {
	var allowCropping : Bool;
	var croppedAspectRatio : Windows.Foundation.Size;
	var croppedSizeInPixels : Windows.Foundation.Size;
	var format : Windows.Media.Capture.CameraCaptureUIPhotoFormat;
	var maxResolution : Windows.Media.Capture.CameraCaptureUIMaxPhotoResolution;
}
typedef ICameraCaptureUIVideoCaptureSettings = {
	var allowTrimming : Bool;
	var format : Windows.Media.Capture.CameraCaptureUIVideoFormat;
	var maxDurationInSeconds : Float;
	var maxResolution : Windows.Media.Capture.CameraCaptureUIMaxVideoResolution;
};
extern class CameraCaptureUIVideoCaptureSettings {
	var allowTrimming : Bool;
	var format : Windows.Media.Capture.CameraCaptureUIVideoFormat;
	var maxDurationInSeconds : Float;
	var maxResolution : Windows.Media.Capture.CameraCaptureUIMaxVideoResolution;
}
typedef ICameraCaptureUI = {
	var photoSettings : Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings;
	var videoSettings : Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings;
	function captureFileAsync(mode:Windows.Media.Capture.CameraCaptureUIMode):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
};
extern class CameraCaptureUI {
	var photoSettings : Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings;
	var videoSettings : Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings;
	function captureFileAsync(mode:Windows.Media.Capture.CameraCaptureUIMode):Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
}
typedef ICameraOptionsUIStatics = {
	function show(mediaCapture:Windows.Media.Capture.MediaCapture):Void;
};
extern class CameraOptionsUI {
	static function show(mediaCapture:Windows.Media.Capture.MediaCapture):Void;
}
@:enum abstract MediaStreamType(Int) {
	var videoPreview = 0;
	var videoRecord = 1;
	var audio = 2;
	var photo = 3;
}
@:enum abstract StreamingCaptureMode(Int) {
	var audioAndVideo = 0;
	var audio = 1;
	var video = 2;
}
@:enum abstract VideoRotation(Int) {
	var none = 0;
	var clockwise90Degrees = 1;
	var clockwise180Degrees = 2;
	var clockwise270Degrees = 3;
}
@:enum abstract PhotoCaptureSource(Int) {
	var auto = 0;
	var videoPreview = 1;
	var photo = 2;
}
@:enum abstract VideoDeviceCharacteristic(Int) {
	var allStreamsIndependent = 0;
	var previewRecordStreamsIdentical = 1;
	var previewPhotoStreamsIdentical = 2;
	var recordPhotoStreamsIdentical = 3;
	var allStreamsIdentical = 4;
}
@:enum abstract PowerlineFrequency(Int) {
	var disabled = 0;
	var fiftyHertz = 1;
	var sixtyHertz = 2;
}
typedef IMediaCaptureFailedEventArgs = {
	var code : Float;
	var message : String;
};
extern class MediaCaptureFailedEventArgs {
	var code : Float;
	var message : String;
}
typedef MediaCaptureFailedEventHandler = { };
extern class MediaCapture {
	var audioDeviceController : Windows.Media.Devices.AudioDeviceController;
	var mediaCaptureSettings : Windows.Media.Capture.MediaCaptureSettings;
	var videoDeviceController : Windows.Media.Devices.VideoDeviceController;
	@:overload(function(mediaCaptureInitializationSettings:Windows.Media.Capture.MediaCaptureInitializationSettings):Windows.Foundation.IAsyncAction { })
	function initializeAsync():Windows.Foundation.IAsyncAction;
	function startRecordToStorageFileAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	function startRecordToStreamAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
	@:overload(function(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customSinkActivationId:String, customSinkSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction { })
	function startRecordToCustomSinkAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customMediaSink:Windows.Media.IMediaExtension):Windows.Foundation.IAsyncAction;
	function stopRecordAsync():Windows.Foundation.IAsyncAction;
	function capturePhotoToStorageFileAsync(type:Windows.Media.MediaProperties.ImageEncodingProperties, file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	function capturePhotoToStreamAsync(type:Windows.Media.MediaProperties.ImageEncodingProperties, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
	function addEffectAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType, effectActivationID:String, effectSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction;
	function clearEffectsAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Foundation.IAsyncAction;
	function setEncoderProperty(mediaStreamType:Windows.Media.Capture.MediaStreamType, propertyId:String, propertyValue:Dynamic):Void;
	function getEncoderProperty(mediaStreamType:Windows.Media.Capture.MediaStreamType, propertyId:String):Dynamic;
	var onfailed : Dynamic;
	var onrecordlimitationexceeded : Dynamic;
	function setPreviewMirroring(value:Bool):Void;
	function getPreviewMirroring():Bool;
	function setPreviewRotation(value:Windows.Media.Capture.VideoRotation):Void;
	function getPreviewRotation():Windows.Media.Capture.VideoRotation;
	function setRecordRotation(value:Windows.Media.Capture.VideoRotation):Void;
	function getRecordRotation():Windows.Media.Capture.VideoRotation;
	function startPreviewAsync():Windows.Foundation.IAsyncAction;
	@:overload(function(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customSinkActivationId:String, customSinkSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction { })
	function startPreviewToCustomSinkAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customMediaSink:Windows.Media.IMediaExtension):Windows.Foundation.IAsyncAction;
	function stopPreviewAsync():Windows.Foundation.IAsyncAction;
}
typedef RecordLimitationExceededEventHandler = { };
typedef IMediaCaptureInitializationSettings = {
	var audioDeviceId : String;
	var photoCaptureSource : Windows.Media.Capture.PhotoCaptureSource;
	var streamingCaptureMode : Windows.Media.Capture.StreamingCaptureMode;
	var videoDeviceId : String;
};
extern class MediaCaptureInitializationSettings {
	var audioDeviceId : String;
	var photoCaptureSource : Windows.Media.Capture.PhotoCaptureSource;
	var streamingCaptureMode : Windows.Media.Capture.StreamingCaptureMode;
	var videoDeviceId : String;
}
typedef IMediaCapture = {
	var audioDeviceController : Windows.Media.Devices.AudioDeviceController;
	var mediaCaptureSettings : Windows.Media.Capture.MediaCaptureSettings;
	var videoDeviceController : Windows.Media.Devices.VideoDeviceController;
	@:overload(function(mediaCaptureInitializationSettings:Windows.Media.Capture.MediaCaptureInitializationSettings):Windows.Foundation.IAsyncAction { })
	function initializeAsync():Windows.Foundation.IAsyncAction;
	function startRecordToStorageFileAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	function startRecordToStreamAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
	@:overload(function(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customSinkActivationId:String, customSinkSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction { })
	function startRecordToCustomSinkAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customMediaSink:Windows.Media.IMediaExtension):Windows.Foundation.IAsyncAction;
	function stopRecordAsync():Windows.Foundation.IAsyncAction;
	function capturePhotoToStorageFileAsync(type:Windows.Media.MediaProperties.ImageEncodingProperties, file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	function capturePhotoToStreamAsync(type:Windows.Media.MediaProperties.ImageEncodingProperties, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
	function addEffectAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType, effectActivationID:String, effectSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction;
	function clearEffectsAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Foundation.IAsyncAction;
	function setEncoderProperty(mediaStreamType:Windows.Media.Capture.MediaStreamType, propertyId:String, propertyValue:Dynamic):Void;
	function getEncoderProperty(mediaStreamType:Windows.Media.Capture.MediaStreamType, propertyId:String):Dynamic;
	var onfailed : Dynamic;
	var onrecordlimitationexceeded : Dynamic;
	function setPreviewMirroring(value:Bool):Void;
	function getPreviewMirroring():Bool;
	function setPreviewRotation(value:Windows.Media.Capture.VideoRotation):Void;
	function getPreviewRotation():Windows.Media.Capture.VideoRotation;
	function setRecordRotation(value:Windows.Media.Capture.VideoRotation):Void;
	function getRecordRotation():Windows.Media.Capture.VideoRotation;
};
extern class MediaCaptureSettings {
	var audioDeviceId : String;
	var photoCaptureSource : Windows.Media.Capture.PhotoCaptureSource;
	var streamingCaptureMode : Windows.Media.Capture.StreamingCaptureMode;
	var videoDeviceCharacteristic : Windows.Media.Capture.VideoDeviceCharacteristic;
	var videoDeviceId : String;
}
typedef IMediaCaptureVideoPreview = {
	function startPreviewAsync():Windows.Foundation.IAsyncAction;
	@:overload(function(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customSinkActivationId:String, customSinkSettings:Windows.Foundation.Collections.IPropertySet):Windows.Foundation.IAsyncAction { })
	function startPreviewToCustomSinkAsync(encodingProfile:Windows.Media.MediaProperties.MediaEncodingProfile, customMediaSink:Windows.Media.IMediaExtension):Windows.Foundation.IAsyncAction;
	function stopPreviewAsync():Windows.Foundation.IAsyncAction;
};
typedef IMediaCaptureSettings = {
	var audioDeviceId : String;
	var photoCaptureSource : Windows.Media.Capture.PhotoCaptureSource;
	var streamingCaptureMode : Windows.Media.Capture.StreamingCaptureMode;
	var videoDeviceCharacteristic : Windows.Media.Capture.VideoDeviceCharacteristic;
	var videoDeviceId : String;
};
