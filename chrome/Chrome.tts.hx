typedef TtsEvent = {
	@:optional
	var charIndex : Float;
	@:optional
	var errorMessage : String;
	var type : String;
};
typedef TtsVoice = {
	@:optional
	var lang : String;
	@:optional
	var gender : String;
	@:optional
	var voiceName : String;
	@:optional
	var extensionsId : String;
	@:optional
	var eventTypes : Array<String>;
};
typedef SpeakOptions = {
	@:optional
	var volume : Float;
	@:optional
	var enqueue : Bool;
	@:optional
	var rate : Float;
	@:optional
	var onEvent : TtsEvent -> Void;
	@:optional
	var pitch : Float;
	@:optional
	var lang : String;
	@:optional
	var voiceName : String;
	@:optional
	var extensionId : String;
	@:optional
	var gender : String;
	@:optional
	var requiredEventTypes : Array<String>;
	@:optional
	var desiredEventTypes : Array<String>;
};
extern class Chrome.ttsTopLevel {
	static function isSpeaking(?callback:Bool -> Void):Void;
	static function stop():Void;
	static function getVoices(?callback:Array<TtsVoice> -> Void):Void;
	static function speak(utterance:String, ?options:SpeakOptions, ?callback:haxe.Constraints.Function):Void;
}
