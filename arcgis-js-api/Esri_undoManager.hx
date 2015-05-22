extern class UndoManager {
	var canRedo : Bool;
	var canUndo : Bool;
	var length : Float;
	var position : Float;
	function new(?options:esri.UndoManagerOptions):Void;
	function add(operation:OperationBase):Void;
	function clearRedo():Void;
	function clearUndo():Void;
	function destroy():Void;
	function get(operationId:Float):OperationBase;
	function peekRedo():OperationBase;
	function peekUndo():OperationBase;
	function redo():Void;
	function remove(operationId:Float):OperationBase;
	function undo():Void;
	@:overload(function(type:Change, listener:{ var target : UndoManager; } -> Void):esri.Handle { })
	@:overload(function(type:Redo, listener:{ var target : UndoManager; } -> Void):esri.Handle { })
	@:overload(function(type:Undo, listener:{ var target : UndoManager; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Add, listener:{ var target : UndoManager; } -> Void):esri.Handle;
}
