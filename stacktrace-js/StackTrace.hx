typedef StackTraceOptions = {
	@:optional
	var filter : StackFrame -> Bool;
	@:optional
	var sourceCache : { var URL : String; };
	@:optional
	var offline : Bool;
};
typedef StackFrame = {
	function new(functionName:String, args:Dynamic, fileName:String, lineNumber:Float, columnNumber:Float):Void;
	@:optional
	var functionName : String;
	@:optional
	var args : Dynamic;
	@:optional
	var fileName : String;
	@:optional
	var lineNumber : Float;
	@:optional
	var columnNumber : Float;
	function toString():String;
};
extern class StackTraceTopLevel {
	static function get(?options:StackTraceOptions):Promise<Array<StackFrame>>;
	static function fromError(error:Error, ?options:StackTraceOptions):Promise<Array<StackFrame>>;
	static function generateArtificially(?options:StackTraceOptions):Promise<Array<StackFrame>>;
	static function instrument(fn:Void -> Void, callback:Array<StackFrame> -> Void, errorCallback:Error -> Void, ?thisArg:Dynamic):Void;
	static function deinstrument(fn:Void -> Void):Void;
}
