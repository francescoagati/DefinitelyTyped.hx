typedef UnionType = {
	>ref.Type,
	@:overload(function(?data:{ }):Dynamic { })
	function new(arg:Buffer, ?data:{ }):Dynamic;
	var fields : { };
	@:overload(function(name:String, type:String):Void { })
	function defineProperty(name:String, type:ref.Type):Void;
	function toString():String;
};
extern class Ref-unionTopLevel {
	static var UnionType : { @:overload(function(?fields:Array<Dynamic>):UnionType { })
	function new(?fields:{ }):UnionType; };
}
extern class Ref-unionTopLevel {
	static var UnionType : { @:overload(function(?fields:Array<Dynamic>):UnionType { })
	function new(?fields:{ }):UnionType; };
}
