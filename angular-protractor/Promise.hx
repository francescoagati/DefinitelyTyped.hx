extern class Thenable<T> extends webdriver.promise.Thenable<T> {

}
extern class Promise<T> extends webdriver.promise.Promise<T> {

}
extern class Deferred<T> extends webdriver.promise.Deferred<T> {

}
extern class ControlFlow extends webdriver.promise.ControlFlow {

}
extern class CancellationError extends webdriver.promise.CancellationError {

}
extern class PromiseTopLevel {
	static function all(arr:Array<webdriver.promise.Promise<Dynamic>>):webdriver.promise.Promise<Array<Dynamic>>;
	static function asap(value:Dynamic, callback:haxe.Constraints.Function, ?opt_errback:haxe.Constraints.Function):Void;
	static function controlFlow():webdriver.promise.ControlFlow;
	static function createFlow<R>(callback:webdriver.promise.ControlFlow -> R):webdriver.promise.Promise<R>;
	static function isPromise(value:Dynamic):Bool;
	static function isGenerator(fn:haxe.Constraints.Function):Bool;
	static function delayed(ms:Float):webdriver.promise.Promise<Void>;
	static function filter<T>(arr:Array<T>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):webdriver.promise.Promise<Array<T>>;
	static function filter<T>(arr:webdriver.promise.Promise<Array<T>>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):webdriver.promise.Promise<Array<T>>;
	static function defer<T>():webdriver.promise.Deferred<T>;
	static function fulfilled<T>(?opt_value:T):webdriver.promise.Promise<T>;
	static function map<T>(arr:Array<T>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):webdriver.promise.Promise<Array<T>>;
	static function map<T>(arr:webdriver.promise.Promise<Array<T>>, fn:T -> Float -> Array<T> -> Dynamic, ?opt_self:Dynamic):webdriver.promise.Promise<Array<T>>;
	static function rejected(?opt_reason:Dynamic):webdriver.promise.Promise<Void>;
	static function checkedNodeCall<T>(fn:haxe.Constraints.Function, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T>;
	static function consume<T>(generatorFn:haxe.Constraints.Function, ?opt_self:Dynamic, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T>;
	static function when<T, R>(value:T, ?opt_callback:T -> Dynamic, ?opt_errback:Dynamic -> Dynamic):webdriver.promise.Promise<R>;
	static function when<T, R>(value:webdriver.promise.Promise<T>, ?opt_callback:T -> Dynamic, ?opt_errback:Dynamic -> Dynamic):webdriver.promise.Promise<R>;
	static function fullyResolved<T>(value:Dynamic):webdriver.promise.Promise<T>;
	static function setDefaultFlow(flow:webdriver.promise.ControlFlow):Void;
}
