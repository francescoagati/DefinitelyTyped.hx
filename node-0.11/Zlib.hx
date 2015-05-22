typedef ZlibOptions = {
	@:optional
	var chunkSize : Float;
	@:optional
	var windowBits : Float;
	@:optional
	var level : Float;
	@:optional
	var memLevel : Float;
	@:optional
	var strategy : Float;
	@:optional
	var dictionary : Dynamic;
};
typedef Gzip = {
	>stream.Transform,
};
typedef Gunzip = {
	>stream.Transform,
};
typedef Deflate = {
	>stream.Transform,
};
typedef Inflate = {
	>stream.Transform,
};
typedef DeflateRaw = {
	>stream.Transform,
};
typedef InflateRaw = {
	>stream.Transform,
};
typedef Unzip = {
	>stream.Transform,
};
extern class ZlibTopLevel {
	static function createGzip(?options:ZlibOptions):Gzip;
	static function createGunzip(?options:ZlibOptions):Gunzip;
	static function createDeflate(?options:ZlibOptions):Deflate;
	static function createInflate(?options:ZlibOptions):Inflate;
	static function createDeflateRaw(?options:ZlibOptions):DeflateRaw;
	static function createInflateRaw(?options:ZlibOptions):InflateRaw;
	static function createUnzip(?options:ZlibOptions):Unzip;
	static function deflate(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function deflateRaw(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function gzip(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function gunzip(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function inflate(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function inflateRaw(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static function unzip(buf:Buffer, callback:Error -> Dynamic -> Void):Void;
	static var Z_NO_FLUSH : Float;
	static var Z_PARTIAL_FLUSH : Float;
	static var Z_SYNC_FLUSH : Float;
	static var Z_FULL_FLUSH : Float;
	static var Z_FINISH : Float;
	static var Z_BLOCK : Float;
	static var Z_TREES : Float;
	static var Z_OK : Float;
	static var Z_STREAM_END : Float;
	static var Z_NEED_DICT : Float;
	static var Z_ERRNO : Float;
	static var Z_STREAM_ERROR : Float;
	static var Z_DATA_ERROR : Float;
	static var Z_MEM_ERROR : Float;
	static var Z_BUF_ERROR : Float;
	static var Z_VERSION_ERROR : Float;
	static var Z_NO_COMPRESSION : Float;
	static var Z_BEST_SPEED : Float;
	static var Z_BEST_COMPRESSION : Float;
	static var Z_DEFAULT_COMPRESSION : Float;
	static var Z_FILTERED : Float;
	static var Z_HUFFMAN_ONLY : Float;
	static var Z_RLE : Float;
	static var Z_FIXED : Float;
	static var Z_DEFAULT_STRATEGY : Float;
	static var Z_BINARY : Float;
	static var Z_TEXT : Float;
	static var Z_ASCII : Float;
	static var Z_UNKNOWN : Float;
	static var Z_DEFLATED : Float;
	static var Z_NULL : Float;
}
