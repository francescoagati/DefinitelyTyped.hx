typedef StructType = {
	>ref.Type,
	@:overload(function(?data:{ }):Dynamic { })
	function new(arg:Buffer, ?data:{ }):Dynamic;
	var fields : { };
	@:overload(function(name:String, type:String):Void { })
	function defineProperty(name:String, type:ref.Type):Void;
	function toString():String;
};
extern class Ref-structTopLevel {
	static var StructType : { @:overload(function(?fields:Array<Dynamic>):StructType { })
	function new(?fields:{ }):StructType; };
}
extern class Ref-structTopLevel {
	static var StructType : { @:overload(function(?fields:Array<Dynamic>):StructType { })
	function new(?fields:{ }):StructType; };
}
