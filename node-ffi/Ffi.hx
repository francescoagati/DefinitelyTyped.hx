typedef Function = {
	>ref.Type,
	var retType : ref.Type;
	var argTypes : Array<ref.Type>;
	var ffi_type : Buffer;
	var abi : Float;
	function toPointer(fn:haxe.extern.Rest<Dynamic> -> Dynamic):Buffer;
	function toFunction(buf:Buffer):ForeignFunction;
};
typedef ForeignFunction = {
	function async(args:haxe.extern.Rest<Dynamic>):Void;
};
typedef VariadicForeignFunction = {
	var returnType : Dynamic;
};
typedef DynamicLibrary = {
	function close():Float;
	function get(symbol:String):Buffer;
	function error():String;
};
extern class FfiTopLevel {
	static var Library : { var EXT : String; function new(libFile:String, ?funcs:{ }, ?lib:Dynamic):Dynamic; };
	static function errno():Float;
	static var Function : { @:overload(function(retType:String, argTypes:Array<Dynamic>, ?abi:Float):haxe.Constraints.Function { })
	function new(retType:ref.Type, argTypes:Array<Dynamic>, ?abi:Float):haxe.Constraints.Function; };
	static var ForeignFunction : { @:overload(function(ptr:Buffer, retType:String, argTypes:Array<Dynamic>, ?abi:Float):ForeignFunction { })
	function new(ptr:Buffer, retType:ref.Type, argTypes:Array<Dynamic>, ?abi:Float):ForeignFunction; };
	static var VariadicForeignFunction : { @:overload(function(ptr:Buffer, ret:String, fixedArgs:Array<Dynamic>, ?abi:Float):VariadicForeignFunction { })
	function new(ptr:Buffer, ret:ref.Type, fixedArgs:Array<Dynamic>, ?abi:Float):VariadicForeignFunction; };
	static var DynamicLibrary : { var FLAGS : { var RTLD_LAZY : Float; var RTLD_NOW : Float; var RTLD_LOCAL : Float; var RTLD_GLOBAL : Float; var RTLD_NOLOAD : Float; var RTLD_NODELETE : Float; var RTLD_NEXT : Buffer; var RTLD_DEFAUL : Buffer; }; function new(?path:String, ?mode:Float):DynamicLibrary; };
	static var Callback : { @:overload(function(retType:Dynamic, argTypes:Array<Dynamic>, fn:Dynamic):Buffer { })
	function new(retType:Dynamic, argTypes:Array<Dynamic>, abi:Float, fn:Dynamic):Buffer; };
	static var ffiType : { var FFI_TYPE : StructType; };
	static var CIF : Dynamic -> Array<Dynamic> -> ?Dynamic -> Buffer;
	static var CIF_var : Dynamic -> Array<Dynamic> -> Float -> ?Dynamic -> Buffer;
	static var HAS_OBJC : Bool;
	static var FFI_TYPES : { };
	static var FFI_OK : Float;
	static var FFI_BAD_TYPEDEF : Float;
	static var FFI_BAD_ABI : Float;
	static var FFI_DEFAULT_ABI : Float;
	static var FFI_FIRST_ABI : Float;
	static var FFI_LAST_ABI : Float;
	static var FFI_SYSV : Float;
	static var FFI_UNIX64 : Float;
	static var RTLD_LAZY : Float;
	static var RTLD_NOW : Float;
	static var RTLD_LOCAL : Float;
	static var RTLD_GLOBAL : Float;
	static var RTLD_NOLOAD : Float;
	static var RTLD_NODELETE : Float;
	static var RTLD_NEXT : Buffer;
	static var RTLD_DEFAULT : Buffer;
	static var LIB_EXT : String;
	static var FFI_TYPE : StructType;
	static var types : { var void : ref.Type; var int64 : ref.Type; var ushort : ref.Type; var int : ref.Type; var uint64 : ref.Type; var float : ref.Type; var uint : ref.Type; var long : ref.Type; var double : ref.Type; var int8 : ref.Type; var ulong : ref.Type; var Object : ref.Type; var uint8 : ref.Type; var longlong : ref.Type; var CString : ref.Type; var int16 : ref.Type; var ulonglong : ref.Type; var bool : ref.Type; var uint16 : ref.Type; var char : ref.Type; var byte : ref.Type; var int32 : ref.Type; var uchar : ref.Type; var size_t : ref.Type; var uint32 : ref.Type; var short : ref.Type; };
}
