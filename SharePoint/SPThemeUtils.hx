extern class SPThemeUtilsTopLevel {
	static function ApplyCurrentTheme():Void;
	static function WithCurrentTheme(resultCallback:haxe.Constraints.Function):Void;
	static function UseClientSideTheming():Bool;
	static function Suspend():Void;
}
