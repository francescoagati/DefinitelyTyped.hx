typedef Observable<T> = {
	function toKoSubscribable():KnockoutSubscribable<T>;
	function toKoObservable(?initialValue:T):KnockoutObservable<T>;
};
typedef Subject<T> = {
	function toKoObservable(?initialValue:T):KnockoutObservable<T>;
};
