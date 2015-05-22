extern class WinJS.ClassTopLevel {
	static function define(?constructor:haxe.Constraints.Function, ?instanceMembers:Dynamic, ?staticMembers:Dynamic):Dynamic;
	static function derive(baseClass:Dynamic, constructor:haxe.Constraints.Function, ?instanceMembers:Dynamic, ?staticMembers:Dynamic):Dynamic;
	static function mix(constructor:haxe.Constraints.Function, mixin:haxe.extern.Rest<Dynamic>):Dynamic;
}
