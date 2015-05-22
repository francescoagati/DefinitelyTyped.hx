typedef Handle = {
	var name : String;
	var position : String;
	var icon : String;
};
extern class SelectionView extends Backbone.Model {
	var paper : joint.dia.Paper;
	var graph : joint.dia.Graph;
	var model : Backbone.Collection<joint.dia.Cell>;
	function new(opt:{ var paper : joint.dia.Paper; var graph : joint.dia.Graph; var model : Backbone.Collection<joint.dia.Cell>; }):Void;
	function createSelectionBox(cellView:joint.dia.CellView):Void;
	function destroySelectionBox(cellView:joint.dia.CellView):Void;
	function startSelecting(evt:Dynamic):Void;
	function cancelSelection():Void;
	function addHandle(handle:Handle):Void;
	function removeHandle(name:String):Void;
	function changeHandle(name:String, handle:Handle):Void;
}
