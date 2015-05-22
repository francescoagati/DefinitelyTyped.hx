typedef Mapping<T, TResult> = { };
typedef MappingOption<T, TResult> = {
	var mapping : Mapping<T, TResult>;
	@:optional
	var disposeItem : TResult -> Void;
};
typedef MappingWithDisposeCallbackOption<T, TResult> = {
	var mappingWithDisposeCallback : T -> { var mappedValue : TResult; var dispose : Void -> Void; };
};
typedef KnockoutObservableArrayFunctions<T> = {
	@:overload(function<TResult>(mapping:KnockoutTransformations.MappingOption<T, TResult>):KnockoutObservableArray<TResult> { })
	@:overload(function<TResult>(mapping:KnockoutTransformations.MappingWithDisposeCallbackOption<T, TResult>):KnockoutObservableArray<TResult> { })
	function map<TResult>(mapping:KnockoutTransformations.Mapping<T, TResult>):KnockoutObservableArray<TResult>;
	function filter(predicate:T -> Bool):KnockoutObservableArray<T>;
	function sortBy(sorter:T -> Dynamic -> Dynamic -> Dynamic):KnockoutObservableArray<T>;
	@:overload(function(indexer:T -> Array<String>):KnockoutObservable<{ }> { })
	@:overload(function(indexer:T -> Dynamic):KnockoutObservable<Dynamic> { })
	function indexBy(indexer:T -> String):KnockoutObservable<{ }>;
	function uniqueIndexBy(indexer:T -> String):KnockoutObservable<{ }>;
};
