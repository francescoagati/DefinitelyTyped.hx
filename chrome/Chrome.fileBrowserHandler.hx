typedef SelectionParams = {
	@:optional
	var allowedFileExtensions : Array<String>;
	var suggestedName : String;
};
typedef SelectionResult = {
	@:optional
	var entry : Dynamic;
	var success : Bool;
};
typedef FileHandlerExecuteEventDetails = {
	@:optional
	var tab_id : Float;
	var entries : Array<Dynamic>;
	function selectFile(selectionParams:SelectionParams, callback:SelectionResult -> Void):Void;
};
typedef FileBrowserHandlerExecuteEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> FileHandlerExecuteEventDetails -> Void):Void;
};
extern class Chrome.fileBrowserHandlerTopLevel {
	static var onExecute : FileBrowserHandlerExecuteEvent;
}
