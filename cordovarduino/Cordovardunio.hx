typedef Serial = {
	function requestPermission(successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
	function open(opts:SerialOptions, successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
	function write(data:String, successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
	function read(successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
	function close(successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
	function registerReadCallback(successCallback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function):Void;
};
typedef SerialOptions = {
	@:optional
	var baudRate : Float;
	@:optional
	var dataBits : Float;
	@:optional
	var stopBits : Float;
	@:optional
	var parity : Float;
};
