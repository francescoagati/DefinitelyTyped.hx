typedef Observable<T> = {
	function join<TRight, TDurationLeft, TDurationRight, TResult>(right:Observable<TRight>, leftDurationSelector:T -> Observable<TDurationLeft>, rightDurationSelector:TRight -> Observable<TDurationRight>, resultSelector:T -> TRight -> TResult):Observable<TResult>;
	function groupJoin<TRight, TDurationLeft, TDurationRight, TResult>(right:Observable<TRight>, leftDurationSelector:T -> Observable<TDurationLeft>, rightDurationSelector:TRight -> Observable<TDurationRight>, resultSelector:T -> Observable<TRight> -> TResult):Observable<TResult>;
	@:overload(function<TWindowClosing>(windowClosingSelector:Void -> Observable<TWindowClosing>):Observable<Observable<T>> { })
	@:overload(function<TWindowOpening, TWindowClosing>(windowOpenings:Observable<TWindowOpening>, windowClosingSelector:Void -> Observable<TWindowClosing>):Observable<Observable<T>> { })
	function window<TWindowOpening>(windowOpenings:Observable<TWindowOpening>):Observable<Observable<T>>;
	@:overload(function<TBufferClosing>(bufferClosingSelector:Void -> Observable<TBufferClosing>):Observable<Array<T>> { })
	@:overload(function<TBufferOpening, TBufferClosing>(bufferOpenings:Observable<TBufferOpening>, bufferClosingSelector:Void -> Observable<TBufferClosing>):Observable<Array<T>> { })
	function buffer<TBufferOpening>(bufferOpenings:Observable<TBufferOpening>):Observable<Array<T>>;
};
