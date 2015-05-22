typedef CommandEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> Void):Void;
};
extern class Chrome.commandsTopLevel {
	static var onCommand : CommandEvent;
}
