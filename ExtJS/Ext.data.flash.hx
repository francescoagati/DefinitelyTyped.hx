typedef IBinaryXhr = {
	>Ext.IBase,
	@:optional
	var readyState : Float;
	@:optional
	var responseBytes : Array<Dynamic>;
	@:optional
	var status : Float;
	@:optional
	var statusText : String;
	@:optional
	function abort():Void;
	@:optional
	function getAllResponseHeaders():Void;
	@:optional
	function getResponseHeader(?header:Dynamic):Void;
	@:optional
	function onreadystatechange():Void;
	@:optional
	function open(?method:Dynamic, ?url:Dynamic, ?async:Dynamic, ?user:Dynamic, ?password:Dynamic):Void;
	@:optional
	function overrideMimeType(?mimeType:Dynamic):Void;
	@:optional
	function send(?body:Array<Dynamic>):Void;
	@:optional
	function setRequestHeader(?header:Dynamic, ?value:Dynamic):Void;
};
