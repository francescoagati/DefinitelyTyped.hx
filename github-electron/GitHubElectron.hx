extern class NativeImage {
	static function createEmpty():NativeImage;
	static function createFromPath(path:String):NativeImage;
	static function createFromBuffer(buffer:Buffer, ?scaleFactor:Float):NativeImage;
	static function createFromDataUrl(dataUrl:String):NativeImage;
	function toPng():Buffer;
	function toJpeg(quality:Float):Buffer;
	function toDataUrl():String;
	function isEmpty():Bool;
	function getSize():Dynamic;
	function setTemplateImage(option:Bool):Void;
}
