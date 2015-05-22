typedef ImmediateSuccessCB<T, TP> = { };
typedef ImmediateErrorCB<TP> = { };
typedef DeferredSuccessCB<T, TP> = { };
typedef DeferredErrorCB<TP> = { };
typedef ThenableInterface<T> = {
	@:overload(function<TP>(?successCB:DeferredSuccessCB<T, TP>, ?errorCB:ImmediateErrorCB<TP>):ThenableInterface<TP> { })
	@:overload(function<TP>(?successCB:ImmediateSuccessCB<T, TP>, ?errorCB:DeferredErrorCB<TP>):ThenableInterface<TP> { })
	@:overload(function<TP>(?successCB:ImmediateSuccessCB<T, TP>, ?errorCB:ImmediateErrorCB<TP>):ThenableInterface<TP> { })
	function then<TP>(?successCB:DeferredSuccessCB<T, TP>, ?errorCB:DeferredErrorCB<TP>):ThenableInterface<TP>;
};
typedef PromiseInterface<T> = {
	>ThenableInterface<T>,
	@:overload(function<TP>(?successCB:DeferredSuccessCB<T, TP>, ?errorCB:ImmediateErrorCB<TP>):PromiseInterface<TP> { })
	@:overload(function<TP>(?successCB:ImmediateSuccessCB<T, TP>, ?errorCB:DeferredErrorCB<TP>):PromiseInterface<TP> { })
	@:overload(function<TP>(?successCB:ImmediateSuccessCB<T, TP>, ?errorCB:ImmediateErrorCB<TP>):PromiseInterface<TP> { })
	function then<TP>(?successCB:DeferredSuccessCB<T, TP>, ?errorCB:DeferredErrorCB<TP>):PromiseInterface<TP>;
	@:overload(function(?errorCB:ImmediateErrorCB<T>):PromiseInterface<T> { })
	function otherwise(?errorCB:DeferredErrorCB<T>):PromiseInterface<T>;
	@:overload(function<TP>(?errorCB:ImmediateErrorCB<TP>):PromiseInterface<TP> { })
	function always<TP>(?errorCB:DeferredErrorCB<TP>):PromiseInterface<TP>;
};
typedef DeferredInterface<T> = {
	@:overload(function(?value:T):DeferredInterface<T> { })
	function resolve(?value:ThenableInterface<T>):DeferredInterface<T>;
	function reject(?error:Dynamic):DeferredInterface<T>;
	var promise : PromiseInterface<T>;
};
extern class Typescript-deferredTopLevel {
	static function create<T>():DeferredInterface<T>;
	static function when<T>(?value:ThenableInterface<T>):PromiseInterface<T>;
	static function when<T>(?value:T):PromiseInterface<T>;
}
extern class Typescript-deferredTopLevel {
	static function create<T>():DeferredInterface<T>;
	static function when<T>(?value:ThenableInterface<T>):PromiseInterface<T>;
	static function when<T>(?value:T):PromiseInterface<T>;
}
