typedef MsgPackStatic = {
	function pack(data:Dynamic, ?toString:Bool):Dynamic;
	function unpack(data:Dynamic):Dynamic;
	var worker : String;
	function upload(url:String, option:MsgPackUploadOption, callback:MsgPackUploadCallback):Void;
	function download(url:String, option:MsgPackDownloadOption, callback:MsgPackDownloadCallback):Void;
};
typedef MsgPackUploadOption = {
	var data : Dynamic;
	@:optional
	var worker : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var before : XMLHttpRequest -> MsgPackUploadOption -> Void;
	@:optional
	var after : XMLHttpRequest -> MsgPackUploadOption -> MsgPackCallbackResult -> Void;
};
typedef MsgPackUploadCallback = { };
typedef MsgPackDownloadOption = {
	@:optional
	var worker : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var before : XMLHttpRequest -> MsgPackDownloadOption -> Void;
	@:optional
	var after : XMLHttpRequest -> MsgPackDownloadOption -> MsgPackCallbackResult -> Void;
};
typedef MsgPackDownloadCallback = { };
typedef MsgPackCallbackResult = {
	var status : Float;
	var ok : Bool;
};
extern class MsgpackTopLevel {
	static var msgpack : MsgPackStatic;
}
