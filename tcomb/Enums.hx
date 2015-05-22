extern class EnumsTopLevel {
	static function of(keys:Array<String>, ?name:String):TCombBase;
	static function of(keys:String, ?name:String):TCombBase;
	static function list(type:TCombBase, ?name:String):List_Static;
	static var t : TComb.Tcomb;
}
typedef Union_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Union_Instance;
	var meta : { var kind : String; var name : String; var types : Array<TCombBase>; };
	function dispatch(x:Dynamic):TCombBase;
};
typedef Union_Instance = { };
typedef Maybe_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Maybe_Instance;
	var meta : { var kind : String; var name : String; var typee : TCombBase; };
};
typedef Maybe_Instance = { };
typedef Tuple_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Tuple_Instance;
	var meta : { var kind : String; var name : String; var types : Array<TCombBase>; };
};
typedef Tuple_Instance = { };
typedef Subtype_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Subtype_Instance;
	var meta : { var kind : String; var name : String; var type : TCombBase; var predicate : TypePredicate; };
};
typedef Subtype_Instance = { };
typedef List_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):List_Instance;
	var meta : { var kind : String; var name : String; var type : TCombBase; };
};
typedef List_Instance = { };
typedef Dict_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Dict_Instance;
	var meta : { var kind : String; var name : String; var domain : TCombBase; var codomain : TCombBase; };
};
typedef Dict_Instance = { };
typedef Func_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Func_Instance;
	var meta : { var kind : String; var name : String; var domain : Dynamic; var codomain : TCombBase; };
	function of(fn:haxe.Constraints.Function):haxe.Constraints.Function;
};
typedef Func_Instance = { };
