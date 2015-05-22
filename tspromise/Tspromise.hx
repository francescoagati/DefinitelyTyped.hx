extern class Thenable<T> {
	@:overload(function<TR>(onFulfilled:T -> Thenable<TR>, ?onRejected:Error -> Void):Thenable<TR> { })
	@:overload(function<TR>(onFulfilled:T -> TR, ?onRejected:Error -> Void):Thenable<TR> { })
	@:overload(function<TR>(onFulfilled:T -> TR, ?onRejected:Error -> TR):Thenable<TR> { })
	function then<TR>(onFulfilled:T -> Thenable<TR>, ?onRejected:Error -> TR):Thenable<TR>;
	function catch(onRejected:Error -> T):Thenable<T>;
}
typedef NodeCallback<T> = { };
extern class Promise<T> extends Thenable<T> {
	function new(callback:?T -> Void -> ?Error -> Void -> Void):Void;
	@:overload(function<T>(promise:Thenable<T>):Thenable<T> { })
	static function resolve<T>(?value:T):Thenable<T>;
	static function reject<T>(error:Error):Thenable<T>;
	static function all(promises:Array<Thenable<Dynamic>>):Thenable<Array<Dynamic>>;
	@:overload(function<T1, TR>(callback:T1 -> TR):T1 -> Thenable<TR> { })
	@:overload(function<T1, T2, TR>(callback:T1 -> T2 -> TR):T1 -> T2 -> Thenable<TR> { })
	@:overload(function<T1, T2, T3, TR>(callback:T1 -> T2 -> T3 -> TR):T1 -> T2 -> T3 -> Thenable<TR> { })
	@:overload(function<T1, T2, T3, T4, TR>(callback:T1 -> T2 -> T3 -> T4 -> TR):T1 -> T2 -> T3 -> T4 -> Thenable<TR> { })
	static function async<TR>(callback:Void -> TR):Void -> Thenable<TR>;
	static function spawn<TR>(generatorFunction:Void -> TR):Thenable<TR>;
	static function rewriteFolderSync(path:String):Void;
	static function waitAsync(time:Float):Thenable<{ }>;
	static function nfcall<T>(obj:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Thenable<T>;
}
extern class TspromiseTopLevel {
	static function yield<T>(promise:Thenable<T>):T;
}
