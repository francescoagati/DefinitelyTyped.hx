extern class Delete extends OperationBase {
	function new(params:esri.DeleteOptions):Void;
	function performRedo():Void;
	function performUndo():Void;
}
