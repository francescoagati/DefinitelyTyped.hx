typedef Fiber = {
	var reset : Void -> Dynamic;
	var run : ?Dynamic -> Dynamic;
	var throwInto : Dynamic -> Dynamic;
};
