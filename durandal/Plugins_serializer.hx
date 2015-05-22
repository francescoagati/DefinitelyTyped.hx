typedef SerializerOptions = {
	@:optional
	var replacer : String -> Dynamic -> Dynamic;
	var space : Dynamic;
};
typedef DeserializerOptions = {
	var getTypeId : Dynamic -> String;
	var getConstructor : String -> Void -> Dynamic;
	var reviver : String -> Dynamic -> Dynamic;
};
extern class Plugins_serializerTopLevel {
	static var typeAttribute : String;
	static var space : Dynamic;
	static function replacer(key:String, value:Dynamic):Dynamic;
	static function serialize(object:Dynamic, ?settings:String):Dynamic;
	static function serialize(object:Dynamic, ?settings:Float):Dynamic;
	static function serialize(object:Dynamic, ?settings:SerializerOptions):Dynamic;
	static function getTypeId(object:Dynamic):String;
	static var typeMap : Dynamic;
	static function registerType(typeId:String, constructor:Void -> Dynamic):Dynamic;
	static function reviver(key:String, value:Dynamic, getTypeId:Dynamic -> String, getConstructor:Dynamic -> Void -> Dynamic):Dynamic;
	static function deserialize<T>(text:String, ?settings:DeserializerOptions):T;
	static function clone<T>(obj:T, ?settings:Dynamic):T;
}
