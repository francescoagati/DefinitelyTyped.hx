extern class SimpleRenderer extends Renderer {
	var description : String;
	var label : String;
	var symbol : Symbol;
	@:overload(function(json:Dynamic):Void { })
	function new(symbol:Symbol):Void;
}
