typedef CustomTypeStatic = {
	function new():CustomType;
};
typedef CustomType = {
	function clone():EJSON.CustomType;
	function equals(other:Dynamic):Bool;
	function toJSONValue():JSON;
	function typeName():String;
};
extern class EJSONTopLevel {
	static var CustomType : CustomTypeStatic;
	static function addType(name:String, factory:EJSONable -> JSONable):Void;
	static function clone<T>(val:T):T;
	static function equals(a:EJSON, b:EJSON, ?options:{ @:optional
	var keyOrderSensitive : Bool; }):Bool;
	static function fromJSONValue(val:JSON):Dynamic;
	static function isBinary(x:Dynamic):Bool;
	static var newBinary : Dynamic;
	static function parse(str:String):EJSON;
	static function stringify(val:EJSON, ?options:{ @:optional
	var indent : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Float, String>>; @:optional
	var canonical : Bool; }):String;
	static function toJSONValue(val:EJSON):JSON;
}
