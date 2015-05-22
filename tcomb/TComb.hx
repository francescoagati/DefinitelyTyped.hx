typedef Tcomb = {
	var format : String -> haxe.extern.Rest<Dynamic> -> String;
	var getFunctionName : haxe.Constraints.Function -> String;
	var getTypeName : TCombBase -> String;
	var mixin : { } -> { } -> ?Bool -> Dynamic;
	var slice : Dynamic;
	var shallowCopy : TCombBase -> TCombBase;
	var update : Dynamic -> { } -> TCombBase;
	var assert : Bool -> ?String -> haxe.extern.Rest<Dynamic> -> Void;
	var fail : ?String -> Void;
	var Any : Any_Static;
	var Nil : Str_Static;
	var Str : Str_Static;
	var Num : Num_Static;
	var Bool : Bool_Static;
	var Arr : Arr_Static;
	var Obj : Obj_Static;
	var Func : Func_Static;
	var func : { };
	var Err : Err_Static;
	var Re : Re_Static;
	var Dat : Dat_Static;
	var Type : Type_Static;
	var irreducible : String -> TypePredicate -> TCombBase;
	var struct : Dynamic -> ?String -> Struct_Static;
	var Union : Union_Static;
	var Maybe : Maybe_Static;
	function enums(map:Dynamic, ?name:String):TCombBase;
	function union(types:Array<TCombBase>, ?name:String):Union_Static;
	function maybe(type:TCombBase, ?name:String):Maybe_Static;
	var Tuple : Tuple_Static;
	var tuple : Array<TCombBase> -> ?String -> Tuple_Static;
	var Subtype : Subtype_Static;
	var List : List_Static;
	var list : TCombBase -> ?String -> List_Static;
	var Dict : Dict_Static;
	var dict : TCombBase -> TCombBase -> ?String -> Dict_Static;
	function subtype(type:TCombBase, predicate:TypePredicate, ?name:String):Subtype_Static;
};
typedef TCombBase = {
	var meta : { var kind : String; var name : String; };
	var displayName : String;
	function is(value:Dynamic):Bool;
	function update(instance:Dynamic, spec:{ }):TCombBase;
};
typedef TypePredicate = { };
typedef Any_Instance = { };
typedef Any_Static = {
	>TCombBase,
	function new(value:Dynamic):Any_Instance;
};
typedef Nil_Instance = { };
typedef Nil_Static = {
	>TCombBase,
	function new(value:Dynamic):Nil_Instance;
};
typedef Str_Instance = {
	>String,
};
typedef Str_Static = {
	>TCombBase,
	function new(value:String):Str_Instance;
	var meta : { var kind : String; var name : String; var is : TypePredicate; };
};
typedef Num_Instance = {
	>Number,
};
typedef Num_Static = {
	>TCombBase,
	function new(value:Float):Num_Instance;
};
typedef Bool_Instance = {
	>Boolean,
};
typedef Bool_Static = {
	>TCombBase,
	function new(value:Bool):Bool_Instance;
};
typedef Arr_Instance = {
	>Array<Dynamic>,
};
typedef Arr_Static = {
	>TCombBase,
	function new(value:Array<Dynamic>):Arr_Instance;
};
typedef Obj_Instance = {
	>Dynamic,
};
typedef Obj_Static = {
	>TCombBase,
	function new(value:Dynamic):Obj_Instance;
};
typedef Func_Instance = {
	>haxe.Constraints.Function,
};
typedef Func_Static = {
	>TCombBase,
	function new(value:haxe.Constraints.Function):Func_Instance;
};
typedef Err_Instance = {
	>Error,
};
typedef Err_Static = {
	>TCombBase,
	function new(value:Error):Err_Instance;
};
typedef Re_Instance = {
	>js.RegExp,
};
typedef Re_Static = {
	>TCombBase,
	function new(value:js.RegExp):Re_Instance;
};
typedef Dat_Instance = {
	>Date,
};
typedef Dat_Static = {
	>TCombBase,
	function new(value:Date):Dat_Instance;
};
typedef Type_Instance = { };
typedef Type_Static = {
	>TCombBase,
	function new(value:Dynamic):Type_Instance;
};
typedef Struct_Static = {
	>TCombBase,
	function new(value:Dynamic, ?mutable:Bool):Struct_Instance;
	var meta : { var kind : String; var name : String; var props : Array<Dynamic>; };
	@:overload(function(mixins:Struct_Static, ?name:String):Struct_Static { })
	@:overload(function(mixins:Array<Dynamic>, ?name:String):Struct_Static { })
	@:overload(function(mixins:Array<Struct_Static>, ?name:String):Struct_Static { })
	function extend(mixins:Dynamic, ?name:String):Struct_Static;
};
typedef Struct_Instance = { };
