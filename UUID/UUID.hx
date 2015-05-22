typedef UUIDStatic = {
	function generate():String;
	function genV4():UUID;
	function genV1():UUID;
	function parse(uuid:String):UUID;
	function resetState():Void;
	function makeBackwardCompatible():Void;
};
typedef UUIDArray<T> = {
	>Array<T>,
	var timeLow : String;
	var timeMid : String;
	var timeHiAndVersion : String;
	var clockSeqHiAndReserved : String;
	var clockSeqLow : String;
	var node : String;
};
typedef UUID = {
	var intFields : UUIDArray<Float>;
	var bitFields : UUIDArray<String>;
	var hexFields : UUIDArray<String>;
	var version : Float;
	var bitString : String;
	var hexString : String;
	var urn : String;
	function equals(uuid:UUID):Bool;
	function toString():String;
};
extern class UUIDTopLevel {
	static var UUID : UUID.UUIDStatic;
}
