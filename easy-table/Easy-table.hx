extern class EasyTable {
	function new():Void;
	function cell(label:String, value:Dynamic, ?printer:EasyTable.CellPrinter, ?width:Float):Void;
	function newRow():Void;
	function toString():String;
	function printTransposed():String;
	function print():String;
	@:overload(function(comparer:Dynamic -> Dynamic -> Float):Void { })
	function sort(fields:String):Void;
	function total(label:String, accumulator:EasyTable.Accumulator, totalPrinter:EasyTable.CellPrinter):Void;
}
