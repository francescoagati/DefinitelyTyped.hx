extern class TestingTopLevel {
	static function describe(name:String, fn:haxe.Constraints.Function):Void;
	static function xdescribe(name:String, fn:haxe.Constraints.Function):Void;
	static function after(fn:haxe.Constraints.Function):Void;
	static function afterEach(fn:haxe.Constraints.Function):Void;
	static function before(fn:haxe.Constraints.Function):Void;
	static function beforeEach(fn:haxe.Constraints.Function):Void;
	static function it(name:String, fn:haxe.Constraints.Function):Void;
	static function iit(name:String, fn:haxe.Constraints.Function):Void;
	static function xit(name:String, fn:haxe.Constraints.Function):Void;
}
