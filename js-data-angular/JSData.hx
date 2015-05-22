typedef DSProvider = {
	var defaults : DSConfiguration;
};
typedef DS = {
	function bindAll<T>(resourceName:String, params:DSFilterParams, scope:ng.IScope, expr:String, ?cb:DSError -> Array<T> -> Void):haxe.Constraints.Function;
	function bindOne<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, scope:ng.IScope, expr:String, ?cb:DSError -> T -> Void):haxe.Constraints.Function;
};
typedef DSResourceDefinition<T> = {
	function bindAll<T>(params:DSFilterParams, scope:ng.IScope, expr:String, ?cb:DSError -> Array<T> -> Void):haxe.Constraints.Function;
	function bindOne<T>(id:haxe.extern.EitherType<String, Float>, scope:ng.IScope, expr:String, ?cb:DSError -> T -> Void):haxe.Constraints.Function;
};
