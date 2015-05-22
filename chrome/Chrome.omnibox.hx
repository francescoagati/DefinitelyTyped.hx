typedef SuggestResult = {
	var content : String;
	var description : String;
};
typedef Suggestion = {
	var description : String;
};
typedef OmniboxInputEnteredEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
typedef OmniboxInputChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Array<SuggestResult> -> Void -> Void):Void;
};
typedef OmniboxInputStartedEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef OmniboxInputCancelledEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
extern class Chrome.omniboxTopLevel {
	static function setDefaultSuggestion(suggestion:Suggestion):Void;
	static var onInputEntered : OmniboxInputEnteredEvent;
	static var onInputChanged : OmniboxInputChangedEvent;
	static var onInputStarted : OmniboxInputStartedEvent;
	static var onInputCancelled : OmniboxInputCancelledEvent;
}
