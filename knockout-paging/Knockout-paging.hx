typedef KnockoutStatic = {
	var paging : KnockoutPagingOptions;
	function pagedObservableArray<T>(?initialValue:Array<T>, ?options:KnockoutPagedOptions):KnockoutPagedObservableArray<T>;
};
typedef KnockoutPagingOptions = {
	var defaults : KnockoutPagingDefaultOptions;
	var generators : { var sliding : KnockoutSlidingPageGenerator; };
};
typedef KnockoutPagingDefaultOptions = {
	var pageNumber : Float;
	var pageSize : Float;
};
typedef KnockoutPagedObservableArray<T> = {
	>KnockoutObservableArray<T>,
	var pageSize : KnockoutObservable<Float>;
	var pageNumber : KnockoutObservable<Float>;
	var pageItems : KnockoutComputed<Array<T>>;
	var pageCount : KnockoutComputed<Float>;
	var itemCount : KnockoutComputed<Float>;
	var firstItemOnPage : KnockoutComputed<Float>;
	var lastItemOnPage : KnockoutComputed<Float>;
	var hasPreviousPage : KnockoutComputed<Bool>;
	var hasNextPage : KnockoutComputed<Bool>;
	var isFirstPage : KnockoutComputed<Bool>;
	var isLastPage : KnockoutComputed<Bool>;
	var pages : KnockoutComputed<Array<Float>>;
	function toNextPage():Void;
	function toPreviousPage():Void;
	function toLastPage():Void;
	function toFirstPage():Void;
};
typedef KnockoutPagedOptions = {
	@:optional
	var pageSize : Float;
	@:optional
	var pageNumber : Float;
	@:optional
	var pageGenerator : String;
};
typedef KnockoutObservableArray<T> = {
	function extend(requestedExtenders:{ var paged : Dynamic; }):KnockoutPagedObservableArray<T>;
};
typedef KnockoutPageGenerator = {
	function generate<T>(pagedObservable:KnockoutPagedObservableArray<T>):Array<Float>;
};
typedef KnockoutSlidingPageGenerator = {
	>KnockoutPageGenerator,
	var windowSize : KnockoutObservable<Float>;
};
typedef KnockoutExtenders = {
	function paged(target:KnockoutObservableArray<Dynamic>, options:KnockoutPagedOptions):KnockoutObservableArray<Dynamic>;
};
