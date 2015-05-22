typedef Resolver<T> = {
	function reject(reason:Dynamic):Void;
	@:overload(function(?value:when.Promise<T>):Void { })
	function resolve(?value:T):Void;
};
extern class When_nodeTopLevel {
	static function lift<T>(fn:_.NodeFn0<T>):_.LiftedFn0<T>;
	static function lift<A1, T>(fn:_.NodeFn1<A1, T>):_.LiftedFn1<A1, T>;
	static function lift<A1, A2, T>(fn:_.NodeFn2<A1, A2, T>):_.LiftedFn2<A1, A2, T>;
	static function lift<A1, A2, A3, T>(fn:_.NodeFn3<A1, A2, A3, T>):_.LiftedFn3<A1, A2, A3, T>;
	static function lift<A1, A2, A3, A4, T>(fn:_.NodeFn4<A1, A2, A3, A4, T>):_.LiftedFn4<A1, A2, A3, A4, T>;
	static function lift<A1, A2, A3, A4, A5, T>(fn:_.NodeFn5<A1, A2, A3, A4, A5, T>):_.LiftedFn5<A1, A2, A3, A4, A5, T>;
	static function call<T>(fn:_.NodeFn0<T>):when.Promise<T>;
	static function call<A1, T>(fn:_.NodeFn1<A1, T>, arg1:haxe.extern.EitherType<A1, when.Promise<A1>>):when.Promise<T>;
	static function call<A1, A2, T>(fn:_.NodeFn2<A1, A2, T>, arg1:haxe.extern.EitherType<A1, when.Promise<A1>>, arg2:haxe.extern.EitherType<A2, when.Promise<A2>>):when.Promise<T>;
	static function call<A1, A2, A3, T>(fn:_.NodeFn3<A1, A2, A3, T>, arg1:haxe.extern.EitherType<A1, when.Promise<A1>>, arg2:haxe.extern.EitherType<A2, when.Promise<A2>>, arg3:haxe.extern.EitherType<A3, when.Promise<A3>>):when.Promise<T>;
	static function call<A1, A2, A3, A4, T>(fn:_.NodeFn4<A1, A2, A3, A4, T>, arg1:haxe.extern.EitherType<A1, when.Promise<A1>>, arg2:haxe.extern.EitherType<A2, when.Promise<A2>>, arg3:haxe.extern.EitherType<A3, when.Promise<A3>>, arg4:haxe.extern.EitherType<A4, when.Promise<A4>>):when.Promise<T>;
	static function call<A1, A2, A3, A4, A5, T>(fn:_.NodeFn5<A1, A2, A3, A4, A5, T>, arg1:haxe.extern.EitherType<A1, when.Promise<A1>>, arg2:haxe.extern.EitherType<A2, when.Promise<A2>>, arg3:haxe.extern.EitherType<A3, when.Promise<A3>>, arg4:haxe.extern.EitherType<A4, when.Promise<A4>>, arg5:haxe.extern.EitherType<A5, when.Promise<A5>>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn0<T>, args:Array<Dynamic>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn1<Dynamic, T>, args:Array<Dynamic>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn2<Dynamic, Dynamic, T>, args:Array<Dynamic>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn3<Dynamic, Dynamic, Dynamic, T>, args:Array<Dynamic>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn4<Dynamic, Dynamic, Dynamic, Dynamic, T>, args:Array<Dynamic>):when.Promise<T>;
	static function apply<T>(fn:_.NodeFn5<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, T>, args:Array<Dynamic>):when.Promise<T>;
	static function liftAll(srcApi:Dynamic, ?transform:Dynamic -> haxe.Constraints.Function -> String -> Dynamic, ?destApi:Dynamic):Dynamic;
	static function liftCallback<TArg>(callback:Dynamic -> TArg -> Void):when.Promise<TArg> -> when.Promise<TArg>;
	static function bindCallback<TArg>(arg:when.Promise<TArg>, callback:Dynamic -> TArg -> Void):when.Promise<TArg>;
	static function createCallback<TArg>(resolver:Resolver<TArg>):Dynamic -> TArg -> Void;
}
