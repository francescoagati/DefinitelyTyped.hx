typedef SwfObject = {
	var ua : { var w3 : Bool; var pv : Array<Float>; var wk : Dynamic; var ie : Bool; var win : Bool; var mac : Bool; };
	function registerObject(objectIdStr:String, swfVersionStr:String, ?xiSwfUrlStr:String, ?callbackFn:ICallbackObj -> Void):Void;
	function getObjectById(objectIdStr:String):HTMLElement;
	function embedSWF(swfUrlStr:String, replaceElemIdStr:String, widthStr:String, heightStr:String, swfVersionStr:String, ?xiSwfUrlStr:String, ?flashvarsObj:Dynamic, ?parObj:Dynamic, ?attObj:Dynamic, ?callbackFn:ICallbackObj -> Void):Void;
	function switchOffAutoHideShow():Void;
	function getFlashPlayerVersion():IFlashPlayerVersion;
	function hasFlashPlayerVersion(rv:String):Bool;
	function createSWF(attObj:ISwfObjectAttribute, parObj:ISwfObjectParameter, replaceElemIdStr:String):HTMLElement;
	function showExpressInstall(att:ISwfObjectAttribute, par:ISwfObjectParameter, replaceElemIdStr:String, ?callbackFn:ICallbackObj -> Void):Void;
	function removeSWF(objElemIdStr:String):Void;
	function createCSS(selStr:String, declStr:String, ?mediaStr:String, ?newStyleBoolean:Bool):Void;
	function addDomLoadEvent(fn:Void -> Void):Void;
	function addLoadEvent(fn:?Event -> Void):Void;
	function getQueryParamValue(?param:String):String;
};
typedef IFlashPlayerVersion = {
	var major : Float;
	var minor : Float;
	var release : Float;
};
typedef ISwfObjectAttribute = {
	@:optional
	var id : String;
	@:optional
	var width : String;
	@:optional
	var height : String;
};
typedef ISwfObjectParameter = {
	@:optional
	var flashvars : String;
};
typedef ICallbackObj = {
	var success : Bool;
	var id : String;
	@:optional
	var ref : HTMLElement;
};
extern class SwfobjectTopLevel {
	static var swfobject : swfobject.SwfObject;
}
extern class SwfobjectTopLevel {
	static var swfobject : swfobject.SwfObject;
}
