typedef AudioContext = {
	>EventTarget,
	var destination : AudioDestinationNode;
	var sampleRate : Float;
	var currentTime : Float;
	var listener : AudioListener;
	@:overload(function(buffer:ArrayBuffer, mixToMono:Bool):AudioBuffer { })
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):AudioBuffer;
	function decodeAudioData(audioData:ArrayBuffer, successCallback:AudioBuffer -> Dynamic, ?errorCallback:haxe.Constraints.Function):Void;
	function createBufferSource():AudioBufferSourceNode;
	function createMediaElementSource(mediaElement:HTMLMediaElement):MediaElementAudioSourceNode;
	function createMediaStreamSource(mediaStream:MediaStream):MediaStreamAudioSourceNode;
	function createMediaStreamDestination():MediaStreamAudioDestinationNode;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):ScriptProcessorNode;
	function createAnalyser():AnalyserNode;
	function createGain():GainNode;
	function createDelay(?maxDelayTime:Float):DelayNode;
	function createBiquadFilter():BiquadFilterNode;
	function createWaveShaper():WaveShaperNode;
	function createPanner():PannerNode;
	function createConvolver():ConvolverNode;
	function createChannelSplitter(?numberOfOutputs:Float):ChannelSplitterNode;
	function createChannelMerger(?numberOfInputs:Float):ChannelMergerNode;
	function createDynamicsCompressor():DynamicsCompressorNode;
	function createOscillator():OscillatorNode;
	function createPeriodicWave(real:Float32Array, imag:Float32Array):PeriodicWave;
};
typedef OfflineAudioContext = {
	>AudioContext,
	function startRendering():Void;
	var oncomplete : EventHandler;
};
typedef OfflineAudioCompletionEvent = {
	>Event,
	var renderedBuffer : AudioBuffer;
};
@:enum abstract ChannelCountMode(Int) {
	var max = 0;
	var clamped-max = 1;
	var explicit = 2;
}
@:enum abstract ChannelInterpretation(Int) {
	var speakers = 0;
	var discrete = 1;
}
typedef AudioNode = {
	>EventTarget,
	@:overload(function(destination:AudioParam, ?output:Float):Void { })
	function connect(destination:AudioNode, ?output:Float, ?input:Float):Void;
	function disconnect(?output:Float):Void;
	var context : AudioContext;
	var numberOfInputs : Float;
	var numberOfOutputs : Float;
	var channelCount : Float;
	var channelCountMode : ChannelCountMode;
	var channelInterpretation : ChannelInterpretation;
};
typedef AudioSourceNode = {
	>AudioNode,
};
typedef AudioDestinationNode = {
	>AudioNode,
	var maxNumberOfChannels : Float;
	var numberOfChannels : Float;
};
typedef AudioParam = {
	var value : Float;
	var minValue : Float;
	var maxValue : Float;
	var defaultValue : Float;
	function setValueAtTime(value:Float, startTime:Float):Void;
	function linearRampToValueAtTime(value:Float, endTime:Float):Void;
	function exponentialRampToValueAtTime(value:Float, endTime:Float):Void;
	function setTargetValueAtTime(target:Float, startTime:Float, timeConstant:Float):Void;
	function setValueCurveAtTime(values:Float32Array, startTime:Float, duration:Float):Void;
	function cancelScheduledValues(startTime:Float):Void;
};
typedef GainNode = {
	>AudioNode,
	var gain : AudioParam;
};
typedef DelayNode = {
	>AudioNode,
	var delayTime : AudioParam;
};
typedef AudioBuffer = {
	var sampleRate : Float;
	var length : Float;
	var duration : Float;
	var numberOfChannels : Float;
	function getChannelData(channel:Float):Float32Array;
};
typedef AudioBufferSourceNode = {
	>AudioNode,
	var buffer : AudioBuffer;
	var playbackRate : AudioParam;
	var loop : Bool;
	var loopStart : Float;
	var loopEnd : Float;
	var onended : EventHandler;
	function start(?when:Float, ?offset:Float, ?duration:Float):Void;
	function stop(?when:Float):Void;
};
typedef MediaElementAudioSourceNode = {
	>AudioNode,
};
typedef AudioProcessingEventHandler = { };
typedef ScriptProcessorNode = {
	>AudioNode,
	var onaudioprocess : AudioProcessingEventHandler;
	var bufferSize : Float;
};
typedef AudioProcessingEvent = {
	>Event,
	var playbackTime : Float;
	var inputBuffer : AudioBuffer;
	var outputBuffer : AudioBuffer;
};
@:enum abstract PanningModelType(Int) {
	var equalpower = 0;
	var HRTF = 1;
}
@:enum abstract DistanceModelType(Int) {
	var linear = 0;
	var inverse = 1;
	var exponential = 2;
}
typedef PannerNode = {
	>AudioNode,
	var panningModel : PanningModelType;
	function setPosition(x:Float, y:Float, z:Float):Void;
	function setOrientation(x:Float, y:Float, z:Float):Void;
	function setVelocity(x:Float, y:Float, z:Float):Void;
	var distanceModel : DistanceModelType;
	var refDistance : Float;
	var maxDistance : Float;
	var rolloffFactor : Float;
	var coneInnerAngle : Float;
	var coneOuterAngle : Float;
	var coneOuterGain : Float;
};
typedef AudioListener = {
	var dopplerFactor : Float;
	var speedOfSound : Float;
	function setPosition(x:Float, y:Float, z:Float):Void;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setVelocity(x:Float, y:Float, z:Float):Void;
};
typedef ConvolverNode = {
	>AudioNode,
	var buffer : AudioBuffer;
	var normalize : Bool;
};
typedef AnalyserNode = {
	>AudioNode,
	function getFloatFrequencyData(array:Float32Array):Void;
	function getByteFrequencyData(array:Uint8Array):Void;
	function getByteTimeDomainData(array:Uint8Array):Void;
	var fftSize : Float;
	var frequencyBinCount : Float;
	var minDecibels : Float;
	var maxDecibels : Float;
	var smoothingTimeConstant : Float;
};
typedef ChannelSplitterNode = {
	>AudioNode,
};
typedef ChannelMergerNode = {
	>AudioNode,
};
typedef DynamicsCompressorNode = {
	>AudioNode,
	var threshold : AudioParam;
	var knee : AudioParam;
	var ratio : AudioParam;
	var reduction : AudioParam;
	var attack : AudioParam;
	var release : AudioParam;
};
@:enum abstract BiquadFilterType(Int) {
	var lowpass = 0;
	var highpass = 1;
	var bandpass = 2;
	var lowshelf = 3;
	var highshelf = 4;
	var peaking = 5;
	var notch = 6;
	var allpass = 7;
}
typedef BiquadFilterNode = {
	>AudioNode,
	var type : BiquadFilterType;
	var frequency : AudioParam;
	var Q : AudioParam;
	var gain : AudioParam;
	function getFrequencyResponse(frequencyHz:Float32Array, magResponse:Float32Array, phaseResponse:Float32Array):Void;
};
@:enum abstract OverSampleType(Int) {
	var none = 0;
	var 2x = 1;
	var 4x = 2;
}
typedef WaveShaperNode = {
	>AudioNode,
	var curve : Float32Array;
	var oversample : OverSampleType;
};
@:enum abstract OscillatorType(Int) {
	var sine = 0;
	var square = 1;
	var sawtooth = 2;
	var triangle = 3;
	var custom = 4;
}
typedef OscillatorNode = {
	>AudioNode,
	var type : OscillatorType;
	var frequency : AudioParam;
	var detune : AudioParam;
	function start(when:Float):Void;
	function stop(when:Float):Void;
	function setPeriodicWave(periodicWave:PeriodicWave):Void;
	var onended : EventHandler;
};
typedef PeriodicWave = { };
typedef MediaStreamAudioSourceNode = {
	>AudioNode,
};
typedef MediaStreamAudioDestinationNode = {
	>AudioNode,
	var stream : MediaStream;
};
extern class WaaTopLevel {
	static var AudioContext : { function new():AudioContext; };
	static var webkitAudioContext : { function new():AudioContext; };
	static var OfflineAudioContext : { function new(numberOfChannels:Float, length:Float, sampleRate:Float):OfflineAudioContext; };
	static var webkitOfflineAudioContext : { function new(numberOfChannels:Float, length:Float, sampleRate:Float):OfflineAudioContext; };
}
