typedef KeyboardEvent = {
	@:optional
	var shiftKey : Bool;
	@:optional
	var altKey : Bool;
	var requestId : String;
	var key : String;
	@:optional
	var ctrlKey : Bool;
	var type : String;
};
typedef InputContext = {
	var contextID : Float;
	var type : String;
};
typedef ImeParameters = {
	var items : Array<Dynamic>;
	var engineID : String;
};
typedef CommitTextParameters = {
	var text : String;
	var contextID : Float;
};
typedef CandidatesParameters = {
	var contextID : Float;
	var candidates : Array<Dynamic>;
};
typedef CompositionParameters = {
	var contextID : Float;
	var text : String;
	var segments : Array<Dynamic>;
	var cursor : Float;
	@:optional
	var selectionStart : Float;
	@:optional
	var selectionEnd : Float;
};
typedef MenuItemParameters = {
	var items : Array<Dynamic>;
	var engineId : String;
};
typedef CandidateWindowPropertiesParameters = {
	@:optional
	var cursorVisible : Bool;
	@:optional
	var vertical : Bool;
	@:optional
	var pageSize : Float;
	@:optional
	var auxiliaryTextVisible : Bool;
	@:optional
	var auxiliaryText : String;
	@:optional
	var visible : Bool;
};
typedef ClearCompositionParameters = {
	var contextID : Float;
};
typedef CursorPositionParameters = {
	var candidateID : Float;
	var contextID : Float;
};
typedef BlurEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> Void):Void;
};
typedef CandidateClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Float -> String -> Void):Void;
};
typedef KeyEventEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> KeyboardEvent -> Void):Void;
};
typedef DeactivatedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
typedef InputContextUpdateEvent = {
	>chrome.events.Event,
	function addListener(callback:InputContext -> Void):Void;
};
typedef ActivateEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
typedef FocusEvent = {
	>chrome.events.Event,
	function addListener(callback:InputContext -> Void):Void;
};
typedef MenuItemActivatedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> String -> Void):Void;
};
extern class Chrome.input.imeTopLevel {
	static function setMenuItems(parameters:ImeParameters, ?callback:haxe.Constraints.Function):Void;
	static function commitText(parameters:CommitTextParameters, ?callback:Bool -> Void):Void;
	static function setCandidates(parameters:CandidatesParameters, ?callback:Bool -> Void):Void;
	static function setComposition(parameters:CompositionParameters, ?callback:Bool -> Void):Void;
	static function updateMenuItems(parameters:MenuItemParameters, ?callback:haxe.Constraints.Function):Void;
	static function setCandidateWindowProperties(parameters:CandidateWindowPropertiesParameters, ?callback:Bool -> Void):Void;
	static function clearComposition(parameters:ClearCompositionParameters, ?callback:Bool -> Void):Void;
	static function setCursorPosition(parameters:CursorPositionParameters, ?callback:Bool -> Void):Void;
	static var onBlur : BlurEvent;
	static var onCandidateClicked : CandidateClickedEvent;
	static var onKeyEvent : KeyEventEvent;
	static var onDeactivated : DeactivatedEvent;
	static var onInputContextUpdate : InputContextUpdateEvent;
	static var onActivate : ActivateEvent;
	static var onFocus : FocusEvent;
	static var onMenuItemActivated : MenuItemActivatedEvent;
}
