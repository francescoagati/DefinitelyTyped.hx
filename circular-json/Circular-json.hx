typedef ICircularJSON = {
	>JSON,
	function parse(text:String, ?reviver:Dynamic -> Dynamic -> Dynamic):Dynamic;
	function stringify(value:Dynamic, ?replacer:haxe.extern.EitherType<String -> Dynamic -> Dynamic, Array<Dynamic>>, ?space:Dynamic, ?placeholder:Bool):String;
};
extern class Circular-jsonTopLevel {
	static var CircularJSON : ICircularJSON;
}
extern class Circular-jsonTopLevel {
	static var CircularJSON : ICircularJSON;
}
