typedef ArrayType<T> = {
	>ref.Type,
	var BYTES_PER_ELEMENT : Float;
	var fixedLength : Float;
	var type : ref.Type;
	function untilZeros(buffer:Buffer):{ var length : Float; function toArray():Array<T>; function toJSON():Array<T>; function inspect():String; var buffer : Buffer; function ref():Buffer; };
	@:overload(function(data:Array<Float>, ?length:Float):{ var length : Float; function toArray():Array<T>; function toJSON():Array<T>; function inspect():String; var buffer : Buffer; function ref():Buffer; } { })
	@:overload(function(data:Buffer, ?length:Float):{ var length : Float; function toArray():Array<T>; function toJSON():Array<T>; function inspect():String; var buffer : Buffer; function ref():Buffer; } { })
	function new(?length:Float):{ var length : Float; function toArray():Array<T>; function toJSON():Array<T>; function inspect():String; var buffer : Buffer; function ref():Buffer; };
};
extern class Ref-arrayTopLevel {
	static var ArrayType : { @:overload(function<T>(type:String, ?length:Float):ArrayType<T> { })
	function new<T>(type:ref.Type, ?length:Float):ArrayType<T>; };
}
extern class Ref-arrayTopLevel {
	static var ArrayType : { @:overload(function<T>(type:String, ?length:Float):ArrayType<T> { })
	function new<T>(type:ref.Type, ?length:Float):ArrayType<T>; };
}
