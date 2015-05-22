typedef Observable<T> = {
	function pairwise():Observable<Array<T>>;
	function partition(predicate:T -> Float -> Observable<T> -> Bool, thisArg:Dynamic):Array<Observable<T>>;
};
