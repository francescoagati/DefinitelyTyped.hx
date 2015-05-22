extern class Forge {
	function new():Forge;
	var bindings : Forge.IBindingMap;
	function bind(name:String):Forge.IBinding;
	function rebind(name:String):Forge.IBinding;
	function unbind(name:String):Float;
	function get<T>(name:String, ?hint:String, args:haxe.extern.Rest<Dynamic>):T;
	function getOne<T>(name:String, ?hint:String, args:haxe.extern.Rest<Dynamic>):T;
	function getAll<T>(name:String, args:haxe.extern.Rest<Dynamic>):haxe.extern.EitherType<T, Array<T>>;
	function create<T>(target:T, args:haxe.extern.Rest<Dynamic>):T;
	function getMatchingBindings(name:String, ?hint:String):Array<Forge.IBinding>;
	function inspect():String;
	function resolve<T>(name:String, ?context:Forge.IContext, ?hint:String, ?all:Bool, args:haxe.extern.Rest<Dynamic>):haxe.extern.EitherType<T, Array<T>>;
	function resolveBindings(context:Forge.IContext, bindings:Array<Forge.IBinding>, hint:String, args:Array<Dynamic>, unwrap:Bool):Array<Forge.IBinding>;
}
