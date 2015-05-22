extern class Add extends OperationBase {
	function new(params:esri.AddOptions):Void;
	function performRedo():Void;
	function performUndo():Void;
}
