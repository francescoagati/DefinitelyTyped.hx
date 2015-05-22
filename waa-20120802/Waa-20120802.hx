typedef WebkitAudioContext = {
	var destination : AudioDestinationNode;
	var sampleRate : Float;
	var currentTime : Float;
	var listener : AudioListener;
	var activeSourceCount : Float;
	@:overload(function(buffer:ArrayBuffer, mixToMono:Bool):AudioBuffer { })
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):AudioBuffer;
	function decodeAudioData(audioData:ArrayBuffer, successCallback:Dynamic, ?errorCallback:Dynamic):Void;
	function createBufferSource():AudioBufferSourceNode;
	function createMediaElementSource(mediaElement:HTMLMediaElement):MediaElementAudioSourceNode;
	function createMediaStreamSource(mediaStream:Dynamic):MediaStreamAudioSourceNode;
	function createAnalyser():RealtimeAnalyserNode;
	function createGainNode():AudioGainNode;
	function createDelayNode(?maxDelayTime:Float):DelayNode;
	function createBiquadFilter():BiquadFilterNode;
	function createPanner():AudioPannerNode;
	function createConvolver():ConvolverNode;
	function createChannelSplitter(?numberOfOutputs:Float):AudioChannelSplitter;
	function createChannelMerger(?numberOfInputs:Float):AudioChannelMerger;
	function createDynamicsCompressor():DynamicsCompressorNode;
	function createOscillator():Oscillator;
	function createWaveTable(real:Dynamic, imag:Dynamic):WaveTable;
};
typedef Oscillator = {
	>AudioSourceNode,
	var type : Float;
	var playbackState : Float;
	var frequency : AudioParam;
	var detune : AudioParam;
	function noteOn(when:Float):Void;
	function noteOff(when:Float):Void;
	function setWaveTable(waveTable:WaveTable):Void;
};
typedef AudioDestinationNode = {
	>AudioNode,
	var maxNumberOfChannels : Float;
	var numberOfChannels : Float;
};
typedef AudioNode = {
	@:overload(function(destination:AudioParam, ?output:Float):Void { })
	function connect(destination:AudioNode, ?output:Float, ?input:Float):Void;
	function disconnect(?output:Float):Void;
	var context : WebkitAudioContext;
	var numberOfInputs : Float;
	var numberOfOutputs : Float;
};
typedef AudioSourceNode = {
	>AudioNode,
};
typedef AudioParam = {
	var value : Float;
	var minValue : Float;
	var maxValue : Float;
	var defaultValue : Float;
	function setValueAtTime(value:Float, time:Float):Void;
	function linearRampToValueAtTime(value:Float, time:Float):Void;
	function exponentialRampToValueAtTime(value:Float, time:Float):Void;
	function setTargetValueAtTime(targetValue:Float, time:Float, timeConstant:Float):Void;
	function setValueCurveAtTime(values:Array<Float>, time:Float, duration:Float):Void;
	function cancelScheduledValues(startTime:Float):Void;
};
typedef AudioGain = {
	>AudioParam,
};
typedef AudioGainNode = {
	>AudioNode,
	var gain : AudioGain;
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
	function getChannelData(channel:Float):Dynamic;
};
typedef AudioBufferSourceNode = {
	>AudioSourceNode,
	var playbackState : Float;
	var buffer : AudioBuffer;
	var playbackRate : AudioParam;
	var loop : Bool;
	function noteOn(when:Float):Void;
	function noteGrainOn(when:Float, grainOffset:Float, grainDuration:Float):Void;
	function noteOff(when:Float):Void;
};
typedef MediaElementAudioSourceNode = {
	>AudioSourceNode,
};
typedef JavaScriptAudioNode = {
	>AudioNode,
	var onaudioprocess : EventListener;
	var bufferSize : Float;
};
typedef AudioProcessingEvent = {
	>Event,
	var node : JavaScriptAudioNode;
	var playbackTime : Float;
	var inputBuffer : AudioBuffer;
	var outputBuffer : AudioBuffer;
};
typedef AudioPannerNode = {
	>AudioNode,
	var panningModel : Float;
	function setPosition(x:Float, y:Float, z:Float):Void;
	function setOrientation(x:Float, y:Float, z:Float):Void;
	function setVelocity(x:Float, y:Float, z:Float):Void;
	var distanceModel : Float;
	var refDistance : Float;
	var maxDistance : Float;
	var rolloffFactor : Float;
	var coneInnerAngle : Float;
	var coneOuterAngle : Float;
	var coneOuterGain : Float;
	var distanceGain : AudioGain;
	var coneGain : AudioGain;
};
typedef AudioListener = {
	var dopplerFactor : Float;
	var speedOfSound : Float;
	function setPosition(x:Float, y:Float, z:Float):Void;
	function setOrientation(x:Float, y:Float, z:Float, xUp:Float, yUp:Float, zUp:Float):Void;
	function setVelocity(x:Float, y:Float, z:Float):Void;
};
typedef RealtimeAnalyserNode = {
	>AudioNode,
	function getFloatFrequencyData(array:Dynamic):Void;
	function getByteFrequencyData(array:Dynamic):Void;
	function getByteTimeDomainData(array:Dynamic):Void;
	var fftSize : Float;
	var frequencyBinCount : Float;
	var minDecibels : Float;
	var maxDecibels : Float;
	var smoothingTimeConstant : Float;
};
typedef AudioChannelSplitter = {
	>AudioNode,
};
typedef AudioChannelMerger = {
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
typedef BiquadFilterNode = {
	>AudioNode,
	var type : Float;
	var frequency : AudioParam;
	var Q : AudioParam;
	var gain : AudioParam;
	function getFrequencyResponse(frequencyHz:Dynamic, magResponse:Dynamic, phaseResponse:Dynamic):Void;
};
typedef WaveShaperNode = {
	>AudioNode,
	var curve : Dynamic;
};
typedef MediaStreamAudioSourceNode = {
	>AudioSourceNode,
};
typedef ConvolverNode = {
	>AudioNode,
	var buffer : AudioBuffer;
	var normalize : Bool;
};
typedef WaveTable = { };
extern class Waa-20120802TopLevel {
	static var webkitAudioContext : { function new():WebkitAudioContext; };
}
