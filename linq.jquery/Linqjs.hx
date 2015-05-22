typedef Enumerable = {
	function tojQuery():JQuery;
	function tojQueryAsArray():JQuery;
};
typedef JQuery = {
	function toEnumerable():linqjs.Enumerable;
};
typedef JQueryStatic = {
	var Enumerable : linq.EnumerableStatic;
};
