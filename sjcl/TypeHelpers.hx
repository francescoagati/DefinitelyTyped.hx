typedef One<T> = { };
typedef BigNumberBinaryOperator = {
	>One<Float>,
	>One<String>,
	>One<BigNumber>,
};
typedef Two<T1, T2> = { };
typedef Bind1<T> = {
	>Two<Float, T>,
	>Two<String, T>,
	>Two<BigNumber, T>,
};
typedef BigNumberTrinaryOperator = {
	>Bind1<Float>,
	>Bind1<String>,
	>Bind1<BigNumber>,
};
