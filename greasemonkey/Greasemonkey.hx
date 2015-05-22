typedef GMXMLHttpRequestOptions = {
	@:optional
	var binary : Bool;
	@:optional
	var context : Dynamic;
	@:optional
	var data : String;
	@:optional
	var headers : Dynamic;
	var method : String;
	@:optional
	var onabort : GMXMLHttpRequestResponse -> Dynamic;
	@:optional
	var onerror : GMXMLHttpRequestResponse -> Dynamic;
	@:optional
	var onload : GMXMLHttpRequestResponse -> Dynamic;
	@:optional
	var onprogress : GMXMLHttpRequestProgressResponse -> Dynamic;
	@:optional
	var onreadystatechange : GMXMLHttpRequestResponse -> Dynamic;
	@:optional
	var ontimeout : GMXMLHttpRequestResponse -> Dynamic;
	@:optional
	var overrideMimeType : String;
	@:optional
	var password : String;
	@:optional
	var synchronous : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var upload : { @:optional
	var onabort : GMXMLHttpRequestResponse -> Dynamic; @:optional
	var onerror : GMXMLHttpRequestResponse -> Dynamic; @:optional
	var onload : GMXMLHttpRequestResponse -> Dynamic; @:optional
	var onprogress : GMXMLHttpRequestProgressResponse -> Dynamic; };
	var url : String;
	@:optional
	var user : String;
};
typedef GMXMLHttpRequestResponse = {
	var readyState : Float;
	var responseHeaders : String;
	var responseText : String;
	var status : Float;
	var statusText : String;
	var context : Dynamic;
	var finalUrl : String;
};
typedef GMXMLHttpRequestProgressResponse = {
	>GMXMLHttpRequestResponse,
	var lengthComputable : Bool;
	var loaded : Float;
	var total : Float;
};
typedef GMXMLHttpRequestAsyncResult = {
	function abort():Void;
};
typedef GMXMLHttpRequestSyncResult = {
	function abort():Void;
	var finalUrl : String;
	var readyState : Float;
	var responseHeaders : String;
	var responseText : String;
	var status : Float;
	var statusText : String;
};
typedef GMXMLHttpRequestResult = {
	>GMXMLHttpRequestAsyncResult,
	>GMXMLHttpRequestSyncResult,
};
extern class GreasemonkeyTopLevel {
	static var unsafeWindow : Window;
	static var GM_info : { var script : { var description : String; var excludes : Array<String>; var includes : Array<String>; var matches : Array<String>; var name : String; var namespace : String; var resources : Dynamic; var run-at : String; var unwrap : Bool; var version : String; }; var scriptMetaStr : String; var scriptWillUpdate : Bool; var version : String; };
	static function GM_deleteValue(name:String):Void;
	static function GM_getValue(name:String, ?defaultValue:Dynamic):Dynamic;
	static function GM_getValue(name:String, ?defaultValue:String):String;
	static function GM_getValue(name:String, ?defaultValue:Float):Float;
	static function GM_getValue(name:String, ?defaultValue:Bool):Bool;
	static function GM_listValues():Array<String>;
	static function GM_setValue(name:String, value:String):Void;
	static function GM_setValue(name:String, value:Bool):Void;
	static function GM_setValue(name:String, value:Float):Void;
	static function GM_getResourceText(resourceName:String):String;
	static function GM_getResourceURL(resourceName:String):String;
	static function GM_addStyle(css:String):Void;
	static function GM_log(message:Dynamic):Void;
	static function GM_openInTab(url:String):Window;
	static function GM_registerMenuCommand(caption:String, commandFunc:haxe.Constraints.Function, ?accessKey:String):Void;
	static function GM_setClipboard(text:String):Void;
	static function GM_xmlhttpRequest(options:GMXMLHttpRequestOptions):GMXMLHttpRequestResult;
}
