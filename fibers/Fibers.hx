typedef Fiber = {
	function run(?step:Float):Dynamic;
};
extern class FibersTopLevel {
	static function fibers(callback:Void -> Void):fibers.Fiber;
	static var poolSize : Float;
	static var fibersCreated : Float;
	static var current : fibers.Fiber;
	static function yield(value:Dynamic):Dynamic;
}
extern class FibersTopLevel {
	static function fibers(callback:Void -> Void):fibers.Fiber;
	static var poolSize : Float;
	static var fibersCreated : Float;
	static var current : fibers.Fiber;
	static function yield(value:Dynamic):Dynamic;
}
extern class FibersTopLevel {
	static function fibers(callback:Void -> Void):fibers.Fiber;
	static var poolSize : Float;
	static var fibersCreated : Float;
	static var current : fibers.Fiber;
	static function yield(value:Dynamic):Dynamic;
}
