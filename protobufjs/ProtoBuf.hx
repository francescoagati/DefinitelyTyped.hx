typedef IBuilder = {
	var build : Void -> T;
};
typedef IProtoBufMessage = {
	function toArrayBuffer():ArrayBuffer;
	function toBuffer():Buffer;
};
extern class ProtoBufTopLevel {
	static function loadProtoFile(filePath:String, callback:IBuilder -> Void):Dynamic;
}
