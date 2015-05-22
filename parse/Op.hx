typedef BaseOperation = {
	>IBaseObject,
	function objects():Array<Dynamic>;
};
typedef Add = {
	>BaseOperation,
};
typedef AddUnique = {
	>BaseOperation,
};
typedef Increment = {
	>IBaseObject,
	var amount : Float;
};
typedef Relation = {
	>IBaseObject,
	function added():Array<Dynamic>;
	var removed : Array<Dynamic>;
};
typedef Set = {
	>IBaseObject,
	function value():Dynamic;
};
typedef Unset = {
	>IBaseObject,
};
