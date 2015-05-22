typedef Trunk8Options = {
	@:optional
	var fill : String;
	@:optional
	var lines : Float;
	@:optional
	var side : String;
	@:optional
	var tooltip : Bool;
	@:optional
	var width : String;
};
typedef JQuery = {
	@:overload(function(?options:Trunk8Options):Dynamic { })
	function trunk8(method:String, ?value:String):Dynamic;
};
