typedef CellPosition = {
	var row : Float;
	var col : Float;
};
typedef Options = {
	@:optional
	var data : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var minRows : Float;
	@:optional
	var minCols : Float;
	@:optional
	var maxRows : Float;
	@:optional
	var maxCols : Float;
	@:optional
	var startRows : Float;
	@:optional
	var startCols : Float;
	@:optional
	var rowHeaders : Dynamic;
	@:optional
	var colHeaders : Dynamic;
	@:optional
	var colWidths : Dynamic;
	@:optional
	var columns : Array<Dynamic>;
	@:optional
	var cells : Float -> Float -> String -> Void;
	@:optional
	var dataSchema : Dynamic;
	@:optional
	var minSpareRows : Float;
	@:optional
	var minSpareCols : Float;
	@:optional
	var multiSelect : Bool;
	@:optional
	var fillHandle : Dynamic;
	@:optional
	var contextMenu : Dynamic;
	@:optional
	var undo : Bool;
	@:optional
	var outsideClickDeselects : Bool;
	@:optional
	var enterBeginsEditing : Bool;
	@:optional
	var enterMoves : Dynamic;
	@:optional
	var tabMoves : Dynamic;
	@:optional
	var autoWrapRow : Bool;
	@:optional
	var autoWrapCol : Bool;
	@:optional
	var autoComplete : Array<Dynamic>;
	@:optional
	var copyRowsLimit : Float;
	@:optional
	var copyColsLimit : Float;
	@:optional
	var pasteMode : String;
	@:optional
	var stretchH : String;
	@:optional
	var isEmptyRow : Float -> Bool;
	@:optional
	var isEmptyCol : Float -> Bool;
	@:optional
	var manualColumnResize : Dynamic;
	@:optional
	var manualColumnMove : Dynamic;
	@:optional
	var columnSorting : Bool;
	@:optional
	var persistentState : Bool;
	@:optional
	var currentRowClassName : String;
	@:optional
	var currentColClassName : String;
	@:optional
	var fixedRowsTop : Float;
	@:optional
	var fixedColumnsLeft : Float;
	@:optional
	var fragmentSelection : Bool;
	@:optional
	var wordWrap : Bool;
	@:optional
	var noWordWrapClassName : String;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var placeholderCellClassName : String;
	@:optional
	var invalidCellClassName : String;
	@:optional
	var readOnlyCellClassName : String;
	@:optional
	var debug : Bool;
	@:optional
	var observeDOMVisibility : Bool;
	@:optional
	var autoColumnSize : Bool;
	@:optional
	var observeChanges : Bool;
	@:optional
	var manualRowResize : Bool;
	@:optional
	var copyPaste : Bool;
	@:optional
	var search : Bool;
	@:optional
	var mergeCells : Dynamic;
	@:optional
	var beforeInitWalkontable : haxe.Constraints.Function;
	@:optional
	var beforeInit : haxe.Constraints.Function;
	@:optional
	var beforeRender : Bool -> Void;
	@:optional
	var beforeChange : Array<Array<Dynamic>> -> String -> Void;
	@:optional
	var beforeChangeRender : haxe.Constraints.Function;
	@:optional
	var beforeColumnSort : Float -> Bool -> Void;
	@:optional
	var beforeSet : Dynamic -> Void;
	@:optional
	var beforeGetCellMeta : Float -> Float -> Dynamic -> Void;
	@:optional
	var beforeAutofill : CellPosition -> CellPosition -> Array<Array<String>> -> Void;
	@:optional
	var beforeKeyDown : KeyboardEvent -> Void;
	@:optional
	var beforeValidate : Dynamic -> Float -> String -> String -> Void;
	@:optional
	var afterInit : haxe.Constraints.Function;
	@:optional
	var afterLoadData : haxe.Constraints.Function;
	@:optional
	var afterRender : Bool -> Void;
	@:optional
	var afterChange : Array<Dynamic> -> String -> Void;
	@:optional
	var afterColumnSort : Float -> Bool -> Void;
	@:optional
	var afterSelection : Float -> Float -> Float -> Float -> Void;
	@:optional
	var afterSelectionByProp : Float -> String -> Float -> String -> Void;
	@:optional
	var afterSelectionEnd : Float -> Float -> Float -> Float -> Void;
	@:optional
	var afterSelectionEndByProp : Float -> String -> Float -> String -> Void;
	@:optional
	var afterDeselect : haxe.Constraints.Function;
	@:optional
	var afterGetCellMeta : Float -> Float -> Dynamic -> Void;
	@:optional
	var afterGetColHeader : Float -> HTMLTableHeaderCellElement -> Void;
	@:optional
	var afterGetColWidth : Float -> Dynamic -> Void;
	@:optional
	var afterDestroy : haxe.Constraints.Function;
	@:optional
	var afterCreateRow : Float -> Float -> Void;
	@:optional
	var afterCreateCol : Float -> Float -> Void;
	@:optional
	var beforeRemoveRow : Float -> Float -> Void;
	@:optional
	var afterRemoveRow : Float -> Float -> Void;
	@:optional
	var beforeRemoveCol : Float -> Float -> Void;
	@:optional
	var afterRemoveCol : Float -> Float -> Void;
	@:optional
	var afterColumnResize : Float -> Float -> Void;
	@:optional
	var afterColumnMove : Float -> Float -> Void;
	@:optional
	var afterCopyLimit : Float -> Float -> Float -> Float -> Void;
	@:optional
	var afterValidate : Bool -> Dynamic -> Float -> String -> String -> Bool;
	@:optional
	var beforeSetRangeEnd : Array<Dynamic> -> Void;
	@:optional
	var afterUpdateSettings : haxe.Constraints.Function;
	@:optional
	var afterRenderer : HTMLTableDataCellElement -> Float -> Float -> String -> String -> Dynamic -> Void;
	@:optional
	var afterOnCellMouseDown : MouseEvent -> CellPosition -> HTMLTableDataCellElement -> Void;
	@:optional
	var afterOnCellMouseOver : MouseEvent -> CellPosition -> HTMLTableDataCellElement -> Void;
	@:optional
	var afterOnCellCornerMouseDown : MouseEvent -> Void;
	@:optional
	var afterScrollVertically : haxe.Constraints.Function;
	@:optional
	var afterScrollHorizontally : haxe.Constraints.Function;
	@:optional
	var afterCellMetaReset : haxe.Constraints.Function;
	@:optional
	var modifyColWidth : Float -> Float -> Void;
	@:optional
	var modifyRowHeight : Float -> Float -> Void;
	@:optional
	var modifyRow : Float -> Void;
	@:optional
	var modifyCol : Float -> Void;
	@:optional
	var afterSetCellMeta : haxe.Constraints.Function;
	@:optional
	var onSelection : Float -> Float -> Float -> Float -> Void;
	@:optional
	var onSelectionByProp : Float -> Float -> Float -> Float -> Void;
	@:optional
	var onSelectionEnd : Float -> Float -> Float -> Float -> Void;
	@:optional
	var onSelectionEndByProp : Float -> Float -> Float -> Float -> Void;
	@:optional
	var onBeforeChange : Array<Dynamic> -> String -> Void;
	@:optional
	var onChange : Array<Dynamic> -> String -> Void;
	@:optional
	var onCopyLimit : Float -> Float -> Float -> Float -> Void;
};
typedef Context = {
	function updateSettings(options:Options):Void;
	function getSettings():Options;
	function loadData(data:Array<Dynamic>):Void;
	function listen():Void;
	function getCellRenderer(row:Float, col:Float):String;
	function unlisten():Void;
	function isListening():Bool;
	function render():Void;
	function destroy():Void;
	function validateCells(callback:haxe.Constraints.Function):Void;
	@:overload(function(row:Float, col:Float, row2:Float, col2:Float):Dynamic { })
	function getData():Dynamic;
	function getDataAtCell(row:Float, col:Float):Dynamic;
	function getDataAtRowProp(row:Float, prop:String):Dynamic;
	function getDataAtRow(row:Float):Dynamic;
	function getSourceDataAtRow(row:Float):Dynamic;
	function getDataAtCol(col:Float):Array<Dynamic>;
	function getSourceDataAtCol(col:Float):Array<Dynamic>;
	function getDataAtProp(prop:String):Array<Dynamic>;
	function getCopyableData(startRow:Float, startCol:Float, endRow:Float, endCol:Float):Dynamic;
	function getValue():Dynamic;
	@:overload(function(changes:Array<Dynamic>, ?source:String):Void { })
	function setDataAtCell(row:Float, col:Float, value:Dynamic, ?source:String):Void;
	@:overload(function(changes:Array<Dynamic>, ?source:String):Void { })
	function setDataAtRowProp(row:Float, prop:String, value:Dynamic, ?source:String):Void;
	function populateFromArray(row:Float, col:Float, input:Array<Dynamic>, endRow:Float, endCol:Float, ?source:String, ?populateMethod:String):Void;
	function spliceCol(col:Float, index:Float, amount:Float, elements:haxe.extern.Rest<Dynamic>):Void;
	function spliceRow(row:Float, index:Float, amount:Float, elements:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(type:Insert_col, index:Float, ?amount:Float, ?source:String):Void { })
	@:overload(function(type:Remove_row, index:Float, ?amount:Float, ?source:String):Void { })
	@:overload(function(type:Remove_col, index:Float, ?amount:Float, ?source:String):Void { })
	@:overload(function(type:String, index:Float, ?amount:Float, ?source:String):Void { })
	function alter(type:Insert_row, index:Float, ?amount:Float, ?source:String):Void;
	function getCell(row:Float, col:Float):Dynamic;
	function getCellMeta(row:Float, col:Float):Dynamic;
	function setCellMeta(row:Float, col:Float, key:String, val:String):Void;
	function destroyEditor(?revertOriginal:Bool):Void;
	function selectCell(row:Float, col:Float, row2:Float, col2:Float, ?scrollToSelection:Bool):Void;
	function deselectCell():Void;
	function getSelected():Void;
	function getSelectedRange():Void;
	function clear():Void;
	function countRows():Float;
	function countCols():Float;
	function colToProp(column:Float):String;
	function rowOffset():Float;
	function colOffset():Float;
	function countVisibleRows():Float;
	function countVisibleCols():Float;
	function countEmptyRows(?ending:Bool):Float;
	function countEmptyCols(?ending:Bool):Float;
	function isEmptyRow(row:Float):Bool;
	function isEmptyCol(col:Float):Bool;
	function getRowHeader(row:Float):Dynamic;
	function getColHeader(col:Float):Dynamic;
	function hasRowHeaders():Bool;
	function hasColHeaders():Bool;
	function getColWidth(col:Float):Float;
	function getRowHeight(row:Float):Float;
	function propToCol(property:String):Float;
	function clearUndo():Void;
	function isUndoAvailable():Bool;
	function isRedoAvailable():Bool;
	function undo():Void;
	function redo():Void;
	function sort(column:Float, order:Bool):Void;
};
typedef JQuery = {
	@:overload(function(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(options:Handsontable.Options):JQuery { })
	function handsontable():JQuery;
};
