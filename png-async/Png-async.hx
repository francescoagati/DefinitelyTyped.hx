typedef IImageOptions = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var fill : Bool;
	@:optional
	var checkCRC : Bool;
	@:optional
	var deflateChunkSize : Float;
	@:optional
	var deflateLevel : Float;
	@:optional
	var deflateStrategy : EDeflateStrategy;
	@:optional
	var filterType : EFilterType;
};
@:enum abstract EDeflateStrategy(Int) {
	var DEFAULT_STRATEGY = 0;
	var FILTERED = 1;
	var HUFFMAN_ONLY = 2;
	var RLE = 3;
	var FIXED = 4;
}
@:enum abstract EFilterType(Int) {
	var Auto = -1;
	var None = 0;
	var Sub = 1;
	var Up = 2;
	var Average = 3;
	var Paeth = 4;
}
extern class Image extends stream.Duplex {
	var width : Float;
	var height : Float;
	var gamma : Float;
	var data : Buffer;
	function new(?option:IImageOptions):Void;
	function pack():Image;
	function parse(data:Buffer, ?callback:Error -> Image -> Void):Image;
	function write(data:Dynamic, ?cb:Dynamic):Bool;
	function end(?data:Dynamic):Void;
	function bitblt(dst:Image, sx:Float, sy:Float, w:Float, h:Float, dx:Float, dy:Float):Image;
	function on(event:String, listener:haxe.Constraints.Function):Image;
	function once(event:String, listener:haxe.Constraints.Function):Image;
	function removeListener(event:String, listener:haxe.Constraints.Function):Image;
	function removeAllListeners(event:String):Image;
}
extern class Png-asyncTopLevel {
	static function createImage(?option:IImageOptions):Image;
}
extern class Png-asyncTopLevel {
	static function createImage(?option:IImageOptions):Image;
}
