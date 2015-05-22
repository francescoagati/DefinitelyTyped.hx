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
	function createMediaStreamSource(mediaStream:MediaStream):MediaStreamAudioSourceNode;
	function createScriptProcessor(bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):ScriptProcessorNode;
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
	function createWaveTable(real:Dynamic, imag:Dynamic):WaveTable;
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
typedef AudioDestinationNode = {
	>AudioNode,
	var maxNumberOfChannels : Float;
	var numberOfChannels : Float;
};
typedef AudioParam = {
	var value : Float;
	var computedValue : Float;
	var minValue : Float;
	var maxValue : Float;
	var defaultValue : Float;
	function setValueAtTime(value:Float, startTime:Float):Void;
	function linearRampToValueAtTime(value:Float, endTime:Float):Void;
	function exponentialRampToValueAtTime(value:Float, endTime:Float):Void;
	function setTargetAtTime(target:Float, startTime:Float, timeConstant:Float):Void;
	function setValueCurveAtTime(values:Dynamic, startTime:Float, duration:Float):Void;
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
	function getChannelData(channel:Dynamic):Dynamic;
};
typedef AudioBufferSourceNode = {
	>AudioSourceNode,
	var playbackState : Float;
	var buffer : AudioBuffer;
	var playbackRate : AudioParam;
	var loop : Bool;
	var loopStart : Float;
	var loopEnd : Float;
	function start(when:Float, ?offset:Float, ?duration:Float):Void;
	function stop(when:Float):Void;
};
typedef MediaElementAudioSourceNode = {
	>AudioSourceNode,
};
typedef ScriptProcessorNode = {
	>AudioNode,
	var onaudioproces : EventListener;
	var bufferSize : Float;
};
typedef AudioProcessingEvent = {
	>Event,
	var node : ScriptProcessorNode;
	var playbackTime : Float;
	var inputBuffer : AudioBuffer;
	var outputBuffer : AudioBuffer;
};
typedef PannerNode = {
	>AudioNode,
	var panningModel : Float;
	var distanceModel : Float;
	function setPosition(x:Float, y:Float, z:Float):Void;
	function setOrientation(x:Float, y:Float, z:Float):Void;
	function setVelocity(x:Float, y:Float, z:Float):Void;
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
	function getFloatFrequencyData(array:Dynamic):Void;
	function getByteFrequencyData(array:Dynamic):Void;
	function getByteTimeDomainData(array:Dynamic):Void;
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
typedef OscillatorNode = {
	>AudioSourceNode,
	var type : Float;
	var playbackState : Float;
	var frequency : AudioParam;
	var detune : AudioParam;
	function start(when:Float):Void;
	function stop(when:Float):Void;
	function setWaveTable(waveTable:WaveTable):Void;
};
typedef WaveTable = { };
typedef MediaStreamAudioSourceNode = {
	>AudioSourceNode,
};
typedef MediaStream = { };
extern class Waa-nightlyTopLevel {
	static var webkitAudioContext : { function new(?value:Dynamic):WebkitAudioContext; };
}
