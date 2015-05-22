typedef AclStatic = {
	@:overload(function(backend:Backend<Dynamic>, logger:Logger):Acl { })
	@:overload(function(backend:Backend<Dynamic>):Acl { })
	function new(backend:Backend<Dynamic>, logger:Logger, options:Option):Acl;
	var memoryBackend : MemoryBackendStatic;
};
typedef Logger = {
	var debug : String -> Dynamic;
};
typedef Acl = {
	var addUserRoles : Value -> Strings -> ?Callback -> Promise<Void>;
	var removeUserRoles : Value -> Strings -> ?Callback -> Promise<Void>;
	var userRoles : Value -> ?Error -> Array<String> -> Dynamic -> Promise<Array<String>>;
	var roleUsers : Value -> ?Error -> Values -> Dynamic -> Promise<Dynamic>;
	var hasRole : Value -> String -> ?Error -> Bool -> Dynamic -> Promise<Bool>;
	var addRoleParents : String -> Values -> ?Callback -> Promise<Void>;
	var removeRole : String -> ?Callback -> Promise<Void>;
	var removeResource : String -> ?Callback -> Promise<Void>;
	var allow : { };
	var removeAllow : String -> Strings -> Strings -> ?Callback -> Promise<Void>;
	var removePermissions : String -> Strings -> Strings -> ?haxe.Constraints.Function -> Promise<Void>;
	var allowedPermissions : Value -> Strings -> ?AnyCallback -> Promise<Void>;
	var isAllowed : Value -> Strings -> Strings -> ?AllowedCallback -> Promise<Bool>;
	var areAnyRolesAllowed : Strings -> Strings -> Strings -> ?AllowedCallback -> Promise<Dynamic>;
	var whatResources : Strings -> Strings -> ?AnyCallback -> Promise<Dynamic>;
	var permittedResources : Strings -> Strings -> ?haxe.Constraints.Function -> Promise<Void>;
	var middleware : Float -> haxe.extern.EitherType<Value, GetUserId> -> Strings -> Promise<Dynamic>;
};
typedef Option = {
	@:optional
	var buckets : BucketsOption;
};
typedef BucketsOption = {
	@:optional
	var meta : String;
	@:optional
	var parents : String;
	@:optional
	var permissions : String;
	@:optional
	var resources : String;
	@:optional
	var roles : String;
	@:optional
	var users : String;
};
typedef AclSet = {
	var roles : Strings;
	var allows : Array<AclAllow>;
};
typedef AclAllow = {
	var resources : Strings;
	var permissions : Strings;
};
typedef MemoryBackend = {
	>Backend<Array<Action>>,
};
typedef MemoryBackendStatic = {
	function new():MemoryBackend;
};
typedef Backend<T> = {
	var begin : Void -> T;
	var end : T -> ?Action -> Void;
	var clean : ?Action -> Void;
	var get : String -> Value -> ?Action -> Void;
	var union : String -> Array<Value> -> ?Action -> Void;
	var add : T -> String -> Value -> Values -> Void;
	var del : T -> String -> Array<Value> -> Void;
	var remove : T -> String -> Value -> Values -> Void;
	var endAsync : haxe.Constraints.Function;
	var getAsync : haxe.Constraints.Function;
	var cleanAsync : haxe.Constraints.Function;
	var unionAsync : haxe.Constraints.Function;
};
typedef Contract = {
	var debug : Bool;
	var fulfilled : Bool;
	var args : Array<Dynamic>;
	var checkedParams : Array<String>;
	var params : haxe.extern.Rest<String> -> haxe.extern.EitherType<Contract, NoOp>;
	var end : Void -> Void;
};
typedef NoOp = {
	var params : haxe.extern.Rest<String> -> NoOp;
	var end : Void -> Void;
};
extern class AclTopLevel {
	static var _ : AclStatic;
}
extern class AclTopLevel {
	static var _ : AclStatic;
}
