extern class FiberTopLevel {
	static var current : Fiber;
	static function yield(?value:Dynamic):Dynamic;
}
