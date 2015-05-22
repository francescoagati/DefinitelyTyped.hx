extern class OperationBase {
	var label : String;
	var type : String;
	function new(params:esri.OperationBaseOptions):Void;
	function performRedo():Void;
	function performUndo():Void;
}
