typedef Stampit = {
	function compose(stamps:haxe.extern.Rest<Stamp>):Stamp;
	function mixIn(destination:Dynamic, source:haxe.extern.Rest<Dynamic>):Dynamic;
	function extend(destination:Dynamic, source:haxe.extern.Rest<Dynamic>):Dynamic;
	function isStamp(obj:Dynamic):Bool;
	function convertConstructor(Constructor:Dynamic):Stamp;
};
typedef Stamp = {
	function create(?state:{ }, encloseArgs:haxe.extern.Rest<Dynamic>):Dynamic;
	var fixed : Fixed;
	function methods(methods:haxe.extern.Rest<{ }>):Stamp;
	function state(states:haxe.extern.Rest<{ }>):Stamp;
	@:overload(function(methods:haxe.extern.Rest<{ }>):Stamp { })
	function enclose(functions:haxe.extern.Rest<{ }>):Stamp;
	function compose(stamps:haxe.extern.Rest<Stamp>):Stamp;
};
typedef Fixed = {
	var methods : { };
	var state : { };
	var enclose : Array<{ }>;
};
extern class StampitTopLevel {
	static var stampit : stampit.Stampit;
}
extern class StampitTopLevel {
	static var stampit : stampit.Stampit;
}
extern class StampitTopLevel {
	static var stampit : stampit.Stampit;
}
