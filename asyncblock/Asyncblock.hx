typedef IFlow = {
	@:overload(function(key:String, ?responseFormat:Array<String>):IExecuteFunction { })
	@:overload(function(key:Float, ?responseFormat:Array<String>):IExecuteFunction { })
	@:overload(function(options:IFlowOptions):IExecuteFunction { })
	function add(?responseFormat:Array<String>):IExecuteFunction;
	@:overload(function(key:String, ?responseFormat:Array<String>):IExecuteFunction { })
	@:overload(function(key:Float, ?responseFormat:Array<String>):IExecuteFunction { })
	@:overload(function(options:IFlowOptions):IExecuteFunction { })
	function callback(?responseFormat:Array<String>):IExecuteFunction;
	@:overload(function<T>(?key:Float):T { })
	function wait<T>(?key:String):T;
	function get<T>(key:String):T;
	@:overload(function(options:IFlowOptions):IExecuteFunction { })
	function set(key:String, ?responseFormat:Array<String>):IExecuteFunction;
	function del(key:String):Void;
	function sync<T>(task:Dynamic):T;
	@:overload(function(key:String, toExecute:IExecuteFunction):Void { })
	@:overload(function(key:Float, toExecute:IExecuteFunction):Void { })
	@:overload(function(responseFormat:Array<String>, toExecute:IExecuteFunction):Void { })
	@:overload(function(key:String, responseFormat:Array<String>, toExecute:IExecuteFunction):Void { })
	@:overload(function(key:Float, responseFormat:Array<String>, toExecute:IExecuteFunction):Void { })
	@:overload(function(options:IFlowOptions, toExecute:IExecuteFunction):Void { })
	function queue(toExecute:IExecuteFunction):Void;
	function doneAdding():Void;
	function forceWait<T>():T;
	var maxParallel : Float;
	var errorCallback : Dynamic -> Void;
	var taskTimeout : Float;
	var timeoutIsError : Bool;
};
typedef IFlowOptions = {
	@:optional
	var ignoreError : Bool;
	@:optional
	var key : String;
	@:optional
	var responseFormat : Array<String>;
	@:optional
	var timeout : Float;
	@:optional
	var timeoutIsError : Bool;
	@:optional
	var dontWait : Bool;
	@:optional
	var firstArgIsError : Bool;
};
typedef IExecuteFunction = { };
extern class AsyncblockTopLevel {
	static function asyncblock<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
	static function nostack<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
}
extern class AsyncblockTopLevel {
	static function asyncblock<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
	static function nostack<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
}
extern class AsyncblockTopLevel {
	static function asyncblock<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
	static function nostack<T>(f:asyncblock.IFlow -> Void, ?callback:Dynamic -> T -> Void):Void;
}
