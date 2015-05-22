extern class UniqueValueRenderer extends Renderer {
	var attributeField : String;
	var attributeField2 : String;
	var attributeField3 : String;
	var defaultLabel : String;
	var defaultSymbol : Symbol;
	var fieldDelimiter : String;
	var infos : Array<Dynamic>;
	var values : Array<String>;
	@:overload(function(defaultSymbol:Symbol, attributeField:haxe.Constraints.Function, ?attributeField2:String, ?attributeField3:String, ?fieldDelimeter:String):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new(defaultSymbol:Symbol, attributeField:String, ?attributeField2:String, ?attributeField3:String, ?fieldDelimeter:String):Void;
	@:overload(function(valueOrInfo:Dynamic, ?symbol:Symbol):Void { })
	function addValue(valueOrInfo:String, ?symbol:Symbol):Void;
	function getUniqueValueInfo(graphic:Graphic):Dynamic;
	function removeValue(value:String):Void;
}
