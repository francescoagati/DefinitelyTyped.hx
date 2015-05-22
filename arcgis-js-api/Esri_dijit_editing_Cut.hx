extern class Cut extends OperationBase {
	function new(params:esri.CutOptions):Void;
	function performRedo():Void;
	function performUndo():Void;
}
