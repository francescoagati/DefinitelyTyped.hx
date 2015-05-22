extern class Workbook extends Observable {
	function new(?options:WorkbookOptions):Void;
	var options : WorkbookOptions;
	function toDataURL():String;
	var sheets : Array<WorkbookSheet>;
}
typedef WorkbookSheetColumn = {
	@:optional
	var autoWidth : Bool;
	@:optional
	var width : Float;
};
typedef WorkbookSheetFilter = {
	@:optional
	var from : Float;
	@:optional
	var to : Float;
};
typedef WorkbookSheetFreezePane = {
	@:optional
	var colSplit : Float;
	@:optional
	var rowSplit : Float;
};
typedef WorkbookSheetRowCell = {
	@:optional
	var background : String;
	@:optional
	var bold : Bool;
	@:optional
	var color : String;
	@:optional
	var colSpan : Float;
	@:optional
	var fontName : String;
	@:optional
	var fontSize : Float;
	@:optional
	var format : String;
	@:optional
	var hAlign : String;
	@:optional
	var italic : Bool;
	@:optional
	var rowSpan : Float;
	@:optional
	var underline : Bool;
	@:optional
	var wrap : Bool;
	@:optional
	var vAlign : String;
	@:optional
	var value : Dynamic;
};
typedef WorkbookSheetRow = {
	@:optional
	var cells : Array<WorkbookSheetRowCell>;
};
typedef WorkbookSheet = {
	@:optional
	var columns : Array<WorkbookSheetColumn>;
	@:optional
	var freezePane : WorkbookSheetFreezePane;
	@:optional
	var filter : WorkbookSheetFilter;
	@:optional
	var rows : Array<WorkbookSheetRow>;
	@:optional
	var title : String;
};
typedef WorkbookOptions = {
	@:optional
	var name : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var sheets : Array<WorkbookSheet>;
};
typedef WorkbookEvent = {
	var sender : Workbook;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
