typedef IPromise<T> = {
	function then<U>(?onFulfill:T -> haxe.extern.EitherType<U, IPromise<U>>, ?onReject:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>):IPromise<U>;
};
typedef Deferred<T> = {
	var promise : Promise<T>;
	function resolve(value:T):Void;
	function reject(reason:Dynamic):Void;
	function notify(value:Dynamic):Void;
	function makeNodeResolver():Dynamic -> T -> Void;
};
typedef Promise<T> = {
	function fin(finallyCallback:Void -> Dynamic):Promise<T>;
	function finally(finallyCallback:Void -> Dynamic):Promise<T>;
	function then<U>(?onFulfill:T -> haxe.extern.EitherType<U, IPromise<U>>, ?onReject:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>, ?onProgress:haxe.Constraints.Function):Promise<U>;
	function spread<U>(onFulfilled:haxe.Constraints.Function, ?onRejected:haxe.Constraints.Function):Promise<U>;
	function fail<U>(onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>):Promise<U>;
	function catch<U>(onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>):Promise<U>;
	function progress(onProgress:Dynamic -> Dynamic):Promise<T>;
	function done(?onFulfilled:T -> Dynamic, ?onRejected:Dynamic -> Dynamic, ?onProgress:Dynamic -> Dynamic):Void;
	function nodeify(callback:Dynamic -> Dynamic -> Void):Promise<T>;
	function get<U>(propertyName:String):Promise<U>;
	function set<U>(propertyName:String, value:Dynamic):Promise<U>;
	function delete<U>(propertyName:String):Promise<U>;
	function post<U>(methodName:String, args:Array<Dynamic>):Promise<U>;
	function invoke<U>(methodName:String, args:haxe.extern.Rest<Dynamic>):Promise<U>;
	function fapply<U>(args:Array<Dynamic>):Promise<U>;
	function fcall<U>(args:haxe.extern.Rest<Dynamic>):Promise<U>;
	function keys():Promise<Array<String>>;
	function thenResolve<U>(value:U):Promise<U>;
	function thenReject(reason:Dynamic):Promise<T>;
	function tap(onFulfilled:T -> Dynamic):Promise<T>;
	function timeout(ms:Float, ?message:String):Promise<T>;
	function delay(ms:Float):Promise<T>;
	function isFulfilled():Bool;
	function isRejected():Bool;
	function isPending():Bool;
	function valueOf():Dynamic;
	function inspect():PromiseState<T>;
};
typedef PromiseState<T> = {
	var state : String;
	@:optional
	var value : T;
	@:optional
	var reason : Dynamic;
};
extern class QTopLevel {
	static function Q<T>(promise:Q.IPromise<T>):Q.Promise<T>;
	static function Q<T>(value:T):Q.Promise<T>;
	static function when():Promise<Void>;
	static function when<T>(value:haxe.extern.EitherType<T, IPromise<T>>):Promise<T>;
	static function when<T, U>(value:haxe.extern.EitherType<T, IPromise<T>>, onFulfilled:T -> haxe.extern.EitherType<U, IPromise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>, ?onProgress:Dynamic -> Dynamic):Promise<U>;
	static function fbind<T>(method:haxe.extern.Rest<Dynamic> -> haxe.extern.EitherType<T, IPromise<T>>, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function fcall<T>(method:haxe.extern.Rest<Dynamic> -> T, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function send<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function invoke<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function mcall<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function denodeify<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nbind<T>(nodeFunction:haxe.Constraints.Function, thisArg:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nfbind<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nfcall<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function nfapply<T>(nodeFunction:haxe.Constraints.Function, args:Array<Dynamic>):Promise<T>;
	static function ninvoke<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function npost<T>(nodeModule:Dynamic, functionName:String, args:Array<Dynamic>):Promise<T>;
	static function nsend<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function nmcall<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function all<T>(promises:Array<IPromise<T>>):Promise<Array<T>>;
	static function allSettled<T>(promises:Array<IPromise<T>>):Promise<Array<PromiseState<T>>>;
	static function allResolved<T>(promises:Array<IPromise<T>>):Promise<Array<Promise<T>>>;
	static function spread<T, U>(promises:Array<IPromise<T>>, onFulfilled:haxe.extern.Rest<T> -> haxe.extern.EitherType<U, IPromise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>):Promise<U>;
	static function timeout<T>(promise:Promise<T>, ms:Float, ?message:String):Promise<T>;
	static function delay<T>(promise:Promise<T>, ms:Float):Promise<T>;
	static function delay<T>(value:T, ms:Float):Promise<T>;
	static function delay(ms:Float):Promise<Void>;
	static function isFulfilled(promise:Promise<Dynamic>):Bool;
	static function isRejected(promise:Promise<Dynamic>):Bool;
	static function isPending(promise:Promise<Dynamic>):Bool;
	static function defer<T>():Deferred<T>;
	static function reject<T>(?reason:Dynamic):Promise<T>;
	static function Promise<T>(resolver:haxe.extern.EitherType<T, IPromise<T>> -> Void -> Dynamic -> Void -> Dynamic -> Void -> Void):Promise<T>;
	static function promised<T>(callback:haxe.extern.Rest<Dynamic> -> T):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function isPromise(object:Dynamic):Bool;
	static function isPromiseAlike(object:Dynamic):Bool;
	static function isPending(object:Dynamic):Bool;
	static function async<T>(generatorFunction:Dynamic):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nextTick(callback:haxe.Constraints.Function):Void;
	static var onerror : Dynamic -> Void;
	static var longStackSupport : Bool;
	static function resolve<T>(object:IPromise<T>):Promise<T>;
	static function resolve<T>(object:T):Promise<T>;
}
extern class QTopLevel {
	static function Q<T>(promise:Q.IPromise<T>):Q.Promise<T>;
	static function Q<T>(value:T):Q.Promise<T>;
	static function when():Promise<Void>;
	static function when<T>(value:haxe.extern.EitherType<T, IPromise<T>>):Promise<T>;
	static function when<T, U>(value:haxe.extern.EitherType<T, IPromise<T>>, onFulfilled:T -> haxe.extern.EitherType<U, IPromise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>, ?onProgress:Dynamic -> Dynamic):Promise<U>;
	static function fbind<T>(method:haxe.extern.Rest<Dynamic> -> haxe.extern.EitherType<T, IPromise<T>>, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function fcall<T>(method:haxe.extern.Rest<Dynamic> -> T, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function send<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function invoke<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function mcall<T>(obj:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function denodeify<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nbind<T>(nodeFunction:haxe.Constraints.Function, thisArg:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nfbind<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nfcall<T>(nodeFunction:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function nfapply<T>(nodeFunction:haxe.Constraints.Function, args:Array<Dynamic>):Promise<T>;
	static function ninvoke<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function npost<T>(nodeModule:Dynamic, functionName:String, args:Array<Dynamic>):Promise<T>;
	static function nsend<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function nmcall<T>(nodeModule:Dynamic, functionName:String, args:haxe.extern.Rest<Dynamic>):Promise<T>;
	static function all<T>(promises:Array<IPromise<T>>):Promise<Array<T>>;
	static function allSettled<T>(promises:Array<IPromise<T>>):Promise<Array<PromiseState<T>>>;
	static function allResolved<T>(promises:Array<IPromise<T>>):Promise<Array<Promise<T>>>;
	static function spread<T, U>(promises:Array<IPromise<T>>, onFulfilled:haxe.extern.Rest<T> -> haxe.extern.EitherType<U, IPromise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, IPromise<U>>):Promise<U>;
	static function timeout<T>(promise:Promise<T>, ms:Float, ?message:String):Promise<T>;
	static function delay<T>(promise:Promise<T>, ms:Float):Promise<T>;
	static function delay<T>(value:T, ms:Float):Promise<T>;
	static function delay(ms:Float):Promise<Void>;
	static function isFulfilled(promise:Promise<Dynamic>):Bool;
	static function isRejected(promise:Promise<Dynamic>):Bool;
	static function isPending(promise:Promise<Dynamic>):Bool;
	static function defer<T>():Deferred<T>;
	static function reject<T>(?reason:Dynamic):Promise<T>;
	static function Promise<T>(resolver:haxe.extern.EitherType<T, IPromise<T>> -> Void -> Dynamic -> Void -> Dynamic -> Void -> Void):Promise<T>;
	static function promised<T>(callback:haxe.extern.Rest<Dynamic> -> T):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function isPromise(object:Dynamic):Bool;
	static function isPromiseAlike(object:Dynamic):Bool;
	static function isPending(object:Dynamic):Bool;
	static function async<T>(generatorFunction:Dynamic):haxe.extern.Rest<Dynamic> -> Promise<T>;
	static function nextTick(callback:haxe.Constraints.Function):Void;
	static var onerror : Dynamic -> Void;
	static var longStackSupport : Bool;
	static function resolve<T>(object:IPromise<T>):Promise<T>;
	static function resolve<T>(object:T):Promise<T>;
}