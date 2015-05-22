extern class Update extends OperationBase {
	function new(params:esri.UpdateOptions):Void;
	function performRedo():Void;
	function performUndo():Void;
}
