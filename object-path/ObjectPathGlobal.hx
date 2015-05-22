typedef IObjectPathStatic = {
	@:overload(function<T:({ })>(object:T):T { })
	@:overload(function():Void { })
	function del<T:({ })>(object:T, path:IPath):T;
	@:overload(function<T:({ })>(object:T):Bool { })
	@:overload(function():Bool { })
	function has<T:({ })>(object:T, path:IPath):Bool;
	@:overload(function<T:({ })>(object:T):T { })
	@:overload(function():Void { })
	function get<T:({ }), TResult>(object:T, path:IPath, ?defaultValue:TResult):TResult;
	@:overload(function<T:({ })>(object:T):T { })
	@:overload(function():Void { })
	function set<T:({ }), TExisting>(object:T, path:IPath, value:Dynamic, ?doNotReplace:Bool):TExisting;
	@:overload(function():Void { })
	function push<T:({ })>(object:T, path:IPath, args:haxe.extern.Rest<Dynamic>):Void;
	function coalesce<T:({ }), TResult>(object:T, paths:IMultiArray, ?defaultValue:TResult):TResult;
	@:overload(function<T:({ })>(object:T):T { })
	@:overload(function():Void { })
	function empty<T:({ }), TResult>(object:T, path:IPath):TResult;
	@:overload(function<T:({ })>(object:T):T { })
	@:overload(function():Void { })
	function ensureExists<T:({ }), TExisting>(object:T, path:IPath, value:Dynamic):TExisting;
	function insert<T:({ })>(object:T, path:IPath, value:Dynamic, ?at:Float):Void;
};
typedef IObjectPathBound<T:({ })> = {
	@:overload(function():T { })
	function del(path:IPath):T;
	@:overload(function():Bool { })
	function has(path:IPath):Bool;
	@:overload(function():T { })
	function get<TResult>(path:IPath, ?defaultValue:TResult):TResult;
	@:overload(function():T { })
	function set<TExisting>(path:IPath, value:Dynamic, ?doNotReplace:Bool):TExisting;
	@:overload(function():Void { })
	function push(path:IPath, args:haxe.extern.Rest<Dynamic>):Void;
	function coalesce<TResult>(paths:IMultiArray, ?defaultValue:TResult):TResult;
	@:overload(function():T { })
	function empty(path:IPath):T;
	@:overload(function():T { })
	function ensureExists<TExisting>(path:IPath, value:Dynamic):TExisting;
	function insert(path:IPath, value:Dynamic, ?at:Float):Void;
};
