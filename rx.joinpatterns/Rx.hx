typedef Pattern1<T1> = {
	function and<T2>(other:Observable<T2>):Pattern2<T1, T2>;
	function thenDo<TR>(selector:T1 -> TR):Plan<TR>;
};
typedef Pattern2<T1, T2> = {
	function and<T3>(other:Observable<T3>):Pattern3<T1, T2, T3>;
	function thenDo<TR>(selector:T1 -> T2 -> TR):Plan<TR>;
};
typedef Pattern3<T1, T2, T3> = {
	function and<T4>(other:Observable<T4>):Pattern4<T1, T2, T3, T4>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> TR):Plan<TR>;
};
typedef Pattern4<T1, T2, T3, T4> = {
	function and<T5>(other:Observable<T5>):Pattern5<T1, T2, T3, T4, T5>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> TR):Plan<TR>;
};
typedef Pattern5<T1, T2, T3, T4, T5> = {
	function and<T6>(other:Observable<T6>):Pattern6<T1, T2, T3, T4, T5, T6>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> T5 -> TR):Plan<TR>;
};
typedef Pattern6<T1, T2, T3, T4, T5, T6> = {
	function and<T7>(other:Observable<T7>):Pattern7<T1, T2, T3, T4, T5, T6, T7>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> TR):Plan<TR>;
};
typedef Pattern7<T1, T2, T3, T4, T5, T6, T7> = {
	function and<T8>(other:Observable<T8>):Pattern8<T1, T2, T3, T4, T5, T6, T7, T8>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> TR):Plan<TR>;
};
typedef Pattern8<T1, T2, T3, T4, T5, T6, T7, T8> = {
	function and<T9>(other:Observable<T9>):Pattern9<T1, T2, T3, T4, T5, T6, T7, T8, T9>;
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> TR):Plan<TR>;
};
typedef Pattern9<T1, T2, T3, T4, T5, T6, T7, T8, T9> = {
	function thenDo<TR>(selector:T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> TR):Plan<TR>;
};
typedef Plan<T> = { };
typedef Observable<T> = {
	function and<T2>(other:Observable<T2>):Pattern2<T, T2>;
	function thenDo<TR>(selector:T -> TR):Plan<TR>;
};
typedef ObservableStatic = {
	function when<TR>(plan:Plan<TR>):Observable<TR>;
};
