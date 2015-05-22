@:enum abstract SoundLevel(Int) {
	var muted = 0;
	var low = 1;
	var full = 2;
}
typedef IMediaControl = {
	var albumArt : Windows.Foundation.Uri;
	var artistName : String;
	var isPlaying : Bool;
	var soundLevel : Windows.Media.SoundLevel;
	var trackName : String;
	var onsoundlevelchanged : Dynamic;
	var onplaypressed : Dynamic;
	var onpausepressed : Dynamic;
	var onstoppressed : Dynamic;
	var onplaypausetogglepressed : Dynamic;
	var onrecordpressed : Dynamic;
	var onnexttrackpressed : Dynamic;
	var onprevioustrackpressed : Dynamic;
	var onfastforwardpressed : Dynamic;
	var onrewindpressed : Dynamic;
	var onchanneluppressed : Dynamic;
	var onchanneldownpressed : Dynamic;
};
extern class MediaControl {
	static var albumArt : Windows.Foundation.Uri;
	static var artistName : String;
	static var isPlaying : Bool;
	static var soundLevel : Windows.Media.SoundLevel;
	static var trackName : String;
	static var onsoundlevelchanged : Dynamic;
	static var onplaypressed : Dynamic;
	static var onpausepressed : Dynamic;
	static var onstoppressed : Dynamic;
	static var onplaypausetogglepressed : Dynamic;
	static var onrecordpressed : Dynamic;
	static var onnexttrackpressed : Dynamic;
	static var onprevioustrackpressed : Dynamic;
	static var onfastforwardpressed : Dynamic;
	static var onrewindpressed : Dynamic;
	static var onchanneluppressed : Dynamic;
	static var onchanneldownpressed : Dynamic;
}
typedef IMediaExtension = {
	function setProperties(configuration:Windows.Foundation.Collections.IPropertySet):Void;
};
typedef IMediaExtensionManager = {
	@:overload(function(activatableClassId:String, scheme:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerSchemeHandler(activatableClassId:String, scheme:String):Void;
	@:overload(function(activatableClassId:String, fileExtension:String, mimeType:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerByteStreamHandler(activatableClassId:String, fileExtension:String, mimeType:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerAudioDecoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerAudioEncoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerVideoDecoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerVideoEncoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
};
extern class MediaExtensionManager {
	@:overload(function(activatableClassId:String, scheme:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerSchemeHandler(activatableClassId:String, scheme:String):Void;
	@:overload(function(activatableClassId:String, fileExtension:String, mimeType:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerByteStreamHandler(activatableClassId:String, fileExtension:String, mimeType:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerAudioDecoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerAudioEncoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerVideoDecoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
	@:overload(function(activatableClassId:String, inputSubtype:String, outputSubtype:String, configuration:Windows.Foundation.Collections.IPropertySet):Void { })
	function registerVideoEncoder(activatableClassId:String, inputSubtype:String, outputSubtype:String):Void;
}
typedef IVideoEffectsStatics = {
	var videoStabilization : String;
};
extern class VideoEffects {
	static var videoStabilization : String;
}
