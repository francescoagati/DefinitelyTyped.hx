extern class CancellationError {
	function new(?opt_msg:String):Void;
	var name : String;
	var message : String;
}
typedef IThenable<T> = {
	function cancel(?opt_reason:String):Void;
	function isPending():Bool;
	@:overload(function<R>(?opt_callback:T -> R, ?opt_errback:Dynamic -> Dynamic):Promise<R> { })
	function then<R>(?opt_callback:T -> Promise<R>, ?opt_errback:Dynamic -> Dynamic):Promise<R>;
	function thenCatch<R>(errback:Dynamic -> Dynamic):Promise<R>;
	function thenFinally<R>(callback:Void -> Dynamic):Promise<R>;
};
extern class Thenable<T> {
	function cancel(?opt_reason:String):Void;
	function isPending():Bool;
	@:overload(function<R>(?opt_callback:T -> R, ?opt_errback:Dynamic -> Dynamic):Promise<R> { })
	function then<R>(?opt_callback:T -> Promise<R>, ?opt_errback:Dynamic -> Dynamic):Promise<R>;
	function thenCatch<R>(errback:Dynamic -> Dynamic):Promise<R>;
	function thenFinally<R>(callback:Void -> Dynamic):Promise<R>;
	static function addImplementation(ctor:haxe.Constraints.Function):Void;
	static function isImplementation(object:Dynamic):Bool;
}
extern class Promise<T> {
	function new():Void;
	function cancel(reason:Dynamic):Void;
	function isPending():Bool;
	@:overload(function<R>(?opt_callback:T -> R, ?opt_errback:Dynamic -> Dynamic):Promise<R> { })
	function then<R>(?opt_callback:T -> Promise<R>, ?opt_errback:Dynamic -> Dynamic):Promise<R>;
	function thenCatch<R>(errback:Dynamic -> Dynamic):Promise<R>;
	function thenFinally<R>(callback:Void -> Dynamic):Promise<R>;
}
extern class Deferred<T> extends Promise<T> {
	function new(?opt_flow:ControlFlow):Void;
	static var State_ : { var BLOCKED : Float; var PENDING : Float; var REJECTED : Float; var RESOLVED : Float; };
	var promise : Promise<T>;
	function reject(?opt_error:Dynamic):Void;
	function errback(?opt_error:Dynamic):Void;
	function fulfill(?opt_value:T):Void;
	function removeAll():Void;
}
typedef IControlFlowTimer = {
	var clearInterval : Float -> Void;
	var clearTimeout : Float -> Void;
	var setInterval : haxe.Constraints.Function -> Float -> Float;
	var setTimeout : haxe.Constraints.Function -> Float -> Float;
};
extern class ControlFlow extends EventEmitter {
	function new(?opt_timer:IControlFlowTimer):Void;
	var timer : IControlFlowTimer;
	static var defaultTimer : IControlFlowTimer;
	static var EventType : { var IDLE : String; var RESET : String; var SCHEDULE_TASK : String; var UNCAUGHT_EXCEPTION : String; };
	static var EVENT_LOOP_FREQUENCY : Float;
	function reset():Void;
	function getHistory():Array<String>;
	function clearHistory():Void;
	function annotateError(e:Dynamic):Dynamic;
	function getSchedule():String;
	function execute<T>(fn:haxe.Constraints.Function, ?opt_description:String):Promise<T>;
	function timeout(ms:Float, ?opt_description:String):Promise<Void>;
	function wait(condition:haxe.Constraints.Function, timeout:Float, ?opt_message:String):Promise<Void>;
	function await<T>(promise:Promise<T>):Promise<T>;
}
extern class PromiseTopLevel {
	static function all(arr:Array<Promise<Dynamic>>):Promise<Array<Dynamic>>;
	static function asap(value:Dynamic, callback:haxe.Constraints.Function, ?opt_errback:haxe.Constraints.Function):Void;
	static function controlFlow():ControlFlow;
	static function createFlow<R>(callback:ControlFlow -> R):Promise<R>;
	static function isPromise(value:Dynamic):Bool;
	static function isGenerator(fn:haxe.Constraints.Function):Bool;
	static function delayed(ms:Float):Promise<Void>;
	static function filter<T>(arr:Array<T>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):Promise<Array<T>>;
	static function filter<T>(arr:Promise<Array<T>>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):Promise<Array<T>>;
	static function defer<T>():Deferred<T>;
	static function fulfilled<T>(?opt_value:T):Promise<T>;
	static function map<T>(arr:Array<T>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):Promise<Array<T>>;
	static function map<T>(arr:Promise<Array<T>>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):Promise<Array<T>>;
	static function rejected(?opt_reason:Dynamic):Promise<Void>;
	static function checkedNodeCall<T>(fn:haxe.Constraints.Function, var_args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function consume<T>(generatorFn:haxe.Constraints.Function, ?opt_self:Dynamic, var_args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function when<T, R>(value:T, ?opt_callback:T -> Dynamic, ?opt_errback:Dynamic -> Dynamic):Promise<R>;
	static function when<T, R>(value:Promise<T>, ?opt_callback:T -> Dynamic, ?opt_errback:Dynamic -> Dynamic):Promise<R>;
	static function fullyResolved<T>(value:Dynamic):Promise<T>;
	static function setDefaultFlow(flow:ControlFlow):Void;
}
