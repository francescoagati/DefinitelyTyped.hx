typedef CordovaPluginEmailComposer = {
	function isAvailable(callback:Bool -> Void, ?scope:Dynamic):Void;
	function open(?options:ICordovaPluginEmailComposerOpenOptions, ?callback:Void -> Void, ?scope:Dynamic):Void;
	function openDraft(?options:ICordovaPluginEmailComposerOpenOptions, ?callback:Void -> Void, ?scope:Dynamic):Void;
};
typedef ICordovaPluginEmailComposerOpenOptions = {
	@:optional
	var to : Array<String>;
	@:optional
	var body : String;
	@:optional
	var cc : Array<String>;
	@:optional
	var bcc : Array<String>;
	@:optional
	var attachments : Array<Dynamic>;
	@:optional
	var subject : String;
	@:optional
	var isHtml : Bool;
};
typedef CordovaPlugins = {
	var email : CordovaPluginEmailComposer;
};
