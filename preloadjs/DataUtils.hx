extern class DataUtilsTopLevel {
	static function parseJSON(value:String):Dynamic;
	static function parseXML(text:String, type:String):XMLDocument;
}
extern class ErrorEvent {
	function new(?title:String, ?message:String, ?data:Dynamic):Void;
	var data : Dynamic;
	var message : String;
	var title : String;
}
extern class ImageLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class JavaScriptLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class JSONLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class JSONPLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class LoadItem {
	var callback : String;
	var crossOrigin : Bool;
	var data : Dynamic;
	var headers : Dynamic;
	var id : String;
	var loadTimeout : Float;
	var maintainOrder : Bool;
	var method : String;
	var mimeType : String;
	var src : String;
	var type : String;
	var values : Dynamic;
	var withCredentials : Bool;
	static function create(value:haxe.extern.EitherType<LoadItem, haxe.extern.EitherType<String, Dynamic>>):haxe.extern.EitherType<Dynamic, LoadItem>;
	function set(props:Dynamic):LoadItem;
}
extern class LoadQueue extends AbstractLoader {
	function new(?preferXHR:Bool, ?basePath:String, ?crossOrigin:haxe.extern.EitherType<String, Bool>):Void;
	var maintainScriptOrder : Bool;
	var next : LoadQueue;
	var stopOnError : Bool;
	function close():Void;
	function getItems(loaded:Bool):Array<Dynamic>;
	function installPlugin(plugin:Void -> Dynamic):Void;
	function loadFile(file:haxe.extern.EitherType<Dynamic, String>, ?loadNow:Bool, ?basePath:String):Void;
	function loadManifest(manifest:haxe.extern.EitherType<Dynamic, haxe.extern.EitherType<String, Array<Dynamic>>>, ?loadNow:Bool, ?basePath:String):Void;
	function registerLoader(loader:AbstractLoader):Void;
	function remove(idsOrUrls:haxe.extern.EitherType<String, Array<Dynamic>>):Void;
	function removeAll():Void;
	function reset():Void;
	function setMaxConnections(value:Float):Void;
	function setPaused(value:Bool):Void;
	function setPreferXHR(value:Bool):Bool;
	function setUseXHR(value:Bool):Void;
	function unregisterLoader(loader:AbstractLoader):Void;
}
extern class ManifestLoader {
	function new(loadItem:haxe.extern.EitherType<LoadItem, Dynamic>):Void;
	static function canLoadItem(item:haxe.extern.EitherType<LoadItem, Dynamic>):Bool;
}
extern class MediaTagRequest {
	function new(loadItem:LoadItem, tag:haxe.extern.EitherType<HTMLAudioElement, HTMLVideoElement>, srcAttribute:String):Void;
}
extern class PreloadJS {
	static var buildDate : String;
	static var version : String;
}
extern class ProgressEvent {
	function new(loaded:Float, ?total:Float):Void;
	var loaded : Float;
	var progress : Float;
	var total : Float;
	function clone():ProgressEvent;
}
extern class RequestUtils {
	static var ABSOLUTE_PATH : js.RegExp;
	static var EXTENSION_PATT : js.RegExp;
	static var RELATIVE_PATH : js.RegExp;
	static function buildPath(src:String, ?data:Dynamic):String;
	static function formatQueryString(data:Dynamic, ?query:Array<Dynamic>):String;
	static function getTypeByExtension(extension:String):String;
	static function isAudioTag(item:Dynamic):Bool;
	static function isBinary(type:String):Bool;
	static function isCrossDomain(item:Dynamic):Bool;
	static function isImageTag(item:Dynamic):Bool;
	static function isLocal(item:Dynamic):Bool;
	static function isText(type:String):Bool;
	static function isVideoTag(item:Dynamic):Bool;
	static function parseURI(path:String):Dynamic;
}
extern class SoundLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class SpriteSheetLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class SVGLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class TagRequest {

}
extern class TextLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class VideoLoader {
	function new(loadItem:Dynamic, preferXHR:Bool):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
extern class XHRRequest extends AbstractLoader {
	function new(item:Dynamic):Void;
	function getAllResponseHeaders():String;
	function getResponseHeader(header:String):String;
}
extern class XMLLoader {
	function new(loadItem:Dynamic):Void;
	static function canLoadItem(item:Dynamic):Bool;
}
