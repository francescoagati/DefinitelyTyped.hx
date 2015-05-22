typedef IResourceService = { };
typedef IActionDescriptor = {
	var method : String;
	@:optional
	var isArray : Bool;
	@:optional
	var params : Dynamic;
	@:optional
	var headers : Dynamic;
};
typedef IResourceClass<T> = {
	function new(?dataOrParams:Dynamic):T;
	@:overload(function(params:Dynamic):T { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, data:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	function get():T;
	@:overload(function(params:Dynamic):IResourceArray<T> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):IResourceArray<T> { })
	@:overload(function(params:Dynamic, success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):IResourceArray<T> { })
	@:overload(function(params:Dynamic, data:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):IResourceArray<T> { })
	function query():IResourceArray<T>;
	@:overload(function(data:Dynamic):T { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(data:Dynamic, success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, data:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	function save():T;
	@:overload(function(params:Dynamic):T { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, data:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	function remove():T;
	@:overload(function(params:Dynamic):T { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	@:overload(function(params:Dynamic, data:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):T { })
	function delete():T;
};
typedef IResource<T> = {
	@:overload(function(?params:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	function $get():ng.IPromise<T>;
	@:overload(function(?params:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<IResourceArray<T>> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<IResourceArray<T>> { })
	function $query():ng.IPromise<IResourceArray<T>>;
	@:overload(function(?params:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	function $save():ng.IPromise<T>;
	@:overload(function(?params:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	function $remove():ng.IPromise<T>;
	@:overload(function(?params:Dynamic, ?success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	@:overload(function(success:haxe.Constraints.Function, ?error:haxe.Constraints.Function):ng.IPromise<T> { })
	function $delete():ng.IPromise<T>;
	var $promise : ng.IPromise<T>;
	var $resolved : Bool;
};
typedef IResourceArray<T> = {
	>Array<T>,
	var $promise : ng.IPromise<IResourceArray<T>>;
	var $resolved : Bool;
};
typedef IResourceServiceFactoryFunction<T> = { };
