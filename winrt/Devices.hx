@:enum abstract TelephonyKey(Int) {
	var d0 = 0;
	var d1 = 1;
	var d2 = 2;
	var d3 = 3;
	var d4 = 4;
	var d5 = 5;
	var d6 = 6;
	var d7 = 7;
	var d8 = 8;
	var d9 = 9;
	var star = 10;
	var pound = 11;
	var a = 12;
	var b = 13;
	var c = 14;
	var d = 15;
}
typedef IDialRequestedEventArgs = {
	var contact : Dynamic;
	function handled():Void;
};
extern class DialRequestedEventArgs {
	var contact : Dynamic;
	function handled():Void;
}
typedef IRedialRequestedEventArgs = {
	function handled():Void;
};
extern class RedialRequestedEventArgs {
	function handled():Void;
}
typedef IKeypadPressedEventArgs = {
	var telephonyKey : Windows.Media.Devices.TelephonyKey;
};
extern class KeypadPressedEventArgs {
	var telephonyKey : Windows.Media.Devices.TelephonyKey;
}
typedef CallControlEventHandler = { };
extern class CallControl {
	var hasRinger : Bool;
	function indicateNewIncomingCall(enableRinger:Bool, callerId:String):Float;
	function indicateNewOutgoingCall():Float;
	function indicateActiveCall(callToken:Float):Void;
	function endCall(callToken:Float):Void;
	var onanswerrequested : Dynamic;
	var onhanguprequested : Dynamic;
	var ondialrequested : Dynamic;
	var onredialrequested : Dynamic;
	var onkeypadpressed : Dynamic;
	var onaudiotransferrequested : Dynamic;
	static function getDefault():Windows.Media.Devices.CallControl;
	static function fromId(deviceInterfaceId:String):Windows.Media.Devices.CallControl;
}
typedef DialRequestedEventHandler = { };
typedef RedialRequestedEventHandler = { };
typedef KeypadPressedEventHandler = { };
typedef ICallControl = {
	var hasRinger : Bool;
	function indicateNewIncomingCall(enableRinger:Bool, callerId:String):Float;
	function indicateNewOutgoingCall():Float;
	function indicateActiveCall(callToken:Float):Void;
	function endCall(callToken:Float):Void;
	var onanswerrequested : Dynamic;
	var onhanguprequested : Dynamic;
	var ondialrequested : Dynamic;
	var onredialrequested : Dynamic;
	var onkeypadpressed : Dynamic;
	var onaudiotransferrequested : Dynamic;
};
typedef ICallControlStatics = {
	function getDefault():Windows.Media.Devices.CallControl;
	function fromId(deviceInterfaceId:String):Windows.Media.Devices.CallControl;
};
@:enum abstract AudioDeviceRole(Int) {
	var default = 0;
	var communications = 1;
}
typedef IDefaultAudioDeviceChangedEventArgs = {
	var id : String;
	var role : Windows.Media.Devices.AudioDeviceRole;
};
typedef IMediaDeviceStatics = {
	function getAudioCaptureSelector():String;
	function getAudioRenderSelector():String;
	function getVideoCaptureSelector():String;
	function getDefaultAudioCaptureId(role:Windows.Media.Devices.AudioDeviceRole):String;
	function getDefaultAudioRenderId(role:Windows.Media.Devices.AudioDeviceRole):String;
	var ondefaultaudiocapturedevicechanged : Dynamic;
	var ondefaultaudiorenderdevicechanged : Dynamic;
};
extern class DefaultAudioCaptureDeviceChangedEventArgs {
	var id : String;
	var role : Windows.Media.Devices.AudioDeviceRole;
}
extern class DefaultAudioRenderDeviceChangedEventArgs {
	var id : String;
	var role : Windows.Media.Devices.AudioDeviceRole;
}
extern class MediaDevice {
	static function getAudioCaptureSelector():String;
	static function getAudioRenderSelector():String;
	static function getVideoCaptureSelector():String;
	static function getDefaultAudioCaptureId(role:Windows.Media.Devices.AudioDeviceRole):String;
	static function getDefaultAudioRenderId(role:Windows.Media.Devices.AudioDeviceRole):String;
	static var ondefaultaudiocapturedevicechanged : Dynamic;
	static var ondefaultaudiorenderdevicechanged : Dynamic;
}
extern class AudioDeviceController {
	var muted : Bool;
	var volumePercent : Float;
	function getAvailableMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Foundation.Collections.IVectorView<Windows.Media.MediaProperties.IMediaEncodingProperties>;
	function getMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Media.MediaProperties.IMediaEncodingProperties;
	function setMediaStreamPropertiesAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType, mediaEncodingProperties:Windows.Media.MediaProperties.IMediaEncodingProperties):Windows.Foundation.IAsyncAction;
}
extern class VideoDeviceController {
	var backlightCompensation : Windows.Media.Devices.MediaDeviceControl;
	var brightness : Windows.Media.Devices.MediaDeviceControl;
	var contrast : Windows.Media.Devices.MediaDeviceControl;
	var exposure : Windows.Media.Devices.MediaDeviceControl;
	var focus : Windows.Media.Devices.MediaDeviceControl;
	var hue : Windows.Media.Devices.MediaDeviceControl;
	var pan : Windows.Media.Devices.MediaDeviceControl;
	var roll : Windows.Media.Devices.MediaDeviceControl;
	var tilt : Windows.Media.Devices.MediaDeviceControl;
	var whiteBalance : Windows.Media.Devices.MediaDeviceControl;
	var zoom : Windows.Media.Devices.MediaDeviceControl;
	function trySetPowerlineFrequency(value:Windows.Media.Capture.PowerlineFrequency):Bool;
	function tryGetPowerlineFrequency():{ var value : Windows.Media.Capture.PowerlineFrequency; var succeeded : Bool; };
	function getAvailableMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Foundation.Collections.IVectorView<Windows.Media.MediaProperties.IMediaEncodingProperties>;
	function getMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Media.MediaProperties.IMediaEncodingProperties;
	function setMediaStreamPropertiesAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType, mediaEncodingProperties:Windows.Media.MediaProperties.IMediaEncodingProperties):Windows.Foundation.IAsyncAction;
	function setDeviceProperty(propertyId:String, propertyValue:Dynamic):Void;
	function getDeviceProperty(propertyId:String):Dynamic;
}
typedef IMediaDeviceController = {
	function getAvailableMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Foundation.Collections.IVectorView<Windows.Media.MediaProperties.IMediaEncodingProperties>;
	function getMediaStreamProperties(mediaStreamType:Windows.Media.Capture.MediaStreamType):Windows.Media.MediaProperties.IMediaEncodingProperties;
	function setMediaStreamPropertiesAsync(mediaStreamType:Windows.Media.Capture.MediaStreamType, mediaEncodingProperties:Windows.Media.MediaProperties.IMediaEncodingProperties):Windows.Foundation.IAsyncAction;
};
typedef IAudioDeviceController = {
	>Windows.Media.Devices.IMediaDeviceController,
	var muted : Bool;
	var volumePercent : Float;
};
typedef IVideoDeviceController = {
	>Windows.Media.Devices.IMediaDeviceController,
	var backlightCompensation : Windows.Media.Devices.MediaDeviceControl;
	var brightness : Windows.Media.Devices.MediaDeviceControl;
	var contrast : Windows.Media.Devices.MediaDeviceControl;
	var exposure : Windows.Media.Devices.MediaDeviceControl;
	var focus : Windows.Media.Devices.MediaDeviceControl;
	var hue : Windows.Media.Devices.MediaDeviceControl;
	var pan : Windows.Media.Devices.MediaDeviceControl;
	var roll : Windows.Media.Devices.MediaDeviceControl;
	var tilt : Windows.Media.Devices.MediaDeviceControl;
	var whiteBalance : Windows.Media.Devices.MediaDeviceControl;
	var zoom : Windows.Media.Devices.MediaDeviceControl;
	function trySetPowerlineFrequency(value:Windows.Media.Capture.PowerlineFrequency):Bool;
	function tryGetPowerlineFrequency():{ var value : Windows.Media.Capture.PowerlineFrequency; var succeeded : Bool; };
};
extern class MediaDeviceControl {
	var capabilities : Windows.Media.Devices.MediaDeviceControlCapabilities;
	function tryGetValue():{ var value : Float; var succeeded : Bool; };
	function trySetValue(value:Float):Bool;
	function tryGetAuto():{ var value : Bool; var succeeded : Bool; };
	function trySetAuto(value:Bool):Bool;
}
typedef IMediaDeviceControl = {
	var capabilities : Windows.Media.Devices.MediaDeviceControlCapabilities;
	function tryGetValue():{ var value : Float; var succeeded : Bool; };
	function trySetValue(value:Float):Bool;
	function tryGetAuto():{ var value : Bool; var succeeded : Bool; };
	function trySetAuto(value:Bool):Bool;
};
extern class MediaDeviceControlCapabilities {
	var autoModeSupported : Bool;
	var default : Float;
	var max : Float;
	var min : Float;
	var step : Float;
	var supported : Bool;
}
typedef IMediaDeviceControlCapabilities = {
	var autoModeSupported : Bool;
	var default : Float;
	var max : Float;
	var min : Float;
	var step : Float;
	var supported : Bool;
};
typedef IAdvancedVideoCaptureDeviceController = {
	function setDeviceProperty(propertyId:String, propertyValue:Dynamic):Void;
	function getDeviceProperty(propertyId:String):Dynamic;
};
