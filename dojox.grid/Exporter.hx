extern class _ExportWriter {
	function new(?writerArgs:Dynamic):Void;
	var argObj : Dynamic;
	function afterContent():Dynamic;
	function afterContentRow(argObj:Dynamic):Dynamic;
	function afterHeader():Dynamic;
	function afterSubrow(argObj:Dynamic):Dynamic;
	function afterView(argObj:Dynamic):Dynamic;
	function beforeContent(items:Array<Dynamic>):Dynamic;
	function beforeContentRow(argObj:Dynamic):Dynamic;
	function beforeHeader(grid:dojox.grid.EnhancedGrid):Dynamic;
	function beforeSubrow(argObj:Dynamic):Dynamic;
	function beforeView(argObj:Dynamic):Dynamic;
	function handleCell(argObj:Dynamic):Dynamic;
	function toString():Dynamic;
}
extern class CSVWriter extends dojox.grid.enhanced.plugins.exporter._ExportWriter {
	function new(?writerArgs:Dynamic):Void;
	var argObj : Dynamic;
	function afterContent():Dynamic;
	function afterContentRow(argObj:Dynamic):Dynamic;
	function afterHeader():Dynamic;
	function afterSubrow(argObj:Dynamic):Dynamic;
	function afterView(argObj:Dynamic):Dynamic;
	function beforeContent(items:Array<Dynamic>):Dynamic;
	function beforeContentRow(arg_obj:Dynamic):Bool;
	function beforeHeader(grid:dojox.grid.EnhancedGrid):Dynamic;
	function beforeSubrow(argObj:Dynamic):Dynamic;
	function beforeView(argObj:Dynamic):Dynamic;
	function handleCell(arg_obj:Dynamic):Void;
	function toString():Float;
}
extern class TableWriter extends dojox.grid.enhanced.plugins.exporter._ExportWriter {
	function new(?writerArgs:Dynamic):Void;
	var argObj : Dynamic;
	function afterContent():Void;
	function afterContentRow(argObj:Dynamic):Dynamic;
	function afterHeader():Dynamic;
	function afterSubrow(arg_obj:Dynamic):Void;
	function afterView(arg_obj:Dynamic):Void;
	function beforeContent(items:Array<Dynamic>):Dynamic;
	function beforeContentRow(argObj:Dynamic):Dynamic;
	function beforeHeader(grid:dojox.grid.EnhancedGrid):Dynamic;
	function beforeSubrow(arg_obj:Dynamic):Bool;
	function beforeView(arg_obj:Dynamic):Bool;
	function handleCell(arg_obj:Dynamic):Void;
	function toString():Dynamic;
}
