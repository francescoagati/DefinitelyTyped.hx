typedef SpeakOptions = {
	@:optional
	var lang : String;
	@:optional
	var voiceName : String;
	@:optional
	var gender : String;
	@:optional
	var volume : Float;
	@:optional
	var rate : Float;
	@:optional
	var pitch : Float;
};
typedef TtsEngineSpeakEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> SpeakOptions -> chrome.tts.TtsEvent -> Void -> Void):Void;
};
typedef TtsEngineStopEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
extern class Chrome.ttsEngineTopLevel {
	static var onSpeak : TtsEngineSpeakEvent;
	static var onStop : TtsEngineStopEvent;
}
