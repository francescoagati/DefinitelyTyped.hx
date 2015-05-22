typedef KnockoutMappedObservableArray<T> = {
	>KnockoutObservableArray<T>,
	>KnockoutSubscription,
};
typedef KnockoutObservableArrayFunctions<T> = {
	@:overload(function<TResult>(mappingOptions:{ var mapping : T -> TResult; @:optional
	var disposeItem : TResult -> Void; }):KnockoutMappedObservableArray<TResult> { })
	@:overload(function<TResult>(mappingOptions:T -> TResult):KnockoutMappedObservableArray<TResult> { })
	function map<TResult>(mappingOptions:{ var mappingWithDisposeCallback : T -> { var mappedValue : TResult; var dispose : Void -> Void; }; }):KnockoutMappedObservableArray<TResult>;
	function filter(predicate:T -> Bool):KnockoutMappedObservableArray<T>;
};
