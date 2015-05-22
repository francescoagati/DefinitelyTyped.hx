typedef KnockoutSubscribableFunctions<T> = {
	@:overload(function<TEvent>(event:String):Rx.Observable<TEvent> { })
	function toObservable(?event:String):Rx.Observable<T>;
};
typedef KnockoutObservableFunctions<T> = {
	function toObservableWithReplyLatest():Rx.Observable<T>;
	function toSubject():Rx.ISubject<T>;
};
typedef KnockoutComputedFunctions<T> = {
	function toObservableWithReplyLatest():Rx.Observable<T>;
};
