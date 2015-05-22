typedef AssertOptions = {
	@:optional
	var message : Dynamic;
	@:optional
	var pass : String -> Void;
	@:optional
	var fail : String -> Void;
};
extern class OperatorsTopLevel {
	static function assert(actual:Dynamic, ?matcherOrValue:Dynamic, ?options:AssertOptions):JsHamcrest.Description;
	static function filter(array:Array<Dynamic>, matcherOrValue:Dynamic):Array<Dynamic>;
	static function callTo(func:haxe.extern.Rest<Dynamic> -> Dynamic, args:haxe.extern.Rest<Dynamic>):Void -> Dynamic;
}
