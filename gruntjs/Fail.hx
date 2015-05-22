@:enum abstract ErrorCode(Int) {
	var NoError = 0;
	var Fatal = 1;
	var MissingGruntfile = 2;
	var Task = 3;
	var Template = 4;
	var Autocomplete = 5;
	var Warning = 6;
}
typedef FailModule = {
	@:overload(function(error:Error, ?errorCode:ErrorCode):Void { })
	function warn(error:String, ?errorCode:ErrorCode):Void;
	@:overload(function(error:Error, ?errorCode:ErrorCode):Void { })
	function fatal(error:String, ?errorCode:ErrorCode):Void;
};
