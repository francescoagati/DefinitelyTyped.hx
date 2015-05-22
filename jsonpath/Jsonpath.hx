extern class JsonpathTopLevel {
	static function query(obj:Dynamic, pathExpression:String):Array<Dynamic>;
	static function paths(obj:Dynamic, pathExpression:String):Array<Array<PathComponent>>;
	static function nodes(obj:Dynamic, pathExpression:String):Array<{ var path : Array<PathComponent>; var value : Dynamic; }>;
	static function value(obj:Dynamic, pathExpression:String):Dynamic;
	static function value(obj:Dynamic, pathExpression:String, newValue:Dynamic):Dynamic;
	static function parent(obj:Dynamic, pathExpression:String):Dynamic;
	static function apply(obj:Dynamic, pathExpression:String, fn:Dynamic -> Dynamic):Array<{ var path : Array<PathComponent>; var value : Dynamic; }>;
	static function parse(pathExpression:String):Array<Dynamic>;
	static function stringify(path:Array<PathComponent>):String;
}
extern class JsonpathTopLevel {
	static function query(obj:Dynamic, pathExpression:String):Array<Dynamic>;
	static function paths(obj:Dynamic, pathExpression:String):Array<Array<PathComponent>>;
	static function nodes(obj:Dynamic, pathExpression:String):Array<{ var path : Array<PathComponent>; var value : Dynamic; }>;
	static function value(obj:Dynamic, pathExpression:String):Dynamic;
	static function value(obj:Dynamic, pathExpression:String, newValue:Dynamic):Dynamic;
	static function parent(obj:Dynamic, pathExpression:String):Dynamic;
	static function apply(obj:Dynamic, pathExpression:String, fn:Dynamic -> Dynamic):Array<{ var path : Array<PathComponent>; var value : Dynamic; }>;
	static function parse(pathExpression:String):Array<Dynamic>;
	static function stringify(path:Array<PathComponent>):String;
}
