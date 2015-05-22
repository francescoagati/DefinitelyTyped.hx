extern class SammyjsTopLevel {
	static function Sammy():Sammy.Application;
	static function Sammy(selector:String):Sammy.Application;
	static function Sammy(handler:haxe.Constraints.Function):Sammy.Application;
	static function Sammy(selector:String, handler:haxe.Constraints.Function):Sammy.Application;
}
