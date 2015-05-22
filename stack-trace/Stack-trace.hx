typedef StackFrame = {
	@:overload(function():String { })
	function getTypeName():String;
	function getFunctionName():String;
	function getMethodName():String;
	function getFileName():String;
	function getLineNumber():Float;
	function getColumnNumber():Float;
	function isNative():Bool;
};
extern class Stack-traceTopLevel {
	static function get(?belowFn:Void -> Void):Array<StackFrame>;
	static function parse(err:Error):Array<StackFrame>;
}
extern class Stack-traceTopLevel {
	static function get(?belowFn:Void -> Void):Array<StackFrame>;
	static function parse(err:Error):Array<StackFrame>;
}
