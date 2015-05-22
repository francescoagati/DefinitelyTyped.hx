typedef IObj = {
	var name : String;
	var options : IObjOptions;
	var singular : String;
	var plural : String;
	var fields : Array<IField>;
};
typedef IField = {
	var name : String;
	var options : IFieldOptions;
	var src : String;
	var singular : String;
	var plural : String;
	@:optional
	var desc : String;
	@:optional
	var val : IChain;
	var attribute : Bool;
	var enumerated : Bool;
	var ignorePublic : Bool;
	var filterFrom : Array<String>;
	var coerceTo : Dynamic;
};
typedef IObjOptions = {
	@:optional
	var singular : String;
	@:optional
	var plural : String;
	@:optional
	var fields : Array<IField>;
};
typedef IFieldOptions = {
	@:optional
	var src : String;
	@:optional
	var singular : String;
	@:optional
	var plural : String;
	@:optional
	var desc : String;
	@:optional
	var val : IChain;
	@:optional
	var attribute : Bool;
	@:optional
	var enumerated : Dynamic;
	@:optional
	var ignorePublic : Bool;
	@:optional
	var filterFrom : Array<String>;
	@:optional
	var coerceTo : String;
};
extern class StructTopLevel {
	static function Obj(name:String, ?options:IObjOptions):IObj;
	static function Field(name:String, ?options:IFieldOptions):IField;
	static function coerce(value:Dynamic, coerceTo:String):Dynamic;
}
@:enum abstract SERIALIZATION(Int) {
	var SERIALIZATION_JSON = 0;
	var SERIALIZATION_XML = 1;
}
