typedef CommonLogging<T> = {
	function write(msg:String):T;
	function writeln(msg:String):T;
	function error(msg:String):T;
	function errorlns(msg:String):T;
	function ok(msg:String):T;
	function oklns(msg:String):T;
	function subhead(msg:String):T;
	function writeflags(obj:Dynamic):T;
	function warn(msg:String):T;
};
typedef VerboseLogModule = {
	>CommonLogging<VerboseLogModule>,
	var or : NotVerboseLogModule;
};
typedef NotVerboseLogModule = {
	>CommonLogging<NotVerboseLogModule>,
	var or : VerboseLogModule;
};
typedef LogModule = {
	>CommonLogging<LogModule>,
	var verbose : VerboseLogModule;
	var notverbose : NotVerboseLogModule;
};
