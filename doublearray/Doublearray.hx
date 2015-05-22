typedef KeyValue = {
	var k : String;
	var v : Float;
};
typedef BaseAndCheck = {
	function getBaseBuffer():Dynamic;
	function getCheckBuffer():Dynamic;
	@:overload(function(base_buffer:Int16Array):BaseAndCheck { })
	@:overload(function(base_buffer:Int32Array):BaseAndCheck { })
	@:overload(function(base_buffer:Uint8Array):BaseAndCheck { })
	@:overload(function(base_buffer:Uint16Array):BaseAndCheck { })
	@:overload(function(base_buffer:Uint32Array):BaseAndCheck { })
	function loadBaseBuffer(base_buffer:Int8Array):BaseAndCheck;
	@:overload(function(check_buffer:Int16Array):BaseAndCheck { })
	@:overload(function(check_buffer:Int32Array):BaseAndCheck { })
	@:overload(function(check_buffer:Uint8Array):BaseAndCheck { })
	@:overload(function(check_buffer:Uint16Array):BaseAndCheck { })
	@:overload(function(check_buffer:Uint32Array):BaseAndCheck { })
	function loadCheckBuffer(check_buffer:Int8Array):BaseAndCheck;
	function size():Float;
	function getBase():Float;
	function getCheck():Float;
	function setBase(index:Float, base_value:Float):Void;
	function setCheck(index:Float, check_value:Float):Void;
	function setFirstUnusedNode(index:Float):Void;
	function getFirstUnusedNode():Float;
	function shrink():Void;
	function calc():{ var all : Float; var unused : Float; var efficiency : Float; };
	function dump():String;
};
typedef DoubleArrayBuilder = {
	var bc : BaseAndCheck;
	var keys : Array<KeyValue>;
	function append(key:String, record:Float):DoubleArrayBuilder;
	function build(?keys:Array<KeyValue>, ?sorted:Bool):DoubleArray;
	function getChildrenInfo(position:Float, start:Float, length:Float):Int32Array;
	function setBC(parent_id:Float, children_info:Int32Array, _base:Float):Void;
	function findAllocatableBase(children_info:Int32Array):Float;
	function isUnusedNode(index:Float):Bool;
};
typedef DoubleArray = {
	var bc : BaseAndCheck;
	function contain(key:String):Bool;
	function lookup(key:String):Float;
	function commonPrefixSearch(key:String):KeyValue;
	function traverse(parent:Float, code:Float):Float;
	function size():Float;
	function calc():{ var all : Float; var unused : Float; var efficiency : Float; };
	function dump():String;
};
extern class DoublearrayTopLevel {
	static function builder(?initial_size:Float):DoubleArrayBuilder;
	static function load(base_buffer:Int8Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint32Array):DoubleArray;
}
extern class DoublearrayTopLevel {
	static function builder(?initial_size:Float):DoubleArrayBuilder;
	static function load(base_buffer:Int8Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int8Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int16Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Int32Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint8Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint16Array, check_buffer:Uint32Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int8Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int16Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Int32Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint8Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint16Array):DoubleArray;
	static function load(base_buffer:Uint32Array, check_buffer:Uint32Array):DoubleArray;
}
