typedef IDiagnosticWriter = {
	function Alert(output:String):Void;
};
extern class CompilerDiagnosticsTopLevel {
	static var debug : Bool;
	static var diagnosticWriter : IDiagnosticWriter;
	static var analysisPass : Float;
	static function Alert(output:String):Void;
	static function debugPrint(s:String):Void;
	static function assert(condition:Bool, s:String):Void;
	static function timeFunction(logger:ILogger, funcDescription:String, func:Void -> Dynamic):Dynamic;
}
typedef ILogger = {
	function information():Bool;
	function debug():Bool;
	function warning():Bool;
	function error():Bool;
	function fatal():Bool;
	function log(s:String):Void;
};
extern class NullLogger {
	function information():Bool;
	function debug():Bool;
	function warning():Bool;
	function error():Bool;
	function fatal():Bool;
	function log(s:String):Void;
}
