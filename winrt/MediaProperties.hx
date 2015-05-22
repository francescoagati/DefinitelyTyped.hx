typedef IMediaRatio = {
	var denominator : Float;
	var numerator : Float;
};
extern class MediaRatio {
	var denominator : Float;
	var numerator : Float;
}
extern class MediaPropertySet {
	var size : Float;
	function lookup(key:String):Dynamic;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Dynamic>;
	function insert(key:String, value:Dynamic):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Dynamic>>;
}
typedef IMediaEncodingProperties = {
	var properties : Windows.Media.MediaProperties.MediaPropertySet;
	var subtype : String;
	var type : String;
};
typedef IAudioEncodingProperties = {
	>Windows.Media.MediaProperties.IMediaEncodingProperties,
	var bitrate : Float;
	var bitsPerSample : Float;
	var channelCount : Float;
	var sampleRate : Float;
};
extern class AudioEncodingProperties {
	var bitrate : Float;
	var bitsPerSample : Float;
	var channelCount : Float;
	var sampleRate : Float;
	var properties : Windows.Media.MediaProperties.MediaPropertySet;
	var subtype : String;
	var type : String;
}
typedef IVideoEncodingProperties = {
	>Windows.Media.MediaProperties.IMediaEncodingProperties,
	var bitrate : Float;
	var frameRate : Windows.Media.MediaProperties.MediaRatio;
	var height : Float;
	var pixelAspectRatio : Windows.Media.MediaProperties.MediaRatio;
	var width : Float;
};
extern class VideoEncodingProperties {
	var bitrate : Float;
	var frameRate : Windows.Media.MediaProperties.MediaRatio;
	var height : Float;
	var pixelAspectRatio : Windows.Media.MediaProperties.MediaRatio;
	var width : Float;
	var properties : Windows.Media.MediaProperties.MediaPropertySet;
	var subtype : String;
	var type : String;
}
typedef IImageEncodingProperties = {
	>Windows.Media.MediaProperties.IMediaEncodingProperties,
	var height : Float;
	var width : Float;
};
typedef IImageEncodingPropertiesStatics = {
	function createJpeg():Windows.Media.MediaProperties.ImageEncodingProperties;
	function createPng():Windows.Media.MediaProperties.ImageEncodingProperties;
	function createJpegXR():Windows.Media.MediaProperties.ImageEncodingProperties;
};
extern class ImageEncodingProperties {
	var height : Float;
	var width : Float;
	var properties : Windows.Media.MediaProperties.MediaPropertySet;
	var subtype : String;
	var type : String;
	static function createJpeg():Windows.Media.MediaProperties.ImageEncodingProperties;
	static function createPng():Windows.Media.MediaProperties.ImageEncodingProperties;
	static function createJpegXR():Windows.Media.MediaProperties.ImageEncodingProperties;
}
typedef IContainerEncodingProperties = {
	>Windows.Media.MediaProperties.IMediaEncodingProperties,
};
extern class ContainerEncodingProperties {
	var properties : Windows.Media.MediaProperties.MediaPropertySet;
	var subtype : String;
	var type : String;
}
@:enum abstract AudioEncodingQuality(Int) {
	var auto = 0;
	var high = 1;
	var medium = 2;
	var low = 3;
}
@:enum abstract VideoEncodingQuality(Int) {
	var auto = 0;
	var hD1080p = 1;
	var hD720p = 2;
	var wvga = 3;
	var ntsc = 4;
	var pal = 5;
	var vga = 6;
	var qvga = 7;
}
typedef IMediaEncodingProfileStatics = {
	function createM4a(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	function createMp3(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	function createWma(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	function createMp4(quality:Windows.Media.MediaProperties.VideoEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	function createWmv(quality:Windows.Media.MediaProperties.VideoEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	function createFromFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Media.MediaProperties.MediaEncodingProfile>;
	function createFromStreamAsync(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Media.MediaProperties.MediaEncodingProfile>;
};
extern class MediaEncodingProfile {
	var audio : Windows.Media.MediaProperties.AudioEncodingProperties;
	var container : Windows.Media.MediaProperties.ContainerEncodingProperties;
	var video : Windows.Media.MediaProperties.VideoEncodingProperties;
	static function createM4a(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	static function createMp3(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	static function createWma(quality:Windows.Media.MediaProperties.AudioEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	static function createMp4(quality:Windows.Media.MediaProperties.VideoEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	static function createWmv(quality:Windows.Media.MediaProperties.VideoEncodingQuality):Windows.Media.MediaProperties.MediaEncodingProfile;
	static function createFromFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Media.MediaProperties.MediaEncodingProfile>;
	static function createFromStreamAsync(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Media.MediaProperties.MediaEncodingProfile>;
}
typedef IMediaEncodingProfile = {
	var audio : Windows.Media.MediaProperties.AudioEncodingProperties;
	var container : Windows.Media.MediaProperties.ContainerEncodingProperties;
	var video : Windows.Media.MediaProperties.VideoEncodingProperties;
};
