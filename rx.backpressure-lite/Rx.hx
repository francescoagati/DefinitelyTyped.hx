typedef Observable<T> = {
	function pausable(?pauser:Observable<Bool>):PausableObservable<T>;
	function pausableBuffered(?pauser:Observable<Bool>):PausableObservable<T>;
	function controlled(?enableQueue:Bool):ControlledObservable<T>;
};
typedef ControlledObservable<T> = {
	>Observable<T>,
	function request(?numberOfItems:Float):IDisposable;
};
typedef PausableObservable<T> = {
	>Observable<T>,
	function pause():Void;
	function resume():Void;
};
