extern class RowSelectionModel<T:(SlickData), E> extends SelectionModel<T, E> {
	function new(?options:{ var selectActiveRow : Bool; }):Void;
	function getSelectedRows():Array<Float>;
	function setSelectedRows(rows:Array<Float>):Void;
	function getSelectedRanges():Array<Float>;
	function setSelectedRanges(ranges:Array<Float>):Void;
}
