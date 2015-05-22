@:enum abstract BitmapPixelFormat(Int) {
	var unknown = 0;
	var rgba16 = 1;
	var rgba8 = 2;
	var bgra8 = 3;
}
@:enum abstract BitmapAlphaMode(Int) {
	var premultiplied = 0;
	var straight = 1;
	var ignore = 2;
}
@:enum abstract BitmapInterpolationMode(Int) {
	var nearestNeighbor = 0;
	var linear = 1;
	var cubic = 2;
	var fant = 3;
}
@:enum abstract BitmapFlip(Int) {
	var none = 0;
	var horizontal = 1;
	var vertical = 2;
}
@:enum abstract BitmapRotation(Int) {
	var none = 0;
	var clockwise90Degrees = 1;
	var clockwise180Degrees = 2;
	var clockwise270Degrees = 3;
}
typedef BitmapBounds = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
@:enum abstract ColorManagementMode(Int) {
	var doNotColorManage = 0;
	var colorManageToSRgb = 1;
}
@:enum abstract ExifOrientationMode(Int) {
	var ignoreExifOrientation = 0;
	var respectExifOrientation = 1;
}
@:enum abstract PngFilterMode(Int) {
	var automatic = 0;
	var none = 1;
	var sub = 2;
	var up = 3;
	var average = 4;
	var paeth = 5;
	var adaptive = 6;
}
@:enum abstract TiffCompressionMode(Int) {
	var automatic = 0;
	var none = 1;
	var ccitt3 = 2;
	var ccitt4 = 3;
	var lzw = 4;
	var rle = 5;
	var zip = 6;
	var lzwhDifferencing = 7;
}
@:enum abstract JpegSubsamplingMode(Int) {
	var default = 0;
	var y4Cb2Cr0 = 1;
	var y4Cb2Cr2 = 2;
	var y4Cb4Cr4 = 3;
}
typedef IBitmapTransform = {
	var bounds : Windows.Graphics.Imaging.BitmapBounds;
	var flip : Windows.Graphics.Imaging.BitmapFlip;
	var interpolationMode : Windows.Graphics.Imaging.BitmapInterpolationMode;
	var rotation : Windows.Graphics.Imaging.BitmapRotation;
	var scaledHeight : Float;
	var scaledWidth : Float;
};
extern class BitmapTransform {
	var bounds : Windows.Graphics.Imaging.BitmapBounds;
	var flip : Windows.Graphics.Imaging.BitmapFlip;
	var interpolationMode : Windows.Graphics.Imaging.BitmapInterpolationMode;
	var rotation : Windows.Graphics.Imaging.BitmapRotation;
	var scaledHeight : Float;
	var scaledWidth : Float;
}
typedef IBitmapTypedValue = {
	var type : Windows.Foundation.PropertyType;
	var value : Dynamic;
};
typedef IBitmapTypedValueFactory = {
	function create(value:Dynamic, type:Windows.Foundation.PropertyType):Windows.Graphics.Imaging.BitmapTypedValue;
};
extern class BitmapTypedValue {
	function new(value:Dynamic, type:Windows.Foundation.PropertyType):Void;
	var type : Windows.Foundation.PropertyType;
	var value : Dynamic;
}
extern class BitmapPropertySet {
	var size : Float;
	function lookup(key:String):Windows.Graphics.Imaging.BitmapTypedValue;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, Windows.Graphics.Imaging.BitmapTypedValue>;
	function insert(key:String, value:Windows.Graphics.Imaging.BitmapTypedValue):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>;
}
typedef IBitmapPropertiesView = {
	function getPropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapPropertySet>;
};
typedef IBitmapProperties = {
	>Windows.Graphics.Imaging.IBitmapPropertiesView,
	function setPropertiesAsync(propertiesToSet:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncAction;
};
extern class BitmapPropertiesView {
	function getPropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapPropertySet>;
}
extern class BitmapProperties {
	function setPropertiesAsync(propertiesToSet:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncAction;
	function getPropertiesAsync(propertiesToRetrieve:Windows.Foundation.Collections.IIterable<String>):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapPropertySet>;
}
typedef IPixelDataProvider = {
	function detachPixelData():Uint8Array;
};
extern class PixelDataProvider {
	function detachPixelData():Uint8Array;
}
extern class ImageStream {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	var contentType : String;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
	function dispose():Void;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function close():Void;
}
typedef IBitmapFrame = {
	var bitmapAlphaMode : Windows.Graphics.Imaging.BitmapAlphaMode;
	var bitmapPixelFormat : Windows.Graphics.Imaging.BitmapPixelFormat;
	var bitmapProperties : Windows.Graphics.Imaging.BitmapPropertiesView;
	var dpiX : Float;
	var dpiY : Float;
	var orientedPixelHeight : Float;
	var orientedPixelWidth : Float;
	var pixelHeight : Float;
	var pixelWidth : Float;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.ImageStream>;
	@:overload(function(pixelFormat:Windows.Graphics.Imaging.BitmapPixelFormat, alphaMode:Windows.Graphics.Imaging.BitmapAlphaMode, transform:Windows.Graphics.Imaging.BitmapTransform, exifOrientationMode:Windows.Graphics.Imaging.ExifOrientationMode, colorManagementMode:Windows.Graphics.Imaging.ColorManagementMode):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider> { })
	function getPixelDataAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider>;
};
extern class BitmapFrame {
	var bitmapAlphaMode : Windows.Graphics.Imaging.BitmapAlphaMode;
	var bitmapPixelFormat : Windows.Graphics.Imaging.BitmapPixelFormat;
	var bitmapProperties : Windows.Graphics.Imaging.BitmapPropertiesView;
	var dpiX : Float;
	var dpiY : Float;
	var orientedPixelHeight : Float;
	var orientedPixelWidth : Float;
	var pixelHeight : Float;
	var pixelWidth : Float;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.ImageStream>;
	@:overload(function(pixelFormat:Windows.Graphics.Imaging.BitmapPixelFormat, alphaMode:Windows.Graphics.Imaging.BitmapAlphaMode, transform:Windows.Graphics.Imaging.BitmapTransform, exifOrientationMode:Windows.Graphics.Imaging.ExifOrientationMode, colorManagementMode:Windows.Graphics.Imaging.ColorManagementMode):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider> { })
	function getPixelDataAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider>;
}
typedef IBitmapCodecInformation = {
	var codecId : String;
	var fileExtensions : Windows.Foundation.Collections.IVectorView<String>;
	var friendlyName : String;
	var mimeTypes : Windows.Foundation.Collections.IVectorView<String>;
};
extern class BitmapCodecInformation {
	var codecId : String;
	var fileExtensions : Windows.Foundation.Collections.IVectorView<String>;
	var friendlyName : String;
	var mimeTypes : Windows.Foundation.Collections.IVectorView<String>;
}
typedef IBitmapDecoderStatics = {
	var bmpDecoderId : String;
	var gifDecoderId : String;
	var icoDecoderId : String;
	var jpegDecoderId : String;
	var jpegXRDecoderId : String;
	var pngDecoderId : String;
	var tiffDecoderId : String;
	function getDecoderInformationEnumerator():Windows.Foundation.Collections.IVectorView<Windows.Graphics.Imaging.BitmapCodecInformation>;
	@:overload(function(decoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapDecoder> { })
	function createAsync(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapDecoder>;
};
extern class BitmapDecoder {
	var bitmapContainerProperties : Windows.Graphics.Imaging.BitmapPropertiesView;
	var decoderInformation : Windows.Graphics.Imaging.BitmapCodecInformation;
	var frameCount : Float;
	var bitmapAlphaMode : Windows.Graphics.Imaging.BitmapAlphaMode;
	var bitmapPixelFormat : Windows.Graphics.Imaging.BitmapPixelFormat;
	var bitmapProperties : Windows.Graphics.Imaging.BitmapPropertiesView;
	var dpiX : Float;
	var dpiY : Float;
	var orientedPixelHeight : Float;
	var orientedPixelWidth : Float;
	var pixelHeight : Float;
	var pixelWidth : Float;
	function getPreviewAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.ImageStream>;
	function getFrameAsync(frameIndex:Float):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapFrame>;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.ImageStream>;
	@:overload(function(pixelFormat:Windows.Graphics.Imaging.BitmapPixelFormat, alphaMode:Windows.Graphics.Imaging.BitmapAlphaMode, transform:Windows.Graphics.Imaging.BitmapTransform, exifOrientationMode:Windows.Graphics.Imaging.ExifOrientationMode, colorManagementMode:Windows.Graphics.Imaging.ColorManagementMode):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider> { })
	function getPixelDataAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.PixelDataProvider>;
	static var bmpDecoderId : String;
	static var gifDecoderId : String;
	static var icoDecoderId : String;
	static var jpegDecoderId : String;
	static var jpegXRDecoderId : String;
	static var pngDecoderId : String;
	static var tiffDecoderId : String;
	static function getDecoderInformationEnumerator():Windows.Foundation.Collections.IVectorView<Windows.Graphics.Imaging.BitmapCodecInformation>;
	@:overload(function(decoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapDecoder> { })
	static function createAsync(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapDecoder>;
}
typedef IBitmapDecoder = {
	var bitmapContainerProperties : Windows.Graphics.Imaging.BitmapPropertiesView;
	var decoderInformation : Windows.Graphics.Imaging.BitmapCodecInformation;
	var frameCount : Float;
	function getPreviewAsync():Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.ImageStream>;
	function getFrameAsync(frameIndex:Float):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapFrame>;
};
typedef IBitmapEncoderStatics = {
	var bmpEncoderId : String;
	var gifEncoderId : String;
	var jpegEncoderId : String;
	var jpegXREncoderId : String;
	var pngEncoderId : String;
	var tiffEncoderId : String;
	function getEncoderInformationEnumerator():Windows.Foundation.Collections.IVectorView<Windows.Graphics.Imaging.BitmapCodecInformation>;
	@:overload(function(encoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream, encodingOptions:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder> { })
	function createAsync(encoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
	function createForTranscodingAsync(stream:Windows.Storage.Streams.IRandomAccessStream, bitmapDecoder:Windows.Graphics.Imaging.BitmapDecoder):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
	function createForInPlacePropertyEncodingAsync(bitmapDecoder:Windows.Graphics.Imaging.BitmapDecoder):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
};
extern class BitmapEncoder {
	var bitmapContainerProperties : Windows.Graphics.Imaging.BitmapProperties;
	var bitmapProperties : Windows.Graphics.Imaging.BitmapProperties;
	var bitmapTransform : Windows.Graphics.Imaging.BitmapTransform;
	var encoderInformation : Windows.Graphics.Imaging.BitmapCodecInformation;
	var generatedThumbnailHeight : Float;
	var generatedThumbnailWidth : Float;
	var isThumbnailGenerated : Bool;
	function setPixelData(pixelFormat:Windows.Graphics.Imaging.BitmapPixelFormat, alphaMode:Windows.Graphics.Imaging.BitmapAlphaMode, width:Float, height:Float, dpiX:Float, dpiY:Float, pixels:Uint8Array):Void;
	@:overload(function(encodingOptions:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncAction { })
	function goToNextFrameAsync():Windows.Foundation.IAsyncAction;
	function flushAsync():Windows.Foundation.IAsyncAction;
	static var bmpEncoderId : String;
	static var gifEncoderId : String;
	static var jpegEncoderId : String;
	static var jpegXREncoderId : String;
	static var pngEncoderId : String;
	static var tiffEncoderId : String;
	static function getEncoderInformationEnumerator():Windows.Foundation.Collections.IVectorView<Windows.Graphics.Imaging.BitmapCodecInformation>;
	@:overload(function(encoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream, encodingOptions:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder> { })
	static function createAsync(encoderId:String, stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
	static function createForTranscodingAsync(stream:Windows.Storage.Streams.IRandomAccessStream, bitmapDecoder:Windows.Graphics.Imaging.BitmapDecoder):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
	static function createForInPlacePropertyEncodingAsync(bitmapDecoder:Windows.Graphics.Imaging.BitmapDecoder):Windows.Foundation.IAsyncOperation<Windows.Graphics.Imaging.BitmapEncoder>;
}
typedef IBitmapEncoder = {
	var bitmapContainerProperties : Windows.Graphics.Imaging.BitmapProperties;
	var bitmapProperties : Windows.Graphics.Imaging.BitmapProperties;
	var bitmapTransform : Windows.Graphics.Imaging.BitmapTransform;
	var encoderInformation : Windows.Graphics.Imaging.BitmapCodecInformation;
	var generatedThumbnailHeight : Float;
	var generatedThumbnailWidth : Float;
	var isThumbnailGenerated : Bool;
	function setPixelData(pixelFormat:Windows.Graphics.Imaging.BitmapPixelFormat, alphaMode:Windows.Graphics.Imaging.BitmapAlphaMode, width:Float, height:Float, dpiX:Float, dpiY:Float, pixels:Uint8Array):Void;
	@:overload(function(encodingOptions:Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.Graphics.Imaging.BitmapTypedValue>>):Windows.Foundation.IAsyncAction { })
	function goToNextFrameAsync():Windows.Foundation.IAsyncAction;
	function flushAsync():Windows.Foundation.IAsyncAction;
};
