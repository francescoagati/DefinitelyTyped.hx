extern class BeginRequestEventArgs extends EventArgs {
	function new(request:Sys.Net.WebRequest, postBackElement:Dynamic, updatePanelsToUpdate:Array<String>):Void;
	function get_postBackElement():HTMLElement;
	function get_request():Sys.Net.WebRequest;
	function get_updatePanelsToUpdate():Array<String>;
}
extern class EndRequestEventArgs extends EventArgs {
	function new(error:Error, dataItems:Dynamic, response:Sys.Net.WebRequestExecutor):Void;
	function get_dataItems():Dynamic;
	function get_error():Error;
	function get_errorHandled():Bool;
	function set_errorHandled(value:Bool):Void;
	function get_response():Sys.Net.WebRequestExecutor;
}
extern class InitializeRequestEventArgs extends EventArgs {
	function new(request:Sys.Net.WebRequest, postBackElement:Dynamic, updatePanelsToUpdate:Array<String>):Void;
	function get_postBackElement():HTMLElement;
	function get_request():Sys.Net.WebRequestExecutor;
	function get_updatePanelsToUpdate():Array<String>;
}
extern class PageLoadedEventArgs extends EventArgs {
	function new():Void;
	function get_dataItems():Dynamic;
	function get_panelsCreated():Array<HTMLDivElement>;
	function get_panelsUpdated():Array<HTMLDivElement>;
}
extern class PageLoadingEventArgs extends EventArgs {
	function new():Void;
	function get_dataItems():Dynamic;
	function get_panelsDeleting():Array<HTMLDivElement>;
	function get_panelsUpdating():Array<HTMLDivElement>;
}
extern class PageRequestManager {
	function new():Void;
	function add_beginRequest(beginRequestHandler:Dynamic -> BeginRequestEventArgs -> Void):Void;
	function remove_beginRequest(beginRequestHandler:haxe.Constraints.Function):Void;
	function add_endRequest(endRequestHandler:Dynamic -> Sys.WebForms.EndRequestEventArgs -> Void):Void;
	function remove_endRequest(endRequestHandler:Dynamic -> Sys.WebForms.EndRequestEventArgs -> Void):Void;
	function add_initializeRequest(initializeRequestHandler:Dynamic -> InitializeRequestEventArgs -> Void):Void;
	function remove_initializeRequest(initializeRequestHandler:Dynamic -> InitializeRequestEventArgs -> Void):Void;
	function add_pageLoaded(pageLoadedHandler:Dynamic -> PageLoadedEventArgs -> Void):Void;
	function remove_pageLoaded(pageLoadedHandler:Dynamic -> PageLoadedEventArgs -> Void):Void;
	function add_pageLoading(pageLoadingHandler:Dynamic -> PageLoadingEventArgs -> Void):Void;
	function remove_pageLoading(pageLoadingHandler:Dynamic -> PageLoadingEventArgs -> Void):Void;
	static function getInstance():PageRequestManager;
	function abortPostBack():Void;
	function beginAsyncPostBack(?updatePanelsToUpdate:Array<String>, ?eventTarget:String, ?eventArgument:String, ?causesValidation:Bool, ?validationGroup:String):Void;
	function dispose():Void;
	function get_isInAsyncPostBack():Bool;
}
extern class PageRequestManagerParserErrorException {

}
extern class PageRequestManagerServerErrorException {

}
extern class PageRequestManagerTimeoutException {

}
