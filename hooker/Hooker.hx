extern class HookerTopLevel {
	static function hook(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>, options:IHookerOptions):Void;
	static function hook(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>, prehookFunction:HookerPreHookFunction):Void;
	static function unhook(object:Dynamic, ?props:haxe.extern.EitherType<String, Array<String>>):Array<String>;
	static function orig(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>):haxe.Constraints.Function;
	static function override(value:Dynamic):HookerOverride;
	static function preempt(value:Dynamic):HookerPreempt;
	static function filter(context:Dynamic, args:Array<Dynamic>):HookerFilter;
}
extern class HookerOverride {
	var value : Dynamic;
}
extern class HookerPreempt {
	var value : Dynamic;
}
extern class HookerFilter {
	var context : Dynamic;
	var args : Array<Dynamic>;
}
typedef IHookerPostHookResult = { };
typedef IHookerPreHookResult = { };
typedef IHookerOptions = {
	@:optional
	var pre : HookerPreHookFunction;
	@:optional
	var post : HookerPostHookFunction;
	@:optional
	var once : Bool;
	@:optional
	var passName : Bool;
};
extern class HookerTopLevel {
	static function hook(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>, options:IHookerOptions):Void;
	static function hook(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>, prehookFunction:HookerPreHookFunction):Void;
	static function unhook(object:Dynamic, ?props:haxe.extern.EitherType<String, Array<String>>):Array<String>;
	static function orig(object:Dynamic, props:haxe.extern.EitherType<String, Array<String>>):haxe.Constraints.Function;
	static function override(value:Dynamic):HookerOverride;
	static function preempt(value:Dynamic):HookerPreempt;
	static function filter(context:Dynamic, args:Array<Dynamic>):HookerFilter;
}
