extern class EmbedCodeConfiguration extends ClientValueObject {
	function get_autoPlay():Bool;
	function set_autoPlay(value:Bool):Bool;
	function get_displayTitle():Bool;
	function set_displayTitle(value:Bool):Bool;
	function get_linkToOwnerProfilePage():Bool;
	function set_linkToOwnerProfilePage(value:Bool):Bool;
	function get_linkToVideoHomePage():Bool;
	function set_linkToVideoHomePage(value:Bool):Bool;
	function get_loop():Bool;
	function set_loop(value:Bool):Bool;
	function get_pixelHeight():Float;
	function set_pixelHeight(value:Float):Float;
	function get_pixelWidth():Float;
	function set_pixelWidth(value:Float):Float;
	function get_startTime():Float;
	function set_startTime(value:Float):Float;
	function get_previewImagePath():String;
	function set_previewImagePath(value:String):String;
}
extern class VideoSet extends DocumentSet.DocumentSet {
	static function createVideo(context:ClientContext, parentFolder:Folder, name:String, ctid:ContentTypeId):StringResult;
	static function uploadVideo(context:ClientContext, list:List, fileName:String, file:Array<Dynamic>, overwriteIfExists:Bool, parentFolderPath:String):StringResult;
	static function getEmbedCode(context:ClientContext, videoPath:String, properties:EmbedCodeConfiguration):StringResult;
	static function migrateVideo(context:ClientContext, videoFile:File):SP.ListItem;
}
