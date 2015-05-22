typedef SpeechRecognition = {
	>EventTarget,
	var grammars : SpeechGrammarList;
	var lang : String;
	var continuous : Bool;
	var interimResults : Bool;
	var maxAlternatives : Float;
	var serviceURI : String;
	function start():Void;
	function stop():Void;
	function abort():Void;
	var onaudiostart : Event -> Dynamic;
	var onsoundstart : Event -> Dynamic;
	var onspeechstart : Event -> Dynamic;
	var onspeechend : Event -> Dynamic;
	var onsoundend : Event -> Dynamic;
	var onresult : SpeechRecognitionEvent -> Dynamic;
	var onnomatch : SpeechRecognitionEvent -> Dynamic;
	var onerror : SpeechRecognitionError -> Dynamic;
	var onstart : Event -> Dynamic;
	var onend : Event -> Dynamic;
};
typedef SpeechRecognitionStatic = {
	var prototype : SpeechRecognition;
	function new():SpeechRecognition;
};
typedef SpeechRecognitionError = {
	>Event,
	var error : String;
	var message : String;
};
typedef SpeechRecognitionAlternative = {
	var transcript : String;
	var confidence : Float;
};
typedef SpeechRecognitionResult = {
	var length : Float;
	function item(index:Float):SpeechRecognitionAlternative;
	var isFinal : Bool;
};
typedef SpeechRecognitionResultList = {
	var length : Float;
	function item(index:Float):SpeechRecognitionResult;
};
typedef SpeechRecognitionEvent = {
	>Event,
	var resultIndex : Float;
	var results : SpeechRecognitionResultList;
	var interpretation : Dynamic;
	var emma : Document;
};
typedef SpeechGrammar = {
	var src : String;
	var weight : Float;
};
typedef SpeechGrammarStatic = {
	var prototype : SpeechGrammar;
	function new():SpeechGrammar;
};
typedef SpeechGrammarList = {
	var length : Float;
	function item(index:Float):SpeechGrammar;
	function addFromURI(src:String, weight:Float):Void;
	function addFromString(string:String, weight:Float):Void;
};
typedef SpeechGrammarListStatic = {
	var prototype : SpeechGrammarList;
	function new():SpeechGrammarList;
};
typedef SpeechSynthesis = {
	>EventTarget,
	var pending : Bool;
	var speaking : Bool;
	var paused : Bool;
	var onvoiceschanged : Event -> Dynamic;
	function speak(utterance:SpeechSynthesisUtterance):Void;
	function cancel():Void;
	function pause():Void;
	function resume():Void;
	function getVoices():Array<SpeechSynthesisVoice>;
};
typedef SpeechSynthesisGetter = {
	var speechSynthesis : SpeechSynthesis;
};
typedef Window = {
	>SpeechSynthesisGetter,
};
typedef SpeechSynthesisUtterance = {
	>EventTarget,
	var text : String;
	var lang : String;
	var voice : SpeechSynthesisVoice;
	var volume : Float;
	var rate : Float;
	var pitch : Float;
	var onstart : SpeechSynthesisEvent -> Dynamic;
	var onend : SpeechSynthesisEvent -> Dynamic;
	var onerror : SpeechSynthesisErrorEvent -> Dynamic;
	var onpause : SpeechSynthesisEvent -> Dynamic;
	var onresume : SpeechSynthesisEvent -> Dynamic;
	var onmark : SpeechSynthesisEvent -> Dynamic;
	var onboundary : SpeechSynthesisEvent -> Dynamic;
};
typedef SpeechSynthesisUtteranceStatic = {
	var prototype : SpeechSynthesisUtterance;
	@:overload(function(text:String):SpeechSynthesisUtterance { })
	function new():SpeechSynthesisUtterance;
};
typedef SpeechSynthesisEvent = {
	>Event,
	var utterance : SpeechSynthesisUtterance;
	var charIndex : Float;
	var elapsedTime : Float;
	var name : String;
};
typedef SpeechSynthesisErrorEvent = {
	>SpeechSynthesisEvent,
	var error : String;
};
typedef SpeechSynthesisVoice = {
	var voiceURI : String;
	var name : String;
	var lang : String;
	var localService : Bool;
	var default : Bool;
};
extern class WebspeechapiTopLevel {
	static var SpeechRecognition : SpeechRecognitionStatic;
	static var webkitSpeechRecognition : SpeechRecognitionStatic;
	static var SpeechGrammar : SpeechGrammarStatic;
	static var webkitSpeechGrammar : SpeechGrammarStatic;
	static var SpeechGrammarList : SpeechGrammarListStatic;
	static var webkitSpeechGrammarList : SpeechGrammarListStatic;
	static var speechSynthesis : SpeechSynthesis;
	static var SpeechSynthesisUtterance : SpeechSynthesisUtteranceStatic;
}
