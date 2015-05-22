typedef UUIDOptions = {
	@:optional
	var node : Array<Dynamic>;
	@:optional
	var clockseq : Float;
	@:optional
	var msecs : Dynamic;
	@:optional
	var nsecs : Float;
};
typedef UUID = {
	@:overload(function(?options:UUIDOptions, ?buffer:Array<Float>, ?offset:Float):Array<Float> { })
	@:overload(function(?options:UUIDOptions, ?buffer:Buffer, ?offset:Float):Buffer { })
	function v1(?options:UUIDOptions):String;
	@:overload(function(?options:UUIDOptions, ?buffer:Array<Float>, ?offset:Float):Array<Float> { })
	@:overload(function(?options:UUIDOptions, ?buffer:Buffer, ?offset:Float):Buffer { })
	function v2(?options:UUIDOptions):String;
	@:overload(function(?options:UUIDOptions, ?buffer:Array<Float>, ?offset:Float):Array<Float> { })
	@:overload(function(?options:UUIDOptions, ?buffer:Buffer, ?offset:Float):Buffer { })
	function v3(?options:UUIDOptions):String;
	@:overload(function(?options:UUIDOptions, ?buffer:Array<Float>, ?offset:Float):Array<Float> { })
	@:overload(function(?options:UUIDOptions, ?buffer:Buffer, ?offset:Float):Buffer { })
	function v4(?options:UUIDOptions):String;
	@:overload(function(id:String, ?buffer:Buffer, ?offset:Float):Buffer { })
	function parse(id:String, ?buffer:Array<Float>, ?offset:Float):Array<Float>;
	@:overload(function(buffer:Buffer, ?offset:Float):String { })
	function unparse(buffer:Array<Float>, ?offset:Float):String;
};
extern class Node-uuidTopLevel {
	static var uuid : UUID;
}
extern class Node-uuidTopLevel {
	static var uuid : UUID;
}
