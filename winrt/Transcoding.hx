@:enum abstract TranscodeFailureReason(Int) {
	var none = 0;
	var unknown = 1;
	var invalidProfile = 2;
	var codecNotFound = 3;
}
typedef IMediaTranscoder = {
	var alwaysReencode : Bool;
	var hardwareAccelerationEnabled : Bool;
	var trimStartTime : Float;
	var trimStopTime : Float;
	@:overload(function(activatableClassId:String, effectRequired:Bool, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function addAudioEffect(activatableClassId:String):Void;
	@:overload(function(activatableClassId:String, effectRequired:Bool, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function addVideoEffect(activatableClassId:String):Void;
	function clearEffects():Void;
	function prepareFileTranscodeAsync(source:Windows.Storage.IStorageFile, destination:Windows.Storage.IStorageFile, profile:Windows.Media.MediaProperties.MediaEncodingProfile):Windows.Foundation.IAsyncOperation<Windows.Media.Transcoding.PrepareTranscodeResult>;
	function prepareStreamTranscodeAsync(source:Windows.Storage.Streams.IRandomAccessStream, destination:Windows.Storage.Streams.IRandomAccessStream, profile:Windows.Media.MediaProperties.MediaEncodingProfile):Windows.Foundation.IAsyncOperation<Windows.Media.Transcoding.PrepareTranscodeResult>;
};
extern class PrepareTranscodeResult {
	var canTranscode : Bool;
	var failureReason : Windows.Media.Transcoding.TranscodeFailureReason;
	function transcodeAsync():Windows.Foundation.IAsyncActionWithProgress<Float>;
}
typedef IPrepareTranscodeResult = {
	var canTranscode : Bool;
	var failureReason : Windows.Media.Transcoding.TranscodeFailureReason;
	function transcodeAsync():Windows.Foundation.IAsyncActionWithProgress<Float>;
};
extern class MediaTranscoder {
	var alwaysReencode : Bool;
	var hardwareAccelerationEnabled : Bool;
	var trimStartTime : Float;
	var trimStopTime : Float;
	@:overload(function(activatableClassId:String, effectRequired:Bool, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function addAudioEffect(activatableClassId:String):Void;
	@:overload(function(activatableClassId:String, effectRequired:Bool, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function addVideoEffect(activatableClassId:String):Void;
	function clearEffects():Void;
	function prepareFileTranscodeAsync(source:Windows.Storage.IStorageFile, destination:Windows.Storage.IStorageFile, profile:Windows.Media.MediaProperties.MediaEncodingProfile):Windows.Foundation.IAsyncOperation<Windows.Media.Transcoding.PrepareTranscodeResult>;
	function prepareStreamTranscodeAsync(source:Windows.Storage.Streams.IRandomAccessStream, destination:Windows.Storage.Streams.IRandomAccessStream, profile:Windows.Media.MediaProperties.MediaEncodingProfile):Windows.Foundation.IAsyncOperation<Windows.Media.Transcoding.PrepareTranscodeResult>;
}
