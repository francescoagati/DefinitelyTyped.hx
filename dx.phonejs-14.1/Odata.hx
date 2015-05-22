extern class OdataTopLevel {
	static function sendRequest(request:JQueryXHR, ?requestOptions:JQueryAjaxSettings):Dynamic;
	static function serializePropName(propName:EdmLiteral):String;
	static function serializePropName(propName:String):String;
	static function serializeValue(value:Date):String;
	static function serializeValue(value:Guid):String;
	static function serializeValue(value:String):String;
	static function serializeValue(value:String):String;
	static function serializeValue(value:EdmLiteral):String;
	static function serializeKey(key:Dynamic):String;
	static function serializeKey(key:Date):String;
	static function serializeKey(key:Guid):String;
	static function serializeKey(key:String):String;
	static function serializeKey(key:String):String;
	static function serializeKey(key:EdmLiteral):String;
	static var keyConverters : { function String(value:Dynamic):String; function Guid(value:Dynamic):Guid; function Int32(value:Dynamic):Float; function Int64(value:Dynamic):EdmLiteral; };
}
